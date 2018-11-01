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
    
    public partial class UpdateStudent : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_UpdateStudent_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_UpdateStudent";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txtEnterStudId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@Email";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Value = txtEnterStudEmail.Text;


            var P3 = new SqlParameter();
            P3.ParameterName = "@parentEmail";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Value = (txtEnterParentEmail.Text);

            var P4 = new SqlParameter();
            P4.ParameterName = "@attendence";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Value = Convert.ToInt32(txtAttendence.Text);

            var P5 = new SqlParameter();
            P5.ParameterName = "@phoneNo";
            P5.SqlDbType = SqlDbType.VarChar;
            P5.Value = (txtEnterStudPhNumber.Text);

            var P6 = new SqlParameter();
            P6.ParameterName = "@parentPhone";
            P6.SqlDbType = SqlDbType.VarChar;
            P6.Value = (txtEnterParentPhNum.Text);


            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);
            ObjSqlCommand.Parameters.Add(P5);
            ObjSqlCommand.Parameters.Add(P6);

            ObjSqlConnection.Open();
            int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            if (NoOfRowsAffected > 0)
            {
                lblMessage.Text = "Student Updated";
            }
            else
            {
                lblMessage.Text = "Failed to Update the Student";
            }
        }

        protected void UpdateStudentDetails_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_ViewExistingUpdateStudentDetails";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txtEnterStudId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@Email";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 25;
            P2.Direction = ParameterDirection.Output;
            

            var P3 = new SqlParameter();
            P3.ParameterName = "@parentEmail";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Size = 20;
            P3.Direction = ParameterDirection.Output;


            var P4 = new SqlParameter();
            P4.ParameterName = "@attendence";
            P4.SqlDbType = SqlDbType.Int;
            P4.Direction = ParameterDirection.Output;
            

            var P5 = new SqlParameter();
            P5.ParameterName = "@phoneNo";
            P5.SqlDbType = SqlDbType.VarChar;
            P5.Size = 10;
            P5.Direction = ParameterDirection.Output;

            var P6 = new SqlParameter();
            P6.ParameterName = "@parentPhone";
            P6.SqlDbType = SqlDbType.VarChar;
            P6.Size = 10;
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

            if (P2.Value==DBNull.Value)
            {
                lblshowDetails.Text = "No student exists with this Id";
            }

            txtEnterStudEmail.Text = P2.Value.ToString();
            txtEnterParentEmail.Text= P3.Value.ToString();
            txtAttendence.Text = P4.Value.ToString();
            txtEnterStudPhNumber.Text = P5.Value.ToString();
            txtEnterParentPhNum.Text = P6.Value.ToString();
            


        }
    }
    }
