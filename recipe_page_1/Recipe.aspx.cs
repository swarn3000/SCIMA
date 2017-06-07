using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;





namespace recipe_page_1
{
    public partial class Recipe : System.Web.UI.Page
    {
        //SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C: \Users\Swarn\Source\Workspaces\Workspace\WelTech Syringe Driver\SCIMA\WelTecSCIMA\recipe_page_1\App_Data\Db for recipe.mdf;Integrated Security=True");
        //SqlCommand cmd;

        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    DropDownList1.DataSource = GetData("spGetDrugName", null);
            //    DropDownList1.DataBind();

            //    ListItem liDrug = new ListItem("Select Drug", "-1");
            //    DropDownList1.Items.Insert(0, liDrug);
            //}

            //if (!IsPostBack)
            //{
            //    Page lastpage1 = (Page)Context.Handler;
            //    if (lastpage1 is New_Script)
            //    {
            //        Patient_NHI_R.te
            //    }
            //}

        }

        private DataSet GetData(string SPName, SqlParameter SPParameter)
        {

            string CS = System.Configuration.ConfigurationManager.ConnectionStrings["DrugsConnectionString"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlDataAdapter da = new SqlDataAdapter(SPName, con);
            da.SelectCommand.CommandType = CommandType.StoredProcedure;
            if (SPParameter != null)
            {
                da.SelectCommand.Parameters.Add(SPParameter);
            }

            DataSet DS = new DataSet();
            da.Fill(DS);

            return DS;

        }
    
        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            IsSameValueSelected();
        }

        //Swarndeep Singh
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //if(DropDownList1.SelectedValue== "2")
            IsSameValueSelected();
        }

        private void IsSameValueSelected()
        {
            if (DropDownList2.SelectedValue.Equals(DropDownList1.SelectedValue))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('same msg selected')", true);

            }

        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            IsSameValueSelected1();
        }

        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            IsSameValueSelected1();
        }
        private void IsSameValueSelected1()
        {
            if (DropDownList4.SelectedValue.Equals(DropDownList3.SelectedValue))
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('sae msg selected')", true);
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Swarndeep Singh
            //cmd = new SqlCommand("Insert into Medicines values(@Dose, @Volumes)", con);
            //cmd.Parameters.AddWithValue("@Dose", TextBox1.Text);
            //cmd.Parameters.AddWithValue("@Volume", TextBox9.Text);

            //con.Open();
            //cmd.ExecuteNonQuery();
            //con.Close();


        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }
        protected void DropDownList6_SelectedIndexChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void TextBox9_TextChanged(object sender, EventArgs e)
        {
        }
        public void Divide()
        {
            double a, b, c, d, e, f, g, h;

            bool A = double.TryParse(Dose_1.Text, out a);
            bool B = double.TryParse(Concentration_1.SelectedValue, out b);

            bool C = double.TryParse(Dose_2.Text, out c);
            bool D = double.TryParse(Concentration_2.SelectedValue, out d);

            bool E = double.TryParse(Dose_3.Text, out e);
            bool F = double.TryParse(Concentration_3.SelectedValue, out f);
            //Swarndeep Singh
            bool G = double.TryParse(Dose_4.Text, out g);
            bool H = double.TryParse(Concentration_4.SelectedValue, out h);

            if (A && B || C && D || E && F || G && H)
            {
                Volume_1.Text = (a / b).ToString();
                Volume_2.Text = (c / d).ToString();
                Volume_3.Text = (e / f).ToString();
                Volume_4.Text = (g / h).ToString();


            }
        }

        public string vol_1
        {
            get
            {
                return Volume_1.Text;
            }
        }

        public string vol_2
        {
            get
            {
                return Volume_2.Text;
            }
        }

        public string vol_3
        {
            get
            {
                return Volume_3.Text;
            }
        }

        public string vol_4
        {
            get
            {
                return Volume_4.Text;
            }
        }
        
        public string Drug_1
        {
            get
            {
                return DropDownList1.SelectedValue;
            }
        }

        //public object Patient_NHI_R { get; private set; }

        protected void Button2_Click(object sender, EventArgs e)
        {
            DropDownList2.Visible = true;
            Label17.Visible = true;
            Dose_2.Visible = true;
            DDLTime_2.Visible = true;
            Concentration_2.Visible = true;
            Tick1.Visible = true;
            Volume_2.Visible = true;
        }

        protected void TextBox11_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
           Server.Transfer("Presciption_screen.aspx");
        }

        protected void Dose_2_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void Dose_3_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void Volume_3_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void Volume_4_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }
        //Swarndeep Singh

        protected void Add_2_Click(object sender, EventArgs e)
        {
            DropDownList3.Visible = true;
            Dose_3.Visible = true;
            Label18.Visible = true;
            DDLTime_3.Visible = true;
            Concentration_3.Visible = true;
            Tick2.Visible = true;
            Volume_3.Visible = true;
        }

        protected void Add_3_Click(object sender, EventArgs e)
        {
            DropDownList4.Visible = true;
            Label19.Visible = true;
            Dose_4.Visible = true;
            DDLTime_4.Visible = true;
            Concentration_4.Visible = true;
            Tick3.Visible = true;
            Volume_4.Visible = true;
        }
    }
}


//protected void TextBox9_TextChanged(object sender, EventArgs e)
//{

//}

//protected void TextBox9_TextChanged(object sender, EventArgs e)
//    {

//    }
