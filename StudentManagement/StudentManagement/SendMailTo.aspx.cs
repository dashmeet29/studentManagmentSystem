using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Net.Mail;

using System.Data;
using System.Data.SqlClient;
namespace Case_Study_A
{
    public partial class SendMailTo : System.Web.UI.Page
    {
        String ConnectionString = String.Empty;
        protected void Page_Load(object sender, EventArgs e)
        {
            try {
                var str = Request.QueryString["ID"];
                Label1.Text = str;

                ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;

                var ObjSqlConnection = new SqlConnection();
                ObjSqlConnection.ConnectionString = ConnectionString;

                var ObjSqlCommand = new SqlCommand();
                ObjSqlCommand.Connection = ObjSqlConnection;
                ObjSqlCommand.CommandText = "usp_showmaildetails";
                ObjSqlCommand.CommandType = CommandType.StoredProcedure;

                var P1 = new SqlParameter();
                P1.ParameterName = "@cllgid";
                P1.SqlDbType = SqlDbType.Int;
                P1.Value = str;

                var P2 = new SqlParameter();
                P2.ParameterName = "@collgname";
                P2.SqlDbType = SqlDbType.VarChar;
                P2.Size = 20;
                P2.Direction = ParameterDirection.Output;


                var P3 = new SqlParameter();
                P3.ParameterName = "@cllgaddress";
                P3.SqlDbType = SqlDbType.VarChar;
                P3.Size = 20;
                P3.Direction = ParameterDirection.Output;


                var P4 = new SqlParameter();
                P4.ParameterName = "@event";
                P4.SqlDbType = SqlDbType.VarChar;
                P4.Size = 20;
                P4.Direction = ParameterDirection.Output;

                ObjSqlCommand.Parameters.Add(P1);
                ObjSqlCommand.Parameters.Add(P2);
                ObjSqlCommand.Parameters.Add(P3);
                ObjSqlCommand.Parameters.Add(P4);

                ObjSqlConnection.Open();
                ObjSqlCommand.ExecuteNonQuery();
                ObjSqlConnection.Close();
                if (P2.Value != DBNull.Value)
                {
                    cllgname.Text = P2.Value.ToString();
                    cllgadd.Text = P3.Value.ToString();
                    lblevent.Text = P4.Value.ToString();
                }

            }
            catch(Exception)
            {
                lblinfo.Text = "No college Id present";
            }
            }


            protected void btn_SendMail_Click(object sender, EventArgs e)
            {
            ConnectionString = ConfigurationManager.ConnectionStrings["StudentConnection"].ConnectionString;

            var ObjSqlConnection = new SqlConnection();
            ObjSqlConnection.ConnectionString = ConnectionString;

            var ObjSqlCommand = new SqlCommand();
            ObjSqlCommand.Connection = ObjSqlConnection;
            ObjSqlCommand.CommandText = "usp_SendMail";
            ObjSqlCommand.CommandType = CommandType.StoredProcedure;

            var P1 = new SqlParameter();
            P1.ParameterName = "@cllgid";
            P1.SqlDbType = SqlDbType.Int;
            P1.Value = 2;

            var P2 = new SqlParameter();
            P2.ParameterName = "@parentemail";
            P2.SqlDbType = SqlDbType.VarChar;
            P2.Size = 20;
            P2.Direction = ParameterDirection.Output;


            var P3 = new SqlParameter();
            P3.ParameterName = "@collgname";
            P3.SqlDbType = SqlDbType.VarChar;
            P3.Size = 20;
            P3.Direction = ParameterDirection.Output;


            var P4 = new SqlParameter();
            P4.ParameterName = "@event";
            P4.SqlDbType = SqlDbType.VarChar;
            P4.Size = 20;
            P4.Direction = ParameterDirection.Output;

            ObjSqlCommand.Parameters.Add(P1);
            ObjSqlCommand.Parameters.Add(P2);
            ObjSqlCommand.Parameters.Add(P3);
            ObjSqlCommand.Parameters.Add(P4);

            ObjSqlConnection.Open();
            ObjSqlCommand.ExecuteNonQuery();
            ObjSqlConnection.Close();

            SendMail();
        }
        private void SendMail()
        {
            try
            {
                MailMessage mail = new MailMessage("dashmeet29@gmail.com", "sriharshareddy01@gmail.com");

                string Body = "Hello Parent a new event" + /*lblevent.Text +*/"has been added in college";
                mail.Body = Body;
                SmtpClient smtpClient = new SmtpClient();
                smtpClient.Host = "smtp.gmail.com";
                smtpClient.Port = 465;

                smtpClient.Credentials = new System.Net.NetworkCredential("dashmeet29@gmail.com", ""); //ConfigurationManager.AppSettings["Password"]);
                smtpClient.EnableSsl = true;
                smtpClient.Send(mail);
            }
            catch (Exception ex)
            {


            }

        }
    }
}
