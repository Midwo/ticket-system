<%@ Page Title="Usunięcie użytkownika" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Usuniecie_usera.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Usuniecie_usera" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

        

    <div class="form-horizontal">
        <h4>Usunięcie użytkownika</h4>

        
        <div class="form-group">
      
            <div class="col-md-10">
                <asp:TextBox ID="TextBox1" class="form-control" runat="server" ></asp:TextBox>
     
            </div>

        </div>
          <div class="form-group">
          <div class="col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Usuń" class="btn btn-danger" OnClick="Button1_Click" />
                <asp:Label ID="mikd" runat="server" Text=""></asp:Label>
                <asp:Label ID="mikd1" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label55" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
        </div>
      </div>
</asp:Content>
