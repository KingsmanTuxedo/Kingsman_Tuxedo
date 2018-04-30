<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Kingsman_Tuxedo.Admin.Index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css"/>
    <link href="../CSS/Default.css" rel="stylesheet" type="text/css"/>
    <link href="../CSS/AdminIndex.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Administrator Account</h1>
    <p>Welcome to the Admin Panel</p>
        <table>
            <tr>
                <td><a href="Add.aspx">Add Products</a></td>
                <td><a href="List.aspx">List Products</a></td>
            </tr>
        </table>
        <p>
            <asp:Button ID="BtnLogOut" runat="server" Height="27px" Text="Log-Out" Width="148px" OnClick="BtnLogOut_Click" />
        </p>

    </form>

</asp:Content>
