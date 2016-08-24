using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SCIMA
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LinkButton1.Text = "Main page";
            LinkButton2.Text = "New prescription";
            LinkButton3.Text = "Recall prescription";
            LinkButton4.Text = "Logout";

            Label1.Text = "User is logged in as:";
            Label2.Text = "Not this user? Please logout.";

            Button1.Text = "New prescription";
            Button2.Text = "Recall previous prescription";
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}