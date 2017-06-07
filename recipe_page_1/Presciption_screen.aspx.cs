using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace recipe_page_1
{
    public partial class Presciption_screen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //Page lastPage = (Page)Context.Handler;
                //if (lastPage is Recipe)
                //{
                //    Drug_1.Text = ((Recipe)lastPage).vol_1;
                //    Drug_2.Text = ((Recipe)lastPage).vol_2;
                //    Drug_3.Text = ((Recipe)lastPage).vol_3;
                //    Drug_4.Text = ((Recipe)lastPage).vol_4;

                //    DrugName1.Text = ((Recipe)lastPage).Drug_1;
                //}

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
        //Swarndeep Singh
        protected void TextBox42_TextChanged(object sender, EventArgs e)
        {

        }

        protected void DrugName1_TextChanged(object sender, EventArgs e)
        {
            
        }
    }
}

   


