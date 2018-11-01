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
    public partial class WelcomStudent : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            if( Session["UserType"].ToString()!="Student")
            {
                Response.Redirect("LoginPage.aspx");
            }

           
            
          
            var str = Session["LoginName"].ToString();

            if(str==null)
            {
                lblName.Text = "Login Again";
            }
            

            var strid = Convert.ToInt32(Session["LoginId"]);
            lblName.Text = str;

            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;

            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_getStud_welcome_details";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = strid;

            var P2 = new SqlParameter();
            P2.ParameterName = "@StudName";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 20;
            P2.Direction = ParameterDirection.Output;


            var P3 = new SqlParameter();
            P3.ParameterName = "@StudEmail";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Size = 25;
            P3.Direction = ParameterDirection.Output;

            var P4 = new SqlParameter();
            P4.ParameterName = "@Address";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Size = 10;
            P4.Direction = ParameterDirection.Output;

            var P5 = new SqlParameter();
            P5.ParameterName = "@StudCourseId";
            P5.SqlDbType = SqlDbType.VarChar;
            P5.Size = 10;
            P5.Direction = ParameterDirection.Output;

            var P6 = new SqlParameter();
            P6.ParameterName = "@StudCourseName";
            P6.SqlDbType = SqlDbType.VarChar;
            P6.Size = 20;
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

            lbl_DispEmail.Text = P3.Value.ToString();

            lbl_DispAddress.Text = P4.Value.ToString();

            lbl_DispCourseId.Text = P5.Value.ToString();

            lbl_DispCourseName.Text = P6.Value.ToString();



        }
    }
}