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
    public partial class podglad : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            string PobraneID = Request.QueryString["ID"];
            Userlab.Text = PobraneID;
            con.Open();
            SqlCommand cmd = new SqlCommand("SELECT [UserCreate],[DateCreate],[BlockStatus],[BlockUser],[DateBlock], [Text], [Priority], [EmailUser], [Range],[DataUserEnd] FROM [INZ_Ticket1] where ID = " + PobraneID + "", con);
            cmd.ExecuteNonQuery();
            SqlDataReader DR1 = cmd.ExecuteReader();
            if (DR1.Read())
            {
                Label1.Text = DR1.GetValue(0).ToString();
                Label2.Text = DR1.GetValue(1).ToString();
                Label3.Text = DR1.GetValue(2).ToString();
                Label4.Text = DR1.GetValue(3).ToString();
                Label5.Text = DR1.GetValue(4).ToString();
                Label6.Text = DR1.GetValue(5).ToString();
                Label7.Text = DR1.GetValue(6).ToString();
                Label8.Text = DR1.GetValue(7).ToString();
                Label9.Text = DR1.GetValue(8).ToString();
                Label10.Text = DR1.GetValue(9).ToString();

            }
            con.Close();
            //string textboxzm1 = TextBox1.Text.Replace(";", " ").Replace("'", " ").Replace(":", " ");
            //con.Open();
            //SqlCommand kol = new SqlCommand("INSERT INTO [INZ_Ticket1]([UserCreate],[EmailUser],[Priority],[Range],[Text],[DataUserEnd]) VALUES ('" + Label5.Text + "','" + Label6.Text + "', '" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "','" + textboxzm1 + "','" + Calendar1.SelectedDate.ToString() + "')", con);
            //kol.ExecuteNonQuery();

            //con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string selectID = Request.QueryString["ID"];
            string content = TextBox1.Text.Replace(";", " ").Replace("'", " ").Replace(":", " ");
            string variabledrop1 = DropDownList1.SelectedValue;

            con.Open();
            SqlCommand kol1 = new SqlCommand("INSERT INTO [INZ_Ticket2] ([ID], [Text], [CreateUser]) VALUES ('" + selectID + "','" + content + "','" + Context.User.Identity.Name + "')", con);
            kol1.ExecuteNonQuery();
            con.Close();
            if (variabledrop1 == "0")
            {
                con.Open();
                SqlCommand drop1 = new SqlCommand("UPDATE [INZ_Ticket1] SET [DateMode] = '" + System.DateTime.Now.ToString() + "', [ActiveStatus] ='4', [UserClose] = '1'  WHERE ID='" + selectID + "'", con);

                drop1.ExecuteNonQuery();
                con.Close();
            }
            if (variabledrop1 == "2")
            {
                con.Open();
                SqlCommand drop1 = new SqlCommand("UPDATE [INZ_Ticket1] SET [DateMode] = '" + System.DateTime.Now.ToString() + "' WHERE ID='" + selectID + "'", con);
                drop1.ExecuteNonQuery();
                con.Close();
            }
            if (variabledrop1 == "3")
            {
                con.Open();
                SqlCommand drop1 = new SqlCommand("UPDATE [INZ_Ticket1] SET [DateMode] = '" + System.DateTime.Now.ToString() + "', [BlockStatus] ='0', [BlockUser] = Null, [DateBlock] = Null, [ActiveStatus] ='2', [EndUser] = Null, [EndUserData] = Null, [UserClose] ='0' WHERE ID='" + selectID + "'", con);
                drop1.ExecuteNonQuery();
                con.Close();
            }

            EmailServices email = new EmailServices();
            email.Send(content);

            Response.Redirect("~/Page/Moje.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {






        }
    }
}