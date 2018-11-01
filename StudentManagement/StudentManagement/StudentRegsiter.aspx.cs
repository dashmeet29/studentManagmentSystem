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
    public partial class StudentRegsiter : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            
         ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_StudentRegister_Click(object sender, EventArgs e)
        {
            try {
                var ObjSqlConnection = new SqlConnection();
                ObjSqlConnection.ConnectionString = ConnectionString;

                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_StudentRegister";
                ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                var P1 = new SqlParameter();
                P1.ParameterName = "@id";
                P1.SqlDbType = SqlDbType.Int;
                P1.Direction = ParameterDirection.Output;

                var P2 = new SqlParameter();
                P2.ParameterName = "@name";
                P2.SqlDbType = SqlDbType.VarChar;
                P2.Value = txt_studentName.Text;


                var P10 = new SqlParameter();
                P10.ParameterName = "@address";
                P10.SqlDbType = SqlDbType.VarChar;
                P10.Value = txt_Address.Text;

                var P3 = new SqlParameter();
                P3.ParameterName = "@password";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Value = txt_Password.Text;

                var P4 = new SqlParameter();
                P4.ParameterName = "@Email";
                P4.SqlDbType = SqlDbType.VarChar;
                P4.Value = txt_StudentEmail.Text;

                var P5 = new SqlParameter();
                P5.ParameterName = "@age";
                P5.SqlDbType = SqlDbType.Int;
                P5.Value = Convert.ToInt32(txt_StudentAge.Text);


                var P9 = new SqlParameter();
                P9.ParameterName = "@parentName";
                P9.SqlDbType = SqlDbType.VarChar;
                P9.Value = txt_StudParentName.Text;


                var P8 = new SqlParameter();
                P8.ParameterName = "@parentEmail";
                P8.SqlDbType = SqlDbType.VarChar;
                P8.Value = txt_StudParentEmail.Text;

                var P6 = new SqlParameter();
                P6.ParameterName = "@phoneNo";
                P6.SqlDbType = SqlDbType.VarChar;
                P6.Value = txt_StudentPhoneNo.Text;

                var P7 = new SqlParameter();
                P7.ParameterName = "@parentPhone";
                P7.SqlDbType = SqlDbType.VarChar;
                P7.Value = txt_ParentPhoneNo.Text;



                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P10);
                ObjSqlCommand.Parameters.Add(P3);
                ObjSqlCommand.Parameters.Add(P4);
                ObjSqlCommand.Parameters.Add(P5);
                ObjSqlCommand.Parameters.Add(P9);
                ObjSqlCommand.Parameters.Add(P8);
                ObjSqlCommand.Parameters.Add(P6);
                ObjSqlCommand.Parameters.Add(P7);


                ObjSqlConnection.Open();
                var NoOfRows = ObjSqlCommand.ExecuteNonQuery();
                ObjSqlConnection.Close();
                if (NoOfRows > 0)
                {
                    if (P1.Value != DBNull.Value)
                    {
                        lblMessage.Text = "Your Id is " + P1.Value.ToString();
                        Response.Write("<script> alert('Your ID is ' +  lblMessage.Text ) </script>");
                    }
                }
            }
            catch(Exception)
            {
                lblMessage.Text = "enter valid details";
            }
            }
    }
}