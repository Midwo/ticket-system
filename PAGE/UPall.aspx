<%@ Page Title="UPall" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UPall.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.UPall" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
   
       
    <h3> Uprawnienia poziom - wszystkie poziomy </h3>
  
       
    
   
      
   
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
          CssClass="table table-hover table-condensed" GridLines="None" Visible="True" >
             <Columns>
                    <asp:BoundField DataField="ID Uprawnienia" HeaderText="ID uprawnienia" ReadOnly="True" SortExpression="ID Uprawnienia" />
                    <asp:BoundField DataField="Uprawnienia" HeaderText="Poziom uprawnienia" SortExpression="Uprawnienia" ReadOnly="True" />
                    <asp:BoundField DataField="UserName" HeaderText="Nazwa użytkownika" SortExpression="UserName" />
                    <asp:BoundField DataField="Number" HeaderText="Numer nadania uprawnień" InsertVisible="False" ReadOnly="True" SortExpression="Number" />
                </Columns>
            </asp:GridView>
         
        </div>
    </div>

     
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand=" SELECT ISNULL( b.[RoleId], '0' ) as [ID Uprawnienia], ISNULL(Name, 'user' ) as [Uprawnienia],[UserName],[Number] FROM [AspNetUsers] as a Left join [AspNetUserRoles] as b ON a.[Id] = b.[UserId] Left join [AspNetRoles] as c ON b.[RoleId] = c.[Id] ">
           <%--   <SelectParameters>
                      <asp:Parameter DefaultValue="0" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="4" Name="ActiveStatus1" Type="String" />
                  <asp:Parameter DefaultValue="5" Name="ActiveStatus2" Type="String" />
              </SelectParameters>--%>
          </asp:SqlDataSource>


    </div>


</asp:Content>

