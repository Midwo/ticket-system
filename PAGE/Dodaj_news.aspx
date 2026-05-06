<%@ Page Title="Dodaj news" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Dodaj_news.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Dodaj_news" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    
    <div class="jumbotron">
        <h2>Ostatnie newsy<asp:Label ID="Label12" runat="server" Text="Label" Visible="False"></asp:Label>
        </h2>
       

            <asp:Repeater ID="Repeater2" runat="server" DataSourceID="SqlDataSource3">


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



            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT TOP 2 [Text], [Data] FROM [INZ_INFO] ORDER BY [int] DESC"></asp:SqlDataSource>


   
       
    </div>
  











     

        



 

    Wprowadź treść:
      <div class="form-horizontal">
           
        <div class="form-group">
        
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="MultiLine" Height="151px" Width="685px"></asp:TextBox>
             <%--   <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
    --%>




<%--Problem z zakresu: <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-default dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
          <asp:ListItem Value="0">Wybierz</asp:ListItem>
          <asp:ListItem Value="Licencji">Licencji</asp:ListItem>
          <asp:ListItem Value="Działania aplikacji">Działania aplikacji</asp:ListItem>
          <asp:ListItem Value="Zmiana w systemie">Zmiana w systemie</asp:ListItem>
          <asp:ListItem Value="Inne">Inne</asp:ListItem>
    </asp:DropDownList>--%>



            </div>
        </div>
         </div>
      <asp:Button ID="Button1" runat="server" Text="Dodaj nowy news" class="btn btn-danger" OnClick="Button1_Click" />

    <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>




            

</asp:Content>


