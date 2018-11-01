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
    public partial class StudentLogin : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

        }

        protected void btn_StudentLogin_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

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
            P2.Value = (txt_studpass.Text);


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
          

            if (P3.Value== DBNull.Value)
            {
                lblmsg.Text = "Student Id or Password is incorrect";
               
            }
            else
            {
                Session["LoginName"] = str;
                Session["LoginId"] = strid;
               
                Response.Redirect("WelcomStudent.aspx");
            }
        }
    }
}