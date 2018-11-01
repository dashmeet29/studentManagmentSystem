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
    public partial class AddFacultyLink : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_AddFacultyDetails_Click(object sender, EventArgs e)
        {
            var str1 = Request.QueryString["ID"];
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_insertFacultyDetails";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@factId";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = str1;

            var P2 = new SqlParameter();
            P2.ParameterName = "@collegeID";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Value = DropDownList1.SelectedValue;

            var P3 = new SqlParameter();
            P3.ParameterName = "@courseId";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Value = DropDownList2.SelectedValue;

            var P4 = new SqlParameter();
            P4.ParameterName = "@salary";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Value = DropDownList2.SelectedValue;


            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);


            ObjSqlConnection.Open();
            int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();
            ObjSqlConnection.Dispose();

            if (NoOfRowsAffected > 0)
            {
                lblMessage.Text = "Faculty details added";
            }
            else
            {
                lblMessage.Text = "Failed to add Faculty details";
            }
        }
    }
}