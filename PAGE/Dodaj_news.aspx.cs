using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;


namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Dodaj_news : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

          
          
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectID = Request.QueryString["ID"];
            string content = TextBox1.Text.Replace(";", " ").Replace("'", " ").Replace(":", " ");
          
     
            con.Open();
            SqlCommand kol1 = new SqlCommand("INSERT INTO [INZ_INFO] ([Text]) VALUES ('" + content + "')", con);
            kol1.ExecuteNonQuery();
            con.Close();

            Label11.Visible = true;
            Label11.Text = "Dodano nowy news!";

            Response.Redirect("~/Default.aspx");
        }

        
    }
}