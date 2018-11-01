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
    public partial class FacultyRegister : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_Register_Click(object sender, EventArgs e)
        {

            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_FacultyRegister";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Direction = ParameterDirection.Output;

            var P2 = new SqlParameter();
            P2.ParameterName = "@name";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Value = txt_FacultyName.Text;


            var P3 = new SqlParameter();
            P3.ParameterName = "@password";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Value = txt_FacultyPassword.Text;


            var P4 = new SqlParameter();
            P4.ParameterName = "@Email";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Value = txt_FacultyEmail.Text;

            var P10 = new SqlParameter();
            P10.ParameterName = "@phoneNo";
            P10.SqlDbType = SqlDbType.VarChar;
            P10.Value = txt_FacultyPhoneNo.Text;



            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);

            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);
            ObjSqlCommand.Parameters.Add(P10);

            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            lblMessage.Text = P1.Value.ToString();

            Response.Write("<script> alert('Your ID is ' + lblMessage.Text) </script>");

            
        }
    }
}