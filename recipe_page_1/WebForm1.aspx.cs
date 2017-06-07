using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace recipe_page_1
{
    public partial class WebForm1 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DrugList1.DataSource = GetData("spGetDrugName", null);
                DrugList1.DataBind();

                DrugList2.DataSource = GetData("spGetDrugName", null);
                DrugList2.DataBind();

                DrugList3.DataSource = GetData("spGetDrugName", null);
                DrugList3.DataBind();

                DrugList4.DataSource = GetData("spGetDrugName", null);
                DrugList4.DataBind();

                ListItem liDrug = new ListItem("Select Drug", "-1");
                DrugList1.Items.Insert(0, liDrug);
                DrugList2.Items.Insert(0, liDrug);
                DrugList3.Items.Insert(0, liDrug);
                DrugList4.Items.Insert(0, liDrug);
                
               
                ListItem liStrength = new ListItem("Select strength", "-1");
                ConcentrationList1.Items.Insert(0, liStrength);
                ConcentrationList2.Items.Insert(0, liStrength);
                ConcentrationList3.Items.Insert(0, liStrength);
                ConcentrationList4.Items.Insert(0, liStrength);

                //ListItem liStrength1 = new ListItem("Select strength", "-1");
               // ConcentrationList2.Items.Insert(0, liStrength1);

                //ListItem liUnits = new ListItem("Units", "-1");
                //DropDownList3.Items.Insert(0, liUnits);



                ConcentrationList1.Enabled = false;
                ConcentrationList2.Enabled = false;
                ConcentrationList3.Enabled = false;
                ConcentrationList4.Enabled = false;

                UnitsLabel1.Visible = false;
                UnitsLabel2.Visible = false;
                UnitsLabel3.Visible = false;
                UnitsLabel4.Visible = false;


            }
        }
        public DataSet GetData(string SPName, SqlParameter SPParameter)
        {

            string CS = ConfigurationManager.ConnectionStrings["DrugsConnectionString"].ConnectionString;
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

        protected void DrugList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrugList1.SelectedIndex == 0)
            {
                
            }
            else
            {
                ConcentrationList1.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DrugID", DrugList1.SelectedValue);
                DataSet DS = GetData("spGetStrengthsByDrugID", parameter);
                

                ConcentrationList1.DataSource = DS;
                ConcentrationList1.DataBind();

             
                ListItem liStrength = new ListItem("Select strength", "-1");
                ConcentrationList1.Items.Insert(0, liStrength);
            }
        }

        protected void DrugList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrugList2.SelectedIndex == 0)
            {

            }
            else
            {
                ConcentrationList2.Enabled = true;           
                SqlParameter parameter = new SqlParameter("@DrugID", DrugList2.SelectedValue);
                DataSet DS = GetData("spGetStrengthsByDrugID", parameter);

               
                ConcentrationList2.DataSource = DS;
                ConcentrationList2.DataBind();

                ListItem liStrength1 = new ListItem("Select strength", "-1");
                ConcentrationList2.Items.Insert(0, liStrength1);
            }
        }

        protected void DrugList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrugList3.SelectedIndex == 0)
            {

            }
            else
            {
                ConcentrationList3.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DrugID", DrugList3.SelectedValue);
                DataSet DS = GetData("spGetStrengthsByDrugID", parameter);


                ConcentrationList3.DataSource = DS;
                ConcentrationList3.DataBind();


                ListItem liStrength = new ListItem("Select strength", "-1");
                ConcentrationList3.Items.Insert(0, liStrength);
            }
        }

        protected void DrugList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DrugList4.SelectedIndex == 0)
            {

            }
            else
            {
                ConcentrationList4.Enabled = true;
                SqlParameter parameter = new SqlParameter("@DrugID", DrugList4.SelectedValue);
                DataSet DS = GetData("spGetStrengthsByDrugID", parameter);


                ConcentrationList4.DataSource = DS;
                ConcentrationList4.DataBind();


                ListItem liStrength = new ListItem("Select strength", "-1");
                ConcentrationList4.Items.Insert(0, liStrength);
            }
        }


        protected void ConcentrationList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ConcentrationList1.SelectedIndex == 0)
            {
            }
            else if (DrugList1.SelectedIndex == 1 && ConcentrationList1.SelectedIndex == 1)
            {

                AmpulesTextBox1.Text = 50.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mcg";
            }
            else if (DrugList1.SelectedIndex == 1 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 50.ToString();
                
                UnitsLabel1.Visible= true;
                UnitsLabel1.Text = "mcg";
            }
            else if (DrugList1.SelectedIndex == 2 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 30.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 2 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 10.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 2 && ConcentrationList1.SelectedIndex == 3)
            {
                AmpulesTextBox1.Text = 5.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 3 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 5.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 4 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 5.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 5 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 10.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 5 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 10.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 6 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 4.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 6 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 4.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 7 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 50.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 8 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 2.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 8 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 2.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 9 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 100.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 10 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 25.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 11 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 5.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 11 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 1.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 12 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 20.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 13 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 1.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 14 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 80.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList1.SelectedIndex == 15 && ConcentrationList1.SelectedIndex == 1)
            {
                AmpulesTextBox1.Text = 50.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mcg";
            }
            else if (DrugList1.SelectedIndex == 15 && ConcentrationList1.SelectedIndex == 2)
            {
                AmpulesTextBox1.Text = 100.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mcg";
            }
            else if (DrugList1.SelectedIndex == 15 && ConcentrationList1.SelectedIndex == 3)
            {
                AmpulesTextBox1.Text = 100.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mcg";
            }

        }

        protected void ConcentrationList2_SelectedIndexChanged(object sender, EventArgs e)

        {
            if (ConcentrationList2.SelectedIndex == 0)
            {
            }
            else if (DrugList2.SelectedIndex == 1 && ConcentrationList2.SelectedIndex == 1)
            {

                AmpulesTextBox2.Text = 50.ToString();
               
                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mcg";
            }
            else if (DrugList2.SelectedIndex == 1 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 50.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mcg";
            }
            else if (DrugList2.SelectedIndex == 2 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 30.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 2 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 10.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 2 && ConcentrationList2.SelectedIndex == 3)
            {
                AmpulesTextBox2.Text = 5.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 3 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 5.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 4 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 5.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 5 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 10.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 5 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 10.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 6 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 4.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 6 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 4.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 7 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 50.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 8 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 2.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 8 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 2.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 9 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 100.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 10 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 25.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 11 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 5.ToString();
                
                UnitsLabel1.Visible = true;
                UnitsLabel1.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 11 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 1.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 12 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 20.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 13 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 1.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 14 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 80.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mg";
            }
            else if (DrugList2.SelectedIndex == 15 && ConcentrationList2.SelectedIndex == 1)
            {
                AmpulesTextBox2.Text = 50.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mcg";
            }
            else if (DrugList2.SelectedIndex == 15 && ConcentrationList2.SelectedIndex == 2)
            {
                AmpulesTextBox2.Text = 100.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mcg";
            }
            else if (DrugList2.SelectedIndex == 15 && ConcentrationList2.SelectedIndex == 3)
            {
                AmpulesTextBox2.Text = 100.ToString();

                UnitsLabel2.Visible = true;
                UnitsLabel2.Text = "mcg";
            }
        }

        protected void ConcentrationList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ConcentrationList3.SelectedIndex == 0)
            {
            }
            else if (DrugList3.SelectedIndex == 1 && ConcentrationList3.SelectedIndex == 1)
            {

                AmpulesTextBox3.Text = 50.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mcg";
            }
            else if (DrugList3.SelectedIndex == 1 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 50.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mcg";
            }
            else if (DrugList3.SelectedIndex == 2 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 30.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 2 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 10.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 2 && ConcentrationList3.SelectedIndex == 3)
            {
                AmpulesTextBox3.Text = 5.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 3 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 5.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 4 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 5.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 5 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 10.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 5 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 10.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 6 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 4.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 6 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 4.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 7 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 50.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 8 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 2.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 8 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 2.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 9 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 100.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 10 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 25.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 11 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 5.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 11 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 1.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 12 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 20.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 13 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 1.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 14 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 80.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mg";
            }
            else if (DrugList3.SelectedIndex == 15 && ConcentrationList3.SelectedIndex == 1)
            {
                AmpulesTextBox3.Text = 50.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mcg";
            }
            else if (DrugList3.SelectedIndex == 15 && ConcentrationList3.SelectedIndex == 2)
            {
                AmpulesTextBox3.Text = 100.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mcg";
            }
            else if (DrugList3.SelectedIndex == 15 && ConcentrationList3.SelectedIndex == 3)
            {
                AmpulesTextBox3.Text = 100.ToString();

                UnitsLabel3.Visible = true;
                UnitsLabel3.Text = "mcg";
            }

        }

        protected void ConcentrationList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ConcentrationList4.SelectedIndex == 0)
            {
            }
            else if (DrugList4.SelectedIndex == 1 && ConcentrationList4.SelectedIndex == 1)
            {

                AmpulesTextBox4.Text = 50.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mcg";
            }
            else if (DrugList4.SelectedIndex == 1 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 50.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mcg";
            }
            else if (DrugList4.SelectedIndex == 2 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 30.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 2 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 10.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 2 && ConcentrationList4.SelectedIndex == 3)
            {
                AmpulesTextBox4.Text = 5.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 3 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 5.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 4 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 5.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 5 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 10.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 5 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 10.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 6 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 4.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 6 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 4.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 7 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 50.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 8 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 2.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 8 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 2.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 9 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 100.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 10 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 25.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 11 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 5.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 11 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 1.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 12 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 20.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 13 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 1.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 14 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 80.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mg";
            }
            else if (DrugList4.SelectedIndex == 15 && ConcentrationList4.SelectedIndex == 1)
            {
                AmpulesTextBox4.Text = 50.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mcg";
            }
            else if (DrugList4.SelectedIndex == 15 && ConcentrationList4.SelectedIndex == 2)
            {
                AmpulesTextBox4.Text = 100.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mcg";
            }
            else if (DrugList4.SelectedIndex == 15 && ConcentrationList4.SelectedIndex == 3)
            {
                AmpulesTextBox4.Text = 100.ToString();

                UnitsLabel4.Visible = true;
                UnitsLabel4.Text = "mcg";
            }

        }

        //setting up di method

        public void Divide()
        {
            double a, b, c, d, e, f, g, h;

            bool A = double.TryParse(DoseTextBox1.Text, out a);
            bool B = double.TryParse(AmpulesTextBox1.Text, out b);

            bool C = double.TryParse(DoseTextBox2.Text, out c);
            bool D = double.TryParse(AmpulesTextBox2.Text, out d);

            bool E = double.TryParse(DoseTextBox3.Text, out e);
            bool F = double.TryParse(AmpulesTextBox3.Text, out f);
            //Swarndeep Singh
            bool G = double.TryParse(DoseTextBox4.Text, out g);
            bool H = double.TryParse(AmpulesTextBox4.Text, out h);


            if (A && B || C && D || E && F || G && H)
            {
                VolumeTextBox1.Text = Math.Ceiling((a / b)).ToString();
                VolumeTextBox2.Text = Math.Ceiling((c / d)).ToString();
                VolumeTextBox3.Text = Math.Ceiling((e / f)).ToString();
                VolumeTextBox4.Text = Math.Ceiling((g / h)).ToString();

            }
        }
        public string vol_1
        {
            get
            {
                return VolumeTextBox1.Text;
            }

        }

        protected void TextBox7_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Divide();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }





        //protected void DrugList1_SelectedIndexChanged1(object sender, EventArgs e)


        //protected void ConcentrationList1_SelectedIndexChanged(object sender, EventArgs e)




        //protected void DrugList2_SelectedIndexChanged(object sender, EventArgs e)




        //protected void ConcentrationList2_SelectedIndexChanged(object sender, EventArgs e)


        //protected void DrugList3_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}

        //protected void DrugList4_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}

        //protected void ConcentrationList4_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}

        //protected void ConcentrationList3_SelectedIndexChanged1(object sender, EventArgs e)
        //{

        //}

        protected void TotalVolumeTextBox_TextChanged(object sender, EventArgs e)
        {
            TotalVolumeTextBox.Text = VolumeTextBox1.Text + VolumeTextBox2.Text + VolumeTextBox3.Text + VolumeTextBox4.Text;
        }

        protected void Diluent_TextChanged(object sender, EventArgs e)
        {
            diluent1();//Diluent.Text.ToString() = 18 - TotalVolumeTextBox.Text;
        }

       

        public void diluent1()
        {
            double i;
            bool I = double.TryParse(TotalVolumeTextBox.Text, out i);
            //bool J = double.TryParse(Diluent.Text, out j);
            Diluent.Text = (18 - i).ToString();
        }

        

        //protected void VolumeTextBox1_TextChanged(object sender, EventArgs e)
        //{
        //    //Int32.TryParse(VolumeTextBox1.Text, out p);
        //    //VolumeTextBox1.Text = Convert.ToInt32(VolumeTextBox1.Text);
        //    //VolumeTextBox1.Text = int.Parse(VolumeTextBox1.Text);
        //}

        public void add()
        {
            double p, q, r, s;

            bool P = double.TryParse(VolumeTextBox1.Text, out p);
            bool Q = double.TryParse(VolumeTextBox2.Text, out q);
            bool R = double.TryParse(VolumeTextBox3.Text, out r);
            bool S = double.TryParse(VolumeTextBox4.Text, out s);

            TotalVolumeTextBox.Text = Math.Ceiling((p + q + r + s)).ToString();
            
        }


        protected void Button2_Click(object sender, EventArgs e)
        {
            add();
        }

        protected void VolumeTextBox1_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void VolumeTextBox2_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void VolumeTextBox3_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }

        protected void VolumeTextBox4_TextChanged(object sender, EventArgs e)
        {
            Divide();
        }
    }
}

        


