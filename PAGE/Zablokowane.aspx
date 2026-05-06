<%@ Page Title="Zablokowane" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Zablokowane.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Zablokowane" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <div class="panel panel-danger">
      <div class="panel-heading">Status pilny - moje</div>
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
                  <asp:BoundField DataField="UserCreate" HeaderText="Użytkownik" SortExpression="UserCreate" />
                  <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
                  <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
              </Columns>


 <RowStyle CssClass="cursor-pointer" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], [UserCreate], SUBSTRING([Text],1,120) as Text, [DateMode] FROM [INZ_Ticket1] WHERE (([Priority] = @Priority) AND ([BlockUser] = @BlockUser) AND ([ActiveStatus] = @ActiveStatus)) ORDER BY [DateMode] DESC">
              <SelectParameters>
                 
                  <asp:Parameter DefaultValue="Wysoki" Name="Priority" Type="String" />
                  <asp:Parameter DefaultValue="3" Name="ActiveStatus" Type="String" />
                   <asp:ControlParameter ControlID="Label2" Name="BlockUser" PropertyName="Text" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>





      </div>
    </div>

  
  <div class="panel-group">
    <div class="panel panel-default">
      <div class="panel-heading">Status normalny - moje</div>
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
            <asp:BoundField DataField="UserCreate" HeaderText="Użytkownik" SortExpression="UserCreate"/>
             <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
            <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
          
        </Columns>
        <RowStyle CssClass="cursor-pointer" />
        </asp:GridView>
        </div>
    </div>


        <div class="panel panel-warning">
      <div class="panel-heading">Status otwarty pilne - wszystkie</div>
      <div class="panel-body">

          
          <asp:GridView ID="GridView3" runat="server"
              CssClass="table table-hover table-condensed" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource3">


              <Columns>
                  <asp:TemplateField HeaderText="Podgląd" InsertVisible="False" SortExpression="ID">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                           <asp:LinkButton ID="LinkButton3"  OnClick="LinkButton3_Click"  CommandName="view"
                       CommandArgument='<%# Eval("ID") %>' runat="server">Więcej</asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="UserCreate" HeaderText="Użytkownik" SortExpression="UserCreate" />
                  <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
                  <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
              </Columns>


 <RowStyle CssClass="cursor-pointer" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], SUBSTRING([Text],1,120) as Text, [DateMode], [UserCreate] FROM [INZ_Ticket1] WHERE (([ActiveStatus] = @ActiveStatus)  AND ([Priority] = @Priority)) ORDER BY [DateMode] DESC">
              <SelectParameters>
                  <asp:Parameter DefaultValue="3" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="Wysoki" Name="Priority" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>




      </div>
    </div>
   

    <div class="panel panel-success">
      <div class="panel-heading">Status otwarty normalny - wszystkie</div>
      <div class="panel-body">

          
          <asp:GridView ID="GridView4" runat="server"
              CssClass="table table-hover table-condensed" GridLines="None" AutoGenerateColumns="False" DataKeyNames="ID" DataSourceID="SqlDataSource4">


              <Columns>
                  <asp:TemplateField HeaderText="Podgląd" InsertVisible="False" SortExpression="ID">
                      <EditItemTemplate>
                          <asp:Label ID="Label1" runat="server" Text='<%# Eval("ID") %>'></asp:Label>
                      </EditItemTemplate>
                      <ItemTemplate>
                        <asp:LinkButton ID="LinkButton4"  OnClick="LinkButton4_Click"  CommandName="view"
                       CommandArgument='<%# Eval("ID") %>' runat="server">Więcej</asp:LinkButton>
                      </ItemTemplate>
                  </asp:TemplateField>
                  <asp:BoundField DataField="UserCreate" HeaderText="Użytkownik" SortExpression="UserCreate" />
                  <asp:BoundField DataField="Text" HeaderText="Treść" SortExpression="Text" />
                  <asp:BoundField DataField="DateMode" HeaderText="Data" SortExpression="DateMode" />
              </Columns>


 <RowStyle CssClass="cursor-pointer" />
          </asp:GridView>
          <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], [UserCreate], [DateMode], SUBSTRING([Text],1,120) as Text FROM [INZ_Ticket1] WHERE (([ActiveStatus] = @ActiveStatus) AND ([Priority] = @Priority)) ORDER BY [DateMode] DESC">
              <SelectParameters>
                  <asp:Parameter DefaultValue="3" Name="ActiveStatus" Type="String" />
                  <asp:Parameter DefaultValue="Niski" Name="Priority" Type="String" />
              </SelectParameters>
          </asp:SqlDataSource>


      </div>
    </div>

<%--    <div class="panel panel-info">
      <div class="panel-heading">Moje zgłoszenia - zablokowane</div>
      <div class="panel-body">Moje zgłoszenia</div>
    </div>

    <div class="panel panel-default">
      <div class="panel-heading">Zablokowane - wszystkich użytkowników</div>
      <div class="panel-body">Zablokowane</div>
    </div>--%>
        




  </div>

    
    
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [ID], [UserCreate], [DateMode], SUBSTRING([Text],1,120) as Text FROM [INZ_Ticket1] WHERE (([ActiveStatus] = @ActiveStatus) AND ([BlockUser] = @BlockUser) AND ([Priority] = @Priority)) ORDER BY [DateMode] DESC" OnSelecting="SqlDataSource1_Selecting">
        <SelectParameters>
     
            <asp:Parameter DefaultValue="3" Name="ActiveStatus" Type="String" />
            <asp:Parameter DefaultValue="Niski" Name="Priority" Type="String" />
             <asp:ControlParameter ControlID="Label2" Name="BlockUser" PropertyName="Text" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>





     <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>





</asp:Content>
