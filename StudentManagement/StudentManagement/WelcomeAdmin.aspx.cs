using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Case_Study_A
{
    public partial class WelcomeAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserType"].ToString() != "Admin")
            {
                Response.Redirect("LoginPage.aspx");
            }

            var str = Convert.ToString(Session["LoginName"]);
            lblName.Text = str;

        }
    }
}