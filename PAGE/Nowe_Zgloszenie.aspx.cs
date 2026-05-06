using Praca_Inz_Michal_Dwojak.App_Code;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    
            
    public partial class Nowe_Zgloszenie : System.Web.UI.Page 
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        public string name;   
        public int Progresbar;
        public int Progresbar1;
        public int Progresbar2;
        public int Progresbar3;

        //String CS = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //Progresbar = 0;
            //Progresbar1 = 0;
            //Progresbar2 = 0;
            //Progresbar3 = 0;
            //Label2.Text = Progresbar.ToString() + "%";

            con.Open();

    
    }


        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label2.Text = DropDownList2.SelectedValue;
            string variabledrop1 = DropDownList1.SelectedValue;
            string variabledrop = DropDownList2.SelectedValue;
            //Label1.Text = DropDownList1.SelectedValue;
            if (variabledrop != "0" & variabledrop1 != "0")
            {
                Progresbar1 = 25;
                Progresbar2 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Calendar1.Visible = false;
                    Progresbar3 = 25;
                    Progresbar1 = 25;
                    Progresbar2 = 25;
                    Label2.Visible = false;
                }
            }
            if (variabledrop != "0")
            {
                Progresbar1 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Progresbar1 = 25;
                    Progresbar3 = 25;
                    Label2.Visible = false;
                }

            }
            if (variabledrop1 != "0")
            {
                Progresbar1 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Progresbar1 = 25;
                    Progresbar3 = 25;
                    Label2.Visible = false;
                }

            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            //Label2.Text = DropDownList2.SelectedValue;
            string variabledrop1 = DropDownList1.SelectedValue;
            string variabledrop = DropDownList2.SelectedValue;
            //Label1.Text = DropDownList1.SelectedValue;
            if (variabledrop != "0" & variabledrop1 != "0")
            {
                Progresbar1 = 25;
                Progresbar2 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Calendar1.Visible = false;
                    Progresbar3 = 25;
                    Progresbar1 = 25;
                    Progresbar2 = 25;
                    Label2.Visible = false;
                }
              
            }
            if (variabledrop1 != "0")
            {
                Progresbar1 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Progresbar1 = 25;
                    Progresbar3 = 25;
                    Label2.Visible = false;
                }

            }
            if (variabledrop != "0")
            {
                Progresbar1 = 25;
                if (Calendar1.SelectedDate >= System.DateTime.Today)
                {
                    Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                    Progresbar1 = 25;
                    Progresbar3 = 25;
                    Label2.Visible = false;
                }

            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Calendar1.Visible = true;
            string variabledrop1 = DropDownList1.SelectedValue;
            string variabledrop = DropDownList2.SelectedValue;
            Label2.Visible = false;
            if (Calendar1.SelectedDate >= System.DateTime.Today)
            {
                Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                Progresbar3 = 25;
                Progresbar1 = 25;
                Progresbar2 = 25;
                Label2.Visible = false;
            }
            if (Calendar1.SelectedDate < System.DateTime.Today)
            {
                Calendar1.SelectedDate = System.DateTime.Today;
                Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                Progresbar1 = 25;
                Progresbar2 = 25;
                Label2.Visible = true;
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            string variabledrop1 = DropDownList1.SelectedValue;
            string variabledrop = DropDownList2.SelectedValue;

            if (Calendar1.SelectedDate >= System.DateTime.Today)
            {
            Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
            Calendar1.Visible = false;
            Progresbar3 = 25;
            Progresbar1 = 25;
            Progresbar2 = 25;
            Label2.Visible = false;
            }
            else
            {
                Progresbar1 = 25;
                Progresbar2 = 25;
                Label2.Visible = true;
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string variabledrop1 = DropDownList1.SelectedValue;
            string variabledrop = DropDownList2.SelectedValue;

            Progresbar3 = 25;
            Progresbar1 = 25;
            Progresbar2 = 25;
            Progresbar = 25;
            if (Calendar1.SelectedDate >= System.DateTime.Today & variabledrop != "0" & variabledrop1 != "0")
            {
                Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                Calendar1.Visible = false;
                Progresbar3 = 25;
                Progresbar1 = 25;
                Progresbar2 = 25;
                Progresbar = 25;
                Label2.Visible = false;
                Label4.Visible = false;
                Label3.Visible = true;

                string data_create = System.DateTime.Now.ToString();


                SqlCommand cmd = new SqlCommand("Select [UserName], [Email] From [AspNetUsers] Where Email ='" + Context.User.Identity.Name + "'", con);
                cmd.ExecuteNonQuery();
                SqlDataReader DR1 = cmd.ExecuteReader();
                if (DR1.Read())
                {
                    Label5.Text = DR1.GetValue(0).ToString();
                    Label6.Text = DR1.GetValue(1).ToString();
                }
                con.Close();
                string content = TextBox1.Text.Replace(";", " ").Replace("'", " ").Replace(":", " ");
                con.Open();
                string dateEdnd = Calendar1.SelectedDate.ToString();
                DateTime data = DateTime.Parse(dateEdnd);

                SqlCommand kol = new SqlCommand("INSERT INTO [INZ_Ticket1]([UserCreate],[EmailUser],[Priority],[Range],[Text],[DataUserEnd]) VALUES ('" + Label5.Text + "','" + Label6.Text + "', '" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + content + "','"+ data.ToString("yyyy.MM.dd") + "')", con);
                kol.ExecuteNonQuery();
              
                con.Close();

                EmailServices email = new EmailServices();
                email.Send(content);

            }
            if (Calendar1.SelectedDate >= System.DateTime.Today)
            {
                Label1.Text = Calendar1.SelectedDate.ToString("dd-MM-yyyy");
                Calendar1.Visible = false;
                Progresbar3 = 25;
                Progresbar1 = 25;
                Progresbar2 = 25;
                Label2.Visible = false;
            }
            else
            {
                Progresbar1 = 25;
                Progresbar2 = 25;
                Label2.Visible = true;
                Label4.Visible = true;
                Label3.Visible = false;
            }


            Response.Redirect("~/Page/Ostatnie");


        }
    
        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

      

      
    }
}
