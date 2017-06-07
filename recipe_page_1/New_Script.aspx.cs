using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace recipe_page_1
{
    public partial class New_Script : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                Calendar1.Visible = false;
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //Server.Transfer("Recipe.aspx");testc 
        }

        protected void Birthdate_S_TextChanged(object sender, EventArgs e)
        {
            
            //Swarndeep Singh
            
        }



        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            if (Calendar1.Visible)
            {
                Calendar1.Visible = false;
            }
            else
            {
                Calendar1.Visible = true;
            }
            
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            Birthdate_S.Text = Calendar1.SelectedDate.ToString("dd/MM/yyy");
            Calendar1.Visible = false;
        }

        protected void Calendar1_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.IsOtherMonth)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}