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
    public partial class StudentViewFaculty : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;


        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_Search_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;

            ObjSqlCommand.CommandText = "usp_StudViewFact";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@Facultyid";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txt_enterFaculty.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@FacultyName";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 20;
            P2.Direction = ParameterDirection.Output;


            var P3 = new SqlParameter();
            P3.ParameterName = "@FacultyphoneNo";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Size = 10;
            P3.Direction = ParameterDirection.Output;

            var P4 = new SqlParameter();
            P4.ParameterName = "@Facultyemail";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Size = 20;
            P4.Direction = ParameterDirection.Output;




            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);


            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            lblFacultyName.Text = P2.Value.ToString();
            lblFacultyNumber.Text = P3.Value.ToString();
            lblFacultyEmail.Text = P4.Value.ToString();


            if (P2.Value == DBNull.Value)
            {
                lblFacultyName.Text = "No Faculty exists";
                lblFacultyNumber.Text = "No Faculty exists";
                lblFacultyEmail.Text = "No Faculty exists";

                lblmsg.Text = "Faculty Not Found";
            }



        }
    }
}
    
