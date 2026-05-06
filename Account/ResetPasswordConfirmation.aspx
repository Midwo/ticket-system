<%@ Page Title="Password Changed" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ResetPasswordConfirmation.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.Account.ResetPasswordConfirmation" Async="true" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <div>
        <p>Twoje hasło zostało zmienione. Kliknij <asp:HyperLink ID="login" runat="server" NavigateUrl="~/Account/Login">tutaj</asp:HyperLink> by zalogować </p>
    </div>
</asp:Content>
