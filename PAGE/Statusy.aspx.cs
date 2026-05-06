using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Praca_Inz_Michal_Dwojak.PAGE
{
    public partial class Statusy : System.Web.UI.Page
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
                    SqlDataSource1.SelectCommand = "  SELECT  replace(replace(replace(replace(replace(replace(replace([ActiveStatus],'0','Zamknięte powodzeniem'),'1','Aktywne nie odpisano'),'2','Otwarte'),'3','Zablokowane'),'4','Anulowane helpdesk'),'5','Zamknięte niepowodzeniem'),'6','Anulowane użytkownicy') as Status ,Count('[ActiveStatus]') as [Ilość] FROM [INZ_Ticket1]  where DateMode between '"+ dateStart + "' and '"+ dateStop + "'  Group by [ActiveStatus] ";


                    SqlDataSource1.DataBind();
                    GridView1.DataBind();
                }
            }

        }

    }
}