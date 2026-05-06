using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Widok : System.Web.UI.Page
    {
       

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            
           
              
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

            
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Zgloszenia.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
    }
}