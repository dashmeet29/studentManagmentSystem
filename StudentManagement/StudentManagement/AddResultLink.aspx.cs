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
    public partial class AddResultLink : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_AddResult_Click(object sender, EventArgs e)
        {
            try {
                var str1 = Request.QueryString["ID"];
                var ObjSqlConnection = new SqlConnection();
                ObjSqlConnection.ConnectionString = ConnectionString;

                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_FacultyUpdateResult";
                ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                var P1 = new SqlParameter();
                P1.ParameterName = "@studentId";
                P1.SqlDbType = SqlDbType.Int;
                P1.Value = str1;

                var P2 = new SqlParameter();
                P2.ParameterName = "@sem1marks";
                P2.SqlDbType = SqlDbType.VarChar;
                P2.Value = Convert.ToInt32(txt_Sem1.Text);

                var P3 = new SqlParameter();
                P3.ParameterName = "@sem2marks";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Value = Convert.ToInt32(txt_Sem2.Text);

                var P4 = new SqlParameter();
                P4.ParameterName = "@sem3marks";
                P4.SqlDbType = SqlDbType.VarChar;
                P4.Value = Convert.ToInt32(txt_Sem3.Text);

                var P5 = new SqlParameter();
                P5.ParameterName = "@sem4marks";
                P5.SqlDbType = SqlDbType.VarChar;
                P5.Value = Convert.ToInt32(txt_Sem4.Text);

                var P6 = new SqlParameter();
                P6.ParameterName = "@sem5marks";
                P6.SqlDbType = SqlDbType.VarChar;
                P6.Value = Convert.ToInt32(txt_Sem5.Text);

                var P7 = new SqlParameter();
                P7.ParameterName = "@sem6marks";
                P7.SqlDbType = SqlDbType.VarChar;
                P7.Value = Convert.ToInt32(txt_Sem6.Text);


                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P3);
                ObjSqlCommand.Parameters.Add(P4);
                ObjSqlCommand.Parameters.Add(P5);
                ObjSqlCommand.Parameters.Add(P6);
                ObjSqlCommand.Parameters.Add(P7);


                ObjSqlConnection.Open();
                int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
                ObjSqlConnection.Close();

                if (NoOfRowsAffected > 0)
                {
                    lblMessage.Text = "Student Results added";
                }
                else
                {
                    lblMessage.Text = "Failed to add Result";
                }
            }
            catch(Exception)
            {
                lblMessage.Text = "Enter Numeric Results";
            }
            }

    }
}