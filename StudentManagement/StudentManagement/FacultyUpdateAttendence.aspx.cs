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
    public partial class FacultyUpdateAttendence : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString; ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void ShowStudentDetails_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            txt_Attendence.Visible = true;
            btn_UpdateAttendence.Visible = true;

        }
        protected void btn_UpdateAttendence_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_FacultyUpdateAttendence";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txt_StudentId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@attendence";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Value = (txt_Attendence.Text);

            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);

            ObjSqlConnection.Open();
            int numberOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            if (numberOfRowsAffected > 0)
            {
                lblMessage.Text = "Attendence Updated";
            }
            else
            {
                lblMessage.Text = "Attendence could not be Updated";
            }
        }
    }
}