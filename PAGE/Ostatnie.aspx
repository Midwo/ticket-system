<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Ostatnie.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.ostatnie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    
  <div class="panel panel-danger">
      <div class="panel-heading">Moje zgłoszenia - otwarte</div>
      <div class="panel-body">


          <asp:GridView ID="GridView2" runat="server"
              CssClass="table table-hover table-condensed" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource2">


              <Columns>
                  <asp:TemplateField HeaderText="Podgląd" InsertVisible="False" SortExpression="ID">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                           <asp:LinkButton ID="LinkButton2"  OnClick="LinkButton2_Click"  CommandName="view"
                       CommandArgument='<%# Eval("ID") %>' runat="server">Więcej</asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="Range" HeaderText="Zakres" SortExpression="Range" />
                  <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
                  <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
              </Columns>


 <RowStyle CssClass="cursor-pointer" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], [Range], SUBSTRING([Text],1,120) as Text, [DateMode] FROM [INZ_Ticket1] WHERE [ActiveStatus] IN (1,2,3) AND [UserCreate] = @UserCreate ORDER BY [DateMode] DESC">
              <SelectParameters>
                   <asp:Parameter DefaultValue="1" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="2" Name="ActiveStatus1" Type="String" />
                  <asp:Parameter DefaultValue="3" Name="ActiveStatus2" Type="String" />
                   <asp:ControlParameter ControlID="Label2" Name="UserCreate" PropertyName="Text" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>





          <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>





      </div>
    </div>

  
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">Moje zgłoszenia - ostatnio zamknięte</div>
      <div class="panel-body">

           <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource1"  OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowCustomPaging="True"
          CssClass="table table-hover table-condensed" GridLines="None" >
        
        <Columns>
            <asp:TemplateField HeaderText="Podgląd" InsertVisible="False" SortExpression="ID">
                <EditItemTemplate>
                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                </EditItemTemplate>
                <ItemTemplate>

                           <asp:LinkButton ID="LinkButton1"  OnClick="LinkButton1_Click"  CommandName="view"
                       CommandArgument='<%# Eval("ID") %>' runat="server">Więcej</asp:LinkButton>

                   
                </ItemTemplate>
            </asp:TemplateField>
             <asp:BoundField DataField="Range" HeaderText="Zakres" SortExpression="Range" />
             <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
            <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
          
        </Columns>
        <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
        </div>
    </div>


      

         


 




    
   


        

    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], [Range], SUBSTRING([Text],1,120) as Text, [DateMode] FROM [INZ_Ticket1] WHERE (([ActiveStatus] = @ActiveStatus) AND ([UserCreate] = @UserCreate) OR ([ActiveStatus] = @ActiveStatus1) AND ([UserCreate] = @UserCreate) OR ([ActiveStatus] = @ActiveStatus2) OR ([ActiveStatus] = @ActiveStatus2) AND ([UserCreate] = @UserCreate) OR ([ActiveStatus] = @ActiveStatus2) AND ([UserCreate] = @UserCreate)) ORDER BY [DateMode] DESC">
              <SelectParameters>
                      <asp:Parameter DefaultValue="0" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="4" Name="ActiveStatus1" Type="String" />
                  <asp:Parameter DefaultValue="5" Name="ActiveStatus2" Type="String" />
                   <asp:Parameter DefaultValue="6" Name="ActiveStatus3" Type="String" />
                   <asp:ControlParameter ControlID="Label2" Name="UserCreate" PropertyName="Text" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>

















</div>
</asp:Content>
