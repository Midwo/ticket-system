<%@ Page Title="Ostatnie rejestacje" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ostatnia_rejestracja.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Ostatnia_rejestracja" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
       
    <h3> Ostatnie rejestacje do serwisu </h3>
  
       
    
   
      
   
     <asp:Label ID="jam5" runat="server" Text="Label" Visible="False"></asp:Label>
       <asp:Label ID="jam6" runat="server" Text="Label" Visible="False"></asp:Label>
    
      

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

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1"   
          CssClass="table table-hover table-condensed" GridLines="None" >
                <Columns>
                    <asp:BoundField DataField="Numer" HeaderText="Numer" ReadOnly="True" SortExpression="Numer" InsertVisible="False" />
                    <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
                    <asp:BoundField DataField="Data rejestacji" HeaderText="Data rejestacji" SortExpression="Data rejestacji" />
                </Columns>
            </asp:GridView>
         
        </div>
    </div>

     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand=" SELECT TOP 15 [Number] as Numer, [Username] as [Nazwa] ,[Data_rejestracji] as [Data rejestacji] FROM [AspNetUsers] order by NUMBER desc">
           <%--   <SelectParameters>
                      <asp:Parameter DefaultValue="0" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="4" Name="ActiveStatus1" Type="String" />
                  <asp:Parameter DefaultValue="5" Name="ActiveStatus2" Type="String" />
              </SelectParameters>--%>
          </asp:SqlDataSource>


    </div>



</asp:Content>
