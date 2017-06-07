using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe_page_1
{
    public partial class Main_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Page previouspage = (Page)Context.Handler;
                if(Page is Signin_page)
                {
                    TextBox1.Text = ((Signin_page)previouspage).user;
                }
                
            }
        }
    }
}