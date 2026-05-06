<%@ Page Title="Uprawnienia" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Uprawnienia.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Uprawnienia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    

    <div class="form-horizontal">
        <h4>Nadaj uprawnienia</h4>

         <div class="col-md-10">
          <asp:RadioButtonList ID="RadioButtonList2" runat="server">
              <asp:ListItem Value="2">Administrator</asp:ListItem>
              <asp:ListItem Value="1" Selected="True">Helpdesk</asp:ListItem>
              <asp:ListItem Value="0">User</asp:ListItem>
                </asp:RadioButtonList>
     
            </div>
        <div class="form-group">
      
            <div class="col-md-10">
                <asp:TextBox ID="TextBox1" class="form-control" runat="server" ></asp:TextBox>
     
            </div>

        </div>
          <div class="form-group">
          <div class="col-md-10">
                <asp:Button ID="Button1" runat="server" Text="Nadaj uprawnienia" class="btn btn-danger" OnClick="Button1_Click" />
                <asp:Label ID="mikd" runat="server" Text=""></asp:Label>
                <asp:Label ID="mikd1" runat="server" Text="Label" Visible="False"></asp:Label>
                <asp:Label ID="Label55" runat="server" Text="Label" Visible="False"></asp:Label>
            </div>
        </div>
      </div>
</asp:Content>
