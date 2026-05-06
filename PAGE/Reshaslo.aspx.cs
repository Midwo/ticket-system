using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Reshaslo : System.Web.UI.Page
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

                    con.Open();
                    SqlCommand kol1 = new SqlCommand("UPDATE [AspNetUsers] SET [PasswordHash]='AIW0YX9sR5/1vpDEsfN84g2uHj1uljJ29EYljIYffGLJmSkvOCus2K+34NgpH9FX4Q==', [SecurityStamp]='918a08bd-1e02-453d-ae94-fffafdd8560b' WHERE Email ='" + textboxzm1 + "'", con);

                    kol1.ExecuteNonQuery();
                    con.Close();
                    mikd.Visible = true;
                    mikd.Text = "Hasło zostało zmienione!";


                }

                else
                {
                    mikd.Visible = true;
                    mikd.Text = "Błędny email!";
                }

            }
        }
    }
}