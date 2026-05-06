using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Zablokowane : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label2.Text = Context.User.Identity.Name;
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia1.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia1.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia1.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia1.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }

        protected void GridView2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }



    }
}