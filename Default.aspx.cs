using System;
using System.Collections.Generic;
using System.Security.Claims;
using System.Security.Principal;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Globalization;


namespace Praca_Inz_Michal_Dwojak
{
    public partial class _Default : Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            Label5.Text = Context.User.Identity.Name;
      
            DateTime currentDate = new System.DateTime(System.DateTime.Now.Ticks);

            System.Globalization.Calendar cal;
            cal = CultureInfo.InvariantCulture.Calendar;

            int day = cal.GetDaysInMonth(currentDate.Year, currentDate.Month, 1);

            DateTime startDate = new DateTime(currentDate.Year, currentDate.Month, 1, 0, 0, 0, 0);
            DateTime stopDate = new DateTime(currentDate.Year, currentDate.Month, day, 23, 59, 59, 59);

         
            DateTime Dateminus7 = System.DateTime.Now.AddDays(-6);
        
            DateTime Dateplus1 = System.DateTime.Now.AddDays(1);

            jam1.Text = startDate.ToString();
            jam2.Text = stopDate.ToString();
            jam3.Text = System.DateTime.Now.ToString("yyyy-MM-dd");
            jam4.Text = Dateplus1.ToString("yyyy-MM-dd");
            jam5.Text = Dateplus1.ToString("yyyy-MM-dd");
            jam6.Text = Dateminus7.ToString("yyyy-MM-dd");

        }

        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void LoginView1_ViewChanged(object sender, EventArgs e)
        {

        }
    }
}