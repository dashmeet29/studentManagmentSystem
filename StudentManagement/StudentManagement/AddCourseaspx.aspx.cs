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
    public partial class AddCourseaspx : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
          ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_AddCourse_Click(object sender, EventArgs e)
        {
            try
            {
                var ObjSqlConnection = new SqlConnection();
                ObjSqlConnection.ConnectionString = ConnectionString;

                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_insertCourse";
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
                P3.ParameterName = "@collegeId";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Value = DropDownList1.SelectedValue;

                var P4 = new SqlParameter();
                P4.ParameterName = "@CourseDuration";
                P4.SqlDbType = SqlDbType.VarChar;
                P4.Value = Convert.ToInt32(txt_CourseDuration.Text);

                var P5 = new SqlParameter();
                P5.ParameterName = "@Coursefees";
                P5.SqlDbType = SqlDbType.VarChar;
                P5.Value = Convert.ToInt32(txt_CourseFees.Text);


                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P3);
                ObjSqlCommand.Parameters.Add(P4);
                ObjSqlCommand.Parameters.Add(P5);

                ObjSqlConnection.Open();
                int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
                ObjSqlConnection.Close();

                if (NoOfRowsAffected > 0)
                {
                    lblMessage.Text = "Course added";
                }
                else
                {
                    lblMessage.Text = "Failed to add a course";
                }

            }
            catch(Exception)
            {
                lblMessage.Text = "Course Id already existes";
            }

        }

        protected void btn_ViewAllCourse_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView1.DataBind();
        }
    }
}