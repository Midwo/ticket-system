<%@ Page Title="Rejestracja" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.Account.Register" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h2><%: Title %>.</h2>
    <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
    </p>
    <div class="form-horizontal">
        <h4>Utwórz nowego użytkownika</h4>
        <hr />
        <asp:ValidationSummary runat="server" CssClass="text-danger" />
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Email" CssClass="col-md-2 control-label">Email</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Email"
                    CssClass="text-danger" ErrorMessage="Email jest wymagany" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label">Hasło</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Wprowadzenie hasła jest wymagane" />
            </div>
        </div>
        <div class="form-group">
            <asp:Label runat="server" AssociatedControlID="ConfirmPassword" CssClass="col-md-2 control-label">Powtórz hasło</asp:Label>
            <div class="col-md-10">
                <asp:TextBox runat="server" ID="ConfirmPassword" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Powtórzenie hasła jest wymagane" />
                <asp:CompareValidator runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Hasła są różne" />
            </div>
        </div>
        <div class="form-group">
            <div class="col-md-offset-2 col-md-1 tooltip-wrapper newsletterwrap disabled">
                <asp:Button  id="buttonLogin1" runat="server" OnClick="CreateUser_Click" Text="Register" CssClass="btn btn-default" Enabled="False"     ClientIDMode="Static" />
            </div>
       
            
        
        <div class="col-md-offset-2 col-1 LoginConsent"><br /><br />
            Aby odblokować rejestracje należy zaakceptować: <br />
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
</asp:Content>