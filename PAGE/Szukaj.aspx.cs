using System;
using System.Collections.Generic;
using System.Data.Entity.Core.Common.CommandTrees.ExpressionBuilder;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Szukaj : System.Web.UI.Page
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
            Response.Redirect("~/Page/Podglad.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }
        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Page/Podglad.aspx?ID=" + ((LinkButton)sender).CommandArgument);
        }


     
        protected void Button1_Click(object sender, EventArgs e)
        {
            string format = "yyyy-MM-dd";
            string dateStart = Calendar1.SelectedDate.ToString(format);
            string dateStop = Calendar2.SelectedDate.AddDays(1).ToString(format);

            if (Calendar1.SelectedDate > System.DateTime.Now.AddYears(-1000) & Calendar2.SelectedDate > System.DateTime.Now.AddYears(-1000))
            { 
            if (Calendar1.SelectedDate < Calendar2.SelectedDate.AddDays(1))
            {
                GridView1.Visible = true;
                SqlDataSource1.SelectCommand = "SELECT [ID], [Range], SUBSTRING([Text],1,120) as Text, [DateMode] FROM [INZ_Ticket1] WHERE [DateMode] BETWEEN '" + dateStart + "' and '" + dateStop + "' ORDER BY [DateMode] DESC";



        SqlDataSource1.DataBind();
        GridView1.DataBind();
            }
        }

        }
   
    }
}