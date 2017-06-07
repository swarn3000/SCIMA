using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe_page_1
{
    public partial class Signin_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Server.Transfer("Main_page.aspx");
        }
        //Swarndeep Singh
        public string user
        {
            get
            {
                return Username_signin.Text;
            }
        }
    }
}