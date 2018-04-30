<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Kingsman_Tuxedo.login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Default.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="Loginform" runat="server">
    <h1>Log-In</h1>
    <p>E-mail&nbsp;
        <asp:TextBox ID="TxtEmail" runat="server" style="margin-left: 21px" Width="215px"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="* Invalid Email Format" ControlToValidate="TxtEmail" Font-Italic="False" Display="Static" ViewStateMode="Enabled" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Email Required" ControlToValidate="TxtEmail"></asp:RequiredFieldValidator>
    </p>
    <p>Password&nbsp;
        <asp:TextBox ID="TxtPassword" runat="server" Width="215px" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Password Required" ControlToValidate="TxtPassword"></asp:RequiredFieldValidator>
    </p>
    <p>
        <asp:Button ID="btnLogin" runat="server" Height="37px" Text="Log-In" Width="114px" OnClick="btnLogin_Click" />
    </p>
    <p>
        <asp:Literal ID="LitMsg" runat="server"></asp:Literal>
    </p>
    <p>&nbsp;</p>

        <!--<h1>Account registration</h1>

        E-Mail
        <asp:TextBox ID="TxtRegEmail" runat="server" style="margin-left: 24px" Width="215px"></asp:TextBox>
        <br />
        Password&nbsp; <asp:TextBox ID="TxtRegPass" runat="server" Width="213px" TextMode="Password"></asp:TextBox>
        <br />
        Confirm Password
        <asp:TextBox ID="TxtRegConfirmPass" runat="server" Width="216px" TextMode="Password"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnReg" runat="server" Height="37px" Text="Register" Width="136px" OnClick="btnReg_Click" />
        <br />
        <br />
        <asp:Literal ID="LitRegMsg" runat="server"></asp:Literal>
        <br />
   </form>->

</asp:Content>
