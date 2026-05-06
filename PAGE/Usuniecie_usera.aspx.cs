using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Usuniecie_usera : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string textboxzm1 = TextBox1.Text.Replace(";", " ").Replace("'", " ").Replace(":", " ");
            con.Open();
            SqlCommand kol = new SqlCommand("SELECT Count([Email]) as [Ilość] FROM [AspNetUsers] Where Email = '" + textboxzm1 + "'", con);

            kol.ExecuteNonQuery();
            SqlDataReader DR1 = kol.ExecuteReader();
            if (DR1.Read())
            {
                mikd.Text = DR1.GetValue(0).ToString();


            }
            con.Close();

            {
                if (Int32.Parse(mikd.Text) == 1)
                {

                    //con.Open();
                    //SqlCommand kol1 = new SqlCommand("UPDATE [AspNetUsers] SET [PasswordHash]='AIW0YX9sR5/1vpDEsfN84g2uHj1uljJ29EYljIYffGLJmSkvOCus2K+34NgpH9FX4Q==', [SecurityStamp]='918a08bd-1e02-453d-ae94-fffafdd8560b' WHERE Email ='" + TextBox1.Text + "'", con);

                    //kol1.ExecuteNonQuery();
                    //con.Close();

                    //mikd.Text = RadioButtonList2.SelectedValue;

                    con.Open();
                    SqlCommand kol2 = new SqlCommand("SELECT Id  FROM [AspNetUsers] Where Email = '" + textboxzm1 + "'", con);

                    kol2.ExecuteNonQuery();
                    SqlDataReader DR2 = kol2.ExecuteReader();
                    if (DR2.Read())
                    {
                        mikd1.Text = DR2.GetValue(0).ToString();


                    }
                    con.Close();


                    con.Open();

                    SqlCommand kol3 = new SqlCommand("SELECT Count([UserId]) FROM [AspNetUserRoles] Where UserId = '" + mikd1.Text + "'", con);

                    kol3.ExecuteNonQuery();
                    SqlDataReader DR3 = kol3.ExecuteReader();
                    if (DR3.Read())
                    {
                        mikd.Text = DR3.GetValue(0).ToString();
                        Label55.Text = DR3.GetValue(0).ToString();
                    }
                    con.Close();

                    if (Int32.Parse(mikd.Text) == 1)
                    { //delete 2x
                        con.Open();
                        SqlCommand kol4 = new SqlCommand("DELETE FROM [AspNetUserRoles] where UserId ='" + mikd1.Text + "'", con);

                        kol4.ExecuteNonQuery();

                        con.Close();
                        

                        con.Open();
                        SqlCommand kol6 = new SqlCommand("DELETE FROM [AspNetUsers] where Id ='" + mikd1.Text + "'", con);

                        kol6.ExecuteNonQuery();

                        con.Close();
                        mikd.Text = "Usunięto użytkoniwka";
                        TextBox1.Text = "";
                    }
                    else
                    { //delete 1x
                        con.Open();
                        SqlCommand kol5 = new SqlCommand("DELETE FROM [AspNetUsers] where Id ='" + mikd1.Text + "'", con);

                        kol5.ExecuteNonQuery();

                        con.Close();
                        mikd.Text = "Usunięto użytkowniwka";
                        TextBox1.Text = "";
                    }



                    //con.Open();
                    //SqlCommand kol3 = new SqlCommand("SELECT ID  FROM [AspNetUsers] Where Email = '" + textboxzm1 + "'", con);

                    //kol.ExecuteNonQuery();

                    //con.Close();


                }

                else
                {
                    mikd.Text = "Błędny email!";
                }

            }
        }
    }
}