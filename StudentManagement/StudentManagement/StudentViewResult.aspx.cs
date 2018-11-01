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
    public partial class StudentViewResult : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;

            var str = Session["LoginName"].ToString();

            var strid = Convert.ToInt32(Session["LoginId"]);
            lblId.Text = strid.ToString();


            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_ViewStduentResult";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;


            var P1 = new SqlParameter();
            P1.ParameterName = "@S_Id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value =(strid);

            var P2 = new SqlParameter();
            P2.ParameterName = "@sem1marks";
            P2.SqlDbType = SqlDbType.Int;
            P2.Size = 10;
            P2.Direction = ParameterDirection.Output;

            var P3 = new SqlParameter();
            P3.ParameterName = "@sem2marks";
            P3.SqlDbType = SqlDbType.Int;
            P3.Size = 10;
            P3.Direction = ParameterDirection.Output;

            var P4 = new SqlParameter();
            P4.ParameterName = "@sem3marks";
            P4.SqlDbType = SqlDbType.Int;
            P4.Size = 10;
            P4.Direction = ParameterDirection.Output;

            var P5 = new SqlParameter();
            P5.ParameterName = "@sem4marks";
            P5.SqlDbType = SqlDbType.Int;
            P5.Size = 10;
            P5.Direction = ParameterDirection.Output;

            var P6 = new SqlParameter();
            P6.ParameterName = "@sem5marks";
            P6.SqlDbType = SqlDbType.Int;
            P6.Size = 10;
            P6.Direction = ParameterDirection.Output;

            var P7 = new SqlParameter();
            P7.ParameterName = "@sem6marks";
            P7.SqlDbType = SqlDbType.Int;
            P7.Size = 10;
            P7.Direction = ParameterDirection.Output;

            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);
            ObjSqlCommand.Parameters.Add(P5);
            ObjSqlCommand.Parameters.Add(P6);
            ObjSqlCommand.Parameters.Add(P7);


            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            lblsem1.Text = P2.Value.ToString();
            lblsem2.Text = P3.Value.ToString();
            lblsem3.Text = P4.Value.ToString();
            lblsem4.Text = P5.Value.ToString();
            lblsem5.Text = P6.Value.ToString();
            lblsem6.Text = P7.Value.ToString();

            float m1 = Convert.ToInt32(lblsem1.Text);
            float m2 = Convert.ToInt32(lblsem2.Text);
            float m3 = Convert.ToInt32(lblsem3.Text);
            float m4 = Convert.ToInt32(lblsem4.Text);
            float m5 = Convert.ToInt32(lblsem5.Text);
            float m6 = Convert.ToInt32(lblsem6.Text);

            float[] arraymarks =  new float[] { m1, m2, m3, m4, m5, m6 };
            int count = 6;
            for(int i=0;i<6;i++)
            {
                if(arraymarks[i]==0)
                {
                    count--;
                }
            }
            var totalmarks = m1 + m2 + m3 + m4 + m5 + m6;
            var percentage = (totalmarks / count);
            lblMarks.Text = percentage.ToString();

        }
    }
}