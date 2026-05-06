<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Edit.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">


    
     <div class="alert alert-info" role="alert">

         <ul class="list-group">
  <li class="list-group-item">Utwórzył zgłoszenie: <asp:Label ID="Label1" runat="server" class="label label-default" Text="Label"></asp:Label> 
       Data utorzenia: <asp:Label ID="Label2" runat="server" class="label label-default" Text="Label"></asp:Label> 
       Do kiedy ma zostać zrobione: <asp:Label ID="Label10" runat="server" Text="last" class="label label-default"></asp:Label></li>
  <li class="list-group-item">Piorytet: <asp:Label ID="Label7" runat="server" class="label label-default" Text="Label"></asp:Label> 
      Email użytkownika: <asp:Label ID="Label8" runat="server" class="label label-default" Text="Label"></asp:Label>
    Zakres: <asp:Label ID="Label9" runat="server" class="label label-default" Text="Label"></asp:Label></li>
  <li class="list-group-item">Block status: <asp:Label ID="Label3" runat="server" class="label label-default" Text="Label"></asp:Label> 
      <asp:Label ID="Label4" runat="server" class="label label-default" Text="Label"></asp:Label>
    <asp:Label ID="Label5" runat="server"  class="label label-default" Text="Label"></asp:Label></li>

   <%--<h5>Utwórzył zgłoszenie: <asp:Label ID="Label1" runat="server" class="label label-default" Text="Label"></asp:Label> 
       Data utorzenia: <asp:Label ID="Label2" runat="server" class="label label-default" Text="Label"></asp:Label> 
       Do kiedy ma zostać zrobione: <asp:Label ID="Label10" runat="server" Text="last" class="label label-default"></asp:Label>
   </h5>--%>
       <%--  <h5>Piorytet: <asp:Label ID="Label7" runat="server" class="label label-default" Text="Label"></asp:Label> 
      Email użytkownika: <asp:Label ID="Label8" runat="server" class="label label-default" Text="Label"></asp:Label>
    Zakres: <asp:Label ID="Label9" runat="server" class="label label-default" Text="Label"></asp:Label>
    </h5> --%>
   <%-- <h5>Block status: <asp:Label ID="Label3" runat="server" class="label label-default" Text="Label"></asp:Label> 
      <asp:Label ID="Label4" runat="server" class="label label-default" Text="Label"></asp:Label>
    <asp:Label ID="Label5" runat="server"  class="label label-default" Text="Label"></asp:Label>
    </h5>  --%>
   <li class="list-group-item">Wiadomość:
    <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></li>
     


 
        </ul>
</div>
 

  
    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource2">

          <HeaderTemplate>
             
          </HeaderTemplate>

          <ItemTemplate>
           <p class="bg-warning">
             
                <asp:Label runat="server" class="label label-default"  ID="Label100" 
                    text='<%# Eval("CreateUser") %>' />
               <asp:Label runat="server" class="label label-default" ID="Label1101" 
                    text='<%# Eval("Date") %>' />
             <br />
                  <asp:Label runat="server"  ID="Label102" 
                      text='<%# Eval("Text") %>' />
             </p>
          
          </ItemTemplate>

          <AlternatingItemTemplate>
          
              
                <p class="bg-success">
             
                <asp:Label runat="server" class="label label-default"  ID="Label100" 
                    text='<%# Eval("CreateUser") %>' />
               <asp:Label runat="server" class="label label-default" ID="Label1101" 
                    text='<%# Eval("Date") %>' />
             <br />
                  <asp:Label runat="server"  ID="Label102" 
                      text='<%# Eval("Text") %>' />
             </p>
          </AlternatingItemTemplate>

    </asp:Repeater>












 

  
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Text], [Date], [CreateUser] FROM [INZ_Ticket2] WHERE ([ID] = @ID) ORDER BY [IDdrop]">
        <SelectParameters>
            <asp:ControlParameter ControlID="Userlab" Name="ID" PropertyName="Text" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>








 



 

  
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [Text], [UserCreate], [ID] FROM [INZ_Ticket1] WHERE ([ID] = @ID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ID" QueryStringField="cat" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>


    Wprowadź treść:
      <div class="form-horizontal">
           
        <div class="form-group">
        
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="MultiLine" Height="151px" Width="685px"></asp:TextBox>
             <%--   <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
    --%>
Wybierany akcje: <br /> <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem   Value="-1">Wybierz</asp:ListItem>
        <asp:ListItem  Value="0">Anuluj zgłoszenie</asp:ListItem>
        <asp:ListItem   Value="2">Brak akcji</asp:ListItem>
     <asp:ListItem   Value="3">Żądanie ponownego rozpatrzenia</asp:ListItem>
    </asp:DropDownList>
<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Proszę wybrać status" ControlToValidate="DropDownList1"
        InitialValue="-1"
         style="color:Red;"></asp:RequiredFieldValidator>

              
 

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
      <asp:Button ID="Button1" runat="server" Text="Wyślij odpowiedź" class="btn btn-danger" OnClick="Button1_Click" />

    <asp:Label ID="Label11" runat="server" Text="Label" Visible="False"></asp:Label>


    <asp:Label ID="Userlab" runat="server" Visible="False"></asp:Label>








































</asp:Content>
