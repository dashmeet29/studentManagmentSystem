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
    public partial class WelcomeFaculty : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() != "Faculty")
            {
                Response.Redirect("LoginPage.aspx");
            }
            var str = Session["LoginName"].ToString();

            var strid = Convert.ToInt32(Session["LoginId"]);
            lblName.Text = str;

            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;

            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_WelcomeFacultyDetails";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = strid;

            var P2 = new SqlParameter();
            P2.ParameterName = "@Name";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 20;
            P2.Direction = ParameterDirection.Output;


            var P3 = new SqlParameter();
            P3.ParameterName = "@Salary";
            P3.SqlDbType = SqlDbType.Money;
            P3.Direction = ParameterDirection.Output;

            var P4 = new SqlParameter();
            P4.ParameterName = "@phoneNo";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Size = 10;
            P4.Direction = ParameterDirection.Output;

            var P5 = new SqlParameter();
            P5.ParameterName = "@email";
            P5.SqlDbType = SqlDbType.VarChar;
            P5.Size = 20;
            P5.Direction = ParameterDirection.Output;

            var P6 = new SqlParameter();
            P6.ParameterName = "@CourseId";
            P6.SqlDbType = SqlDbType.Int;;
            P6.Direction = ParameterDirection.Output;

            


            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);
            ObjSqlCommand.Parameters.Add(P5);
            ObjSqlCommand.Parameters.Add(P6);
           

            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            lbl_DispName.Text = P2.Value.ToString();

            lbl_DispSal.Text = P3.Value.ToString();

            lbl_DispPhoneNum.Text = P4.Value.ToString();

            lbl_DispEmail.Text = P5.Value.ToString();

            lbl_DispCourseId.Text = P6.Value.ToString();

            


        }
    }
}