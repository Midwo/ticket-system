<%@ Page Title="Statusy" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Statusy.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Statusy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    <h3> Wybierz zakres generowania danych - Statusy data modyfikacji</h3>
    <div class="row">
        <div class="col-md-4">
            <h3>Zakres od</h3>
             <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#3366CC" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" BorderWidth="1px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle VerticalAlign="Bottom" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" Font-Bold="True" BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
         
        </div>
       
    
        <div class="col-md-4">

          <h3>Zakres do</h3>
               <asp:Calendar ID="Calendar2" runat="server" BackColor="White" BorderColor="#3366CC" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px" BorderWidth="1px">
        <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
        <NextPrevStyle VerticalAlign="Bottom" ForeColor="#CCCCFF" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
        <TitleStyle BackColor="#003399" BorderColor="#3366CC" Font-Bold="True" BorderWidth="1px" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
        <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
        <WeekendDayStyle BackColor="#CCCCFF" />
    </asp:Calendar>
        
        </div>
   
      
    </div>
     <asp:Label ID="jam5" runat="server" Text="Label" Visible="False"></asp:Label>
       <asp:Label ID="jam6" runat="server" Text="Label" Visible="False"></asp:Label>
    <p></p>
    <div class="row">
       <div class="col-md-4">
      <asp:Button ID="Button2" runat="server" Text="Generuj" class="btn btn-warning" OnClick="Button1_Click" Font-Size="XX-Large" /> 
         
</div>
</div>
    
        <p></p>
      

         <%--   <asp:LoginView id="LoginView1" runat="server">
              
                   <RoleGroups>
                    <asp:RoleGroup Roles="admin">
                        <ContentTemplate>
                            <ul>
                                <li>Add a new article.</li>
                                <li>Review editorial changes.</li>
                                <li>View article requests.</li>
                            </ul>
                        </ContentTemplate>
                    </asp:RoleGroup>
                    <asp:RoleGroup Roles="helpdesk">
                        <ContentTemplate>
                            <ul>
                                <li>Review articles.</li>
                                <li>Submit edited article.</li>
                            </ul>
                        </ContentTemplate>
                    </asp:RoleGroup>
                 
                </RoleGroups>
                <LoggedInTemplate>
               ITempdsfsdfsdfsdflate</LoggedInTemplate>
            </asp:LoginView>--%>
    



           
      

     
     
  
           
      
    
      
       
  


















 


  
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">Wygenerowane zgłoszenia</div>
      <div class="panel-body">

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowCustomPaging="True"
          CssClass="table table-hover table-condensed" GridLines="None" Visible="False" >
                <Columns>
                    <asp:BoundField DataField="Status" HeaderText="Status" ReadOnly="True" SortExpression="Status" />
                    <asp:BoundField DataField="Ilość" HeaderText="Ilość" SortExpression="Ilość" ReadOnly="True" />
                </Columns>
            </asp:GridView>
         
        </div>
    </div>

     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT  replace(replace(replace(replace(replace(replace(replace([ActiveStatus],'0','Zamknięte powodzeniem'),'1','Aktywne nie odpisano'),'2','Otwarte'),'3','Zablokowane'),'4','Anulowane helpdesk'),'5','Zamknięte niepowodzeniem'),'6','Anulowane użytkownicy') as Status ,Count('[ActiveStatus]') as [Ilość] FROM [INZ_Ticket1]  where DateMode between @DateCreate and @DateCreate2  Group by [ActiveStatus] ">
              <SelectParameters>
                      <asp:Parameter DefaultValue="0" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="4" Name="ActiveStatus1" Type="String" />
                  <asp:Parameter DefaultValue="5" Name="ActiveStatus2" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>


    </div>







    







</asp:Content>
