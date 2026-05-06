<%@ Page Title="Strona Główna" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak._Default" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">







    <div class="jumbotron">
        <h2>Newsy<asp:Label ID="Label5" runat="server" Text="Label" Visible="False"></asp:Label>
        </h2>
       

            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource2">


                  <HeaderTemplate>
             
          </HeaderTemplate>

          <ItemTemplate>
         
             <p>
                <asp:Label runat="server" class="label label-default" ID="Label19" 
                    text='<%# Eval("Data") %>' />
              
             
                  <asp:Label runat="server" ID="Label20" 
                      text='<%# Eval("Text") %>' />
              </p>
          
          </ItemTemplate>

          <AlternatingItemTemplate>
          
              <p>
                <asp:Label runat="server" class="label label-default" ID="Label21" 
                    text='<%# Eval("Data") %>' />
              
                 <asp:Label runat="server" ID="Label22" 
                     text='<%# Eval("Text") %>' />
              
          
          </AlternatingItemTemplate>




            </asp:Repeater>



            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT TOP 2 [Text], [Data] FROM [INZ_INFO] ORDER BY [int] DESC"></asp:SqlDataSource>


   
       
    </div>
  

       
        
        <div class="col-md-4">
            <h2>Miesięczne statusy:</h2>
                <asp:Chart ID="Chart1" runat="server" DataSourceID="SqlDataSourcex">
            <Series>
                <asp:Series Name="Series1" XValueMember="Status" YValueMembers="Ilość" ChartType="Doughnut"></asp:Series>
            </Series>
            <ChartAreas>
                <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
            </ChartAreas>
        </asp:Chart>


            <asp:Label ID="jam1" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="jam2" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:Label ID="jam3" runat="server" Text="Label" Visible="False"></asp:Label><asp:Label ID="jam4" runat="server" Text="Label" Visible="False"></asp:Label>
            <asp:SqlDataSource ID="SqlDataSourcex" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT  replace(replace(replace(replace(replace(replace(replace([ActiveStatus],'0','Zamknięte powodzeniem'),'1','Aktywne nie odpisano'),'2','Otwarte'),'3','Zablokowane'),'4','Anulowane helpdesk'),'5','Zamknięte niepowodzeniem'),'6','Anulowane użytkownicy') as Status ,Count('[ActiveStatus]') as [Ilość] FROM [INZ_Ticket1]  where DateMode between @DateCreate and @DateCreate2  Group by [ActiveStatus] ">
                <SelectParameters>
                    <asp:ControlParameter ControlID="jam1" Name="DateCreate" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="jam2" Name="DateCreate2" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
                 </asp:SqlDataSource>
          
        </div>














            
  



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
    



           
       
        <div class="col-md-4">
            <h2>Dzisiejsze statystyki:</h2>
            <asp:Chart ID="Chart2" runat="server" DataSourceID="SqlDataSourcex0">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Status" YValueMembers="Ilość" YValuesPerPoint="6"></asp:Series>
                </Series>
                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX IsLabelAutoFit="False" TitleFont="Microsoft Sans Serif, 9pt">
                            <LabelStyle Angle="-25" />
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSourcex0" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT 
    CASE v.St 
        WHEN '0' THEN 'Zamknięte powodzeniem'
        WHEN '1' THEN 'Aktywne nie odpisano'
        WHEN '2' THEN 'Otwarte'
        WHEN '3' THEN 'Zablokowane'
        WHEN '4' THEN 'Anulowane helpdesk'
        WHEN '5' THEN 'Zamknięte niepowodzeniem'
        WHEN '6' THEN 'Anulowane użytkownicy'
    END as Status,
    COUNT(t.ActiveStatus) as [Ilość]
FROM (
    SELECT '0' as St UNION ALL SELECT '1' UNION ALL SELECT '2' 
    UNION ALL SELECT '3' UNION ALL SELECT '4' UNION ALL SELECT '5' 
    UNION ALL SELECT '6'
) v
LEFT JOIN [INZ_Ticket1] t ON v.St = t.ActiveStatus 
    AND t.DateMode BETWEEN @DateCreate AND @DateCreate2 
GROUP BY v.St">
                <SelectParameters>
                    <asp:ControlParameter ControlID="jam3" Name="DateCreate" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="jam4" Name="DateCreate2" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
                 </asp:SqlDataSource>
  
          
        </div>


      
        <div class="col-md-4">
            <h2>Ilość zgłoszeń - tydzień:</h2>
            <asp:Chart ID="Chart3" runat="server" DataSourceID="SqlDataSource1">
                <Series>
                    <asp:Series Name="Series1" XValueMember="Data" YValueMembers="Ilość zgłoszeń" YValuesPerPoint="6" ChartType="Spline"></asp:Series>

                </Series>

                <ChartAreas>
                    <asp:ChartArea Name="ChartArea1">
                        <AxisX IsLabelAutoFit="False" TitleFont="Microsoft Sans Serif, 9pt">
                            <LabelStyle Angle="-25" />
                        </AxisX>
                    </asp:ChartArea>
                </ChartAreas>
            </asp:Chart>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Convert(date, DateCreate) as [Data], Count('Convert(date, DateCreate)') as [Ilość zgłoszeń] FROM [INZ_Ticket1] where DateCreate between @DateCreate and @DateCreate2  group by Convert(date, DateCreate)  ">
          <SelectParameters>
                    <asp:ControlParameter ControlID="jam6" Name="DateCreate" PropertyName="Text" Type="DateTime" />
                    <asp:ControlParameter ControlID="jam5" Name="DateCreate2" PropertyName="Text" Type="DateTime" />
                </SelectParameters>
                 </asp:SqlDataSource>
  
            <asp:Label ID="jam5" runat="server" Text="Label" Visible="False"></asp:Label>
        </div> <asp:Label ID="jam6" runat="server" Text="Label" Visible="False"></asp:Label>
      
    
      
       
  
</asp:Content>
