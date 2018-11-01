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
    public partial class UpdateFaculty : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
        }

        protected void btn_UpdateFaculty_Click(object sender, EventArgs e)
        {
            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_UpdateFaculty";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@id";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = Convert.ToInt32(txt_FacId.Text);

            var P2 = new SqlParameter();
            P2.ParameterName = "@salary";
            P2.SqlDbType = SqlDbType.Money;
            P2.Value = txt_FactSal.Text;

            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);

            ObjSqlConnection.Open();
            int NoOfRowsAffected = ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            if (NoOfRowsAffected > 0)
            {
                lblMessage.Text = "Faculty updated";
            }
            else
            {
                lblMessage.Text = "Failed to update the Faculty";
            }


        }
    }
    }
