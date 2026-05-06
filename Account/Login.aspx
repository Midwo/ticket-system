<%@ Page Title="Logowanie" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.Account.Login" Async="true" %>

<%@ Register Src="~/Account/OpenAuthProviders.ascx" TagPrefix="uc" TagName="OpenAuthProviders" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>

    <div class="row">
        <div class="col-md-8">
            <section id="loginForm">
                <div class="form-horizontal">
                    <h4>Wypełnij formularz logowania</h4>
                    <hr />
                    <asp:PlaceHolder runat="server" ID="ErrorMessage" Visible="false">
                        <p class="text-danger">
                            <asp:Literal runat="server" ID="FailureText" />
                        </p>
                    </asp:PlaceHolder>

                    <div class="form-group">
                     
                        <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                                CssClass="text-danger" ErrorMessage="Wypełnij Email" />
                        </div>
                    </div>
                    <div class="form-group">
                        <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Hasło</asp:Label>
                        <div class="col-md-10">
                            <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                            <asp:RequiredFieldValidator runat="server" ControlToValidate="Password" CssClass="text-danger" ErrorMessage="Wypełnij hasło" />
                        </div>
                    </div>
                    
                    <div class="form-group">
                        <div class="col-md-offset-2 col-md-10 tooltip-wrapper newsletterwrap disabled">
                            <asp:Button id="buttonLogin1" runat="server" OnClick="LogIn" Text="Zaloguj" CssClass="btn btn-default" Enabled="false"  ClientIDMode="Static" />
                        </div>
                    </div>
               






                      <div class="form-group">
                      <div class="col-md-offset-2 col-md-10">     

                            <div class="checkbox LoginConsentLog">
                                <asp:CheckBox runat="server" ID="RememberMe" />
                                <asp:Label CssClass ="RemenberButton" runat="server" AssociatedControlID="RememberMe">Zapamiętaj</asp:Label>
                            </div>

                        </div>
        
   
        <div class="col-md-offset-2 col-1 LoginConsent"><br /><br />
            Aby odblokować logowanie należy zaakceptować: <br />
                        <input type="checkbox" id="myCheck1" onclick="EnableLogin()">
                        *“Rozumiem, że otrzymuję dostęp do danych zawartych w systemie zgłoszeniowym i deklaruję ich nie wykorzystywać poza tym systemem.”
                    </div>
                    <div class="col-md-offset-2 col-1 LoginConsent">
                        <input type="checkbox" id="myCheck2" onclick="EnableLogin()">
                        *"Zapoznałem/łam się z
                                <asp:HyperLink 
                                     runat="server" 
                                     CssClass="link"
                                     NavigateUrl="~/PAGE/Policy">
                                     Polityka prywatności
                                </asp:HyperLink> oraz 
                                <asp:HyperLink 
                                    runat="server" 
                                    CssClass="link"
                                    Style="margin-left:5px;"
                                    NavigateUrl="~/PAGE/Regulations">
                                    Regulaminem
                                </asp:HyperLink> 
                         deklaruję przestrzegać ich."
                    </div>


     
                    <script>

                        $(function () {
                            $('.tooltip-wrapper').tooltip({ position: "bottom" });
                        });


                        function EnableLogin() {
                            var checkBox1 = document.getElementById("myCheck1");
                            var checkBox2 = document.getElementById("myCheck2");
                            if (checkBox1.checked == true && checkBox2.checked == true) {
                                document.getElementById("buttonLogin1").disabled = false;
                                //$('#hmm').attr('data-title', '');
                                //$('#hmm').removeClass('tooltip-wrapper disabled');
                            }
                            else {
                                document.getElementById("buttonLogin1").disabled = true;

                            }
                        }
                    </script>

        
        
        
        
        </div>














               </div>
                <p>
                    <asp:HyperLink runat="server" ID="RegisterHyperLink" ViewStateMode="Disabled">Zarejestruj nowego użytkownika</asp:HyperLink>
                </p>
                <p>
                    <%-- Enable this once you have account confirmation enabled for password reset functionality
                    <asp:HyperLink runat="server" ID="ForgotPasswordHyperLink" ViewStateMode="Disabled">Forgot your password?</asp:HyperLink>
                    --%>
                </p>
            </section>
        </div>

        <%--<div class="col-md-4">
            <section id="socialLoginForm">
                <uc:OpenAuthProviders runat="server" ID="OpenAuthLogin" />
            </section>
        </div>--%>
          <div class="col-md-4">
            <section id="socialLoginForm">
                <h3>Login - hasło</h3>
                <h4>UserMDTicket@gmail.com - 123Reset!</h4>
                <h4>HelpdeskMDTicket@gmail.com - 123Reset!</h4>
                <h4>AdMDTicket@gmail.com - 123Reset!</h4>
                <h3></h3>
                <h5>Zalecane jest utworzenie nowego konta z poprawnym adresem E-mail.</h5>
                <h5>Strona wysyła na skrzynkę informacje o nowych wiadomościach</h5>
            </section>
        </div>
    </div>
</asp:Content>
