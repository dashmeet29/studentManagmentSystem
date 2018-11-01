using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace Case_Study_A
{
    public partial class LoginPage : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_Login_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            if (RadioButton1.Checked==true)
            {
                try
                {
                    var ObjSqlCommand = new SqlCommand();
                    ObjSqlCommand.Connection = ObjSqlConnection;
                    ObjSqlCommand.CommandText = "usp_getAdminDetails1";
                    ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                    var P1 = new SqlParameter();
                    P1.ParameterName = "@id";
                    P1.SqlDbType = SqlDbType.Int;
                    P1.Value = Convert.ToInt32(LoginId.Text);

                    var P2 = new SqlParameter();
                    P2.ParameterName = "@Adminpassword";
                    P2.SqlDbType = SqlDbType.VarChar;
                    P2.Value = txt_pass.Text;


                    var P3 = new SqlParameter();
                    P3.ParameterName = "@AdminName";
                    P3.SqlDbType = SqlDbType.VarChar;
                    P3.Size = 20;
                    P3.Direction = ParameterDirection.Output;

                    ObjSqlCommand.Parameters.Add(P1);
                    ObjSqlCommand.Parameters.Add(P2);
                    ObjSqlCommand.Parameters.Add(P3);

                    ObjSqlConnection.Open();
                    ObjSqlCommand.ExecuteNonQuery();
                    ObjSqlConnection.Close();

                    var str = P3.Value;


                    if (P3.Value == DBNull.Value)
                    {
                        lblmsg.Text = "Admin ID or Password is incorrect";

                    }
                    else
                    {
                        Session["LoginName"] = str;
                        Session["UserType"] = "Admin";
                        Response.Redirect("WelcomeAdmin.aspx");
                    }
                }
                catch
                {
                    Response.Redirect("WelcomeAdmin.aspx");
                }

            }
            else if(RadioButton2.Checked==true)
            {
                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_getStudDetails1";
                ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                var P1 = new SqlParameter();
                P1.ParameterName = "@id";
                P1.SqlDbType = SqlDbType.Int;
                P1.Value = Convert.ToInt32(LoginId.Text);

                var P2 = new SqlParameter();
                P2.ParameterName = "@Studpassword";
                P2.SqlDbType = SqlDbType.VarChar;
                P2.Value = (txt_pass.Text);


                var P3 = new SqlParameter();
                P3.ParameterName = "@StudName";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Size = 20;
                P3.Direction = ParameterDirection.Output;

                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P3);

                ObjSqlConnection.Open();
                ObjSqlCommand.ExecuteNonQuery();
                var str = P3.Value;
                var strid = P1.Value;
                ObjSqlConnection.Close();


                if (P3.Value == DBNull.Value)
                {
                    lblmsg.Text = "Student Id or Password is incorrect";

                }
                else
                {
                    Session["LoginName"] = str;
                    Session["LoginId"] = strid;
                    Session["UserType"] = "Student";
                    Response.Redirect("WelcomStudent.aspx");
                }
            }
            else if(RadioButton3.Checked==true)
            {
                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_ValidateFaculty";
                ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                var P1 = new SqlParameter();
                P1.ParameterName = "@id";
                P1.SqlDbType = SqlDbType.Int;
                P1.Value = Convert.ToInt32(LoginId.Text);

                var P2 = new SqlParameter();
                P2.ParameterName = "@password";
                P2.SqlDbType = SqlDbType.VarChar;
                P2.Value = (txt_pass.Text);


                var P3 = new SqlParameter();
                P3.ParameterName = "@Name";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Size = 20;
                P3.Direction = ParameterDirection.Output;

                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P3);

                ObjSqlConnection.Open();
                ObjSqlCommand.ExecuteNonQuery();
                var str = P3.Value;
                var strid = P1.Value;
                ObjSqlConnection.Close();


                if (P3.Value == DBNull.Value)
                {
                    lblmsg.Text = "Faculty Id or Password is incorrect";

                }
                else
                {
                    Session["LoginName"] = str;
                    Session["LoginId"] = strid;
                    Session["UserType"] = "Faculty";
                    Response.Redirect("WelcomeFaculty.aspx");
                }
            }
        }
    }
}