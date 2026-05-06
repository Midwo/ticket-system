<%@ Page Title="Nowe zgłoszenie" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Nowe_Zgloszenie.aspx.cs" Inherits="Praca_Inz_Michal_Dwojak.PAGE.Nowe_Zgloszenie" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
    <%-- <div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" style="width: <%= Progresbar %>%">
    <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
  </div>
   </div>   --%>
      <div>
         
     
          Progres bar zgłoszenia.
      </div>


      <div class="progress">
  <div class="progress-bar progress-bar-danger progress-bar-striped active" style="width: <%= Progresbar1 %>%">
    <span class="sr-only">(success)</span>
  </div>
  <div class="progress-bar progress-bar-warning progress-bar-striped active" style="width: <%= Progresbar2 %>%">
    <span class="sr-only">(warning)</span>
  </div>
  <div class="progress-bar progress-bar-success progress-bar-striped active" style="width: <%= Progresbar3 %>%">
    <span class="sr-only">(danger)</span>
  </div>
  <div class="progress-bar progress-bar-info progress-bar-striped active" style="width: <%= Progresbar %>%">
    <span class="sr-only">(warning)</span>
  </div>
</div>

   Wybierz priorytet zgłoszenia: <asp:DropDownList ID="DropDownList1" runat="server" class="btn btn-default dropdown-toggle" AutoPostBack="True"  OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        <asp:ListItem   Value="0">Wybierz</asp:ListItem>
        <asp:ListItem  Value="Niski">Niski</asp:ListItem>
        <asp:ListItem   Value="Wysoki">Wysoki</asp:ListItem>
    </asp:DropDownList>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Proszę wybrać Priorytet" ControlToValidate="DropDownList1"
        InitialValue="0"
         style="color:Red;"></asp:RequiredFieldValidator>
 
      
 <%--   <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>--%>
      Problem z zakresu: <asp:DropDownList ID="DropDownList2" runat="server" class="btn btn-default dropdown-toggle" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
          <asp:ListItem Value="0">Wybierz</asp:ListItem>
          <asp:ListItem Value="Licencji">Licencji</asp:ListItem>
          <asp:ListItem Value="Działania aplikacji">Działania aplikacji</asp:ListItem>
          <asp:ListItem Value="Zmiana w systemie">Zmiana w systemie</asp:ListItem>
          <asp:ListItem Value="Inne">Inne</asp:ListItem>
    </asp:DropDownList>
   <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Proszę wybrać Priorytet" ControlToValidate="DropDownList2"
        InitialValue="0"
       style="color:Red;"></asp:RequiredFieldValidator>
   <%-- <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>--%>

     <br/>
          <br/>

  Maksymalny okres oczekiwania na realizacje zgłoszenia:
      <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    <asp:Button ID="Button2" runat="server"  class="btn btn-default" Text="Ustaw date" OnClick="Button2_Click" />
     <asp:Label ID="Label2" runat="server" Text="Wybierz poprawną datę!" Visible="False"></asp:Label>
<br/> <br/>
    <asp:Calendar ID="Calendar1" runat="server" BackColor="White" BorderColor="#999999" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="180px" Visible="False" Width="200px" OnSelectionChanged="Calendar1_SelectionChanged" CellPadding="4">
        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
        <NextPrevStyle VerticalAlign="Bottom" />
        <OtherMonthDayStyle ForeColor="#808080" />
        <SelectedDayStyle BackColor="#666666" ForeColor="White" Font-Bold="True" />
        <SelectorStyle BackColor="#CCCCCC" />
        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
        <WeekendDayStyle BackColor="#FFFFCC" />
    </asp:Calendar>
   
<%--     <br/>--%>
        
   <%-- Wpisz treść zgłoszenia:
    <br/>
    <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Height="180px" Width="695px"></asp:TextBox>

     <br/>
    <br/>
   --%>




    Wpisz treść zgłoszenia:
      <div class="form-horizontal">
           
        <div class="form-group">
        
            <div class="col-md-10">
                <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" TextMode="MultiLine" Height="151px" Width="685px" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
             <%--   <asp:TextBox runat="server" ID="Email" CssClass="form-control" TextMode="Email" />
    --%>
            </div>
        </div>
         </div>

<%--     <div class="form-group">
  <label for="comment">Comment:</label>
  <textarea class="form-control" rows="5" id="comment"
      ></textarea>
</div>
--%>



  




















    <asp:Button ID="Button1" runat="server" Text="Wyślij zgłoszenie" class="btn btn-danger" OnClick="Button1_Click" />

    <br/>
     <asp:Label ID="Label4" runat="server" Text="*Wprowadź poprawnie dane - zła data*" Visible="False"
        style="color:Red;"  > </asp:Label>
    <asp:Label ID="Label3" runat="server" Text="*Wysłano zgłoszenie*" Visible="False"
         style="color:Red;"></asp:Label>

    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Top 1 FROM [INZ_Ticket1]"></asp:SqlDataSource>
    <asp:Label ID="Label5" runat="server" Visible="False"></asp:Label>
    <asp:Label ID="Label6" runat="server" Visible="False"></asp:Label>































</asp:Content>


