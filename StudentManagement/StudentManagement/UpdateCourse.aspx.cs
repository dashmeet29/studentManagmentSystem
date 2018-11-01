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
    public partial class UpdateCourse : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString; }
           // ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
         

        protected void btn_UpdateCourse_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_UpdateCourse";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@courseId";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txt_CourseId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@courseName";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Value = txt_Course_Name.Text;


            var P3 = new SqlParameter();
            P3.ParameterName = "@Coursefees";
            P3.SqlDbType = SqlDbType.Money;
            P3.Value = (txt_CourseFees.Text);


            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);

            ObjSqlConnection.Open();
            int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            if (NoOfRowsAffected > 0)
            {
                lblMessage.Text = "Course Updated";
            }
            else
            {
                lblMessage.Text = "Failed to Update the course";
            }
        }


        protected void ViewCourseExistingDetails_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_ViewExistingUpdateCourseDetails";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@courseId";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txt_CourseId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@courseName";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 20;
            P2.Direction = ParameterDirection.Output;


            var P3 = new SqlParameter();
            P3.ParameterName = "@Coursefees";
            P3.SqlDbType = SqlDbType.Money;
            P3.Direction = ParameterDirection.Output;


            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);

            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            txt_Course_Name.Text = P2.Value.ToString();
            txt_CourseFees.Text = P3.Value.ToString();

            if (P2.Value == DBNull.Value)
            {
                lblshowexistingDetails.Text = "Course does not exist";
            }
        }
    }
}