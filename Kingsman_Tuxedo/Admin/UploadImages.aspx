<%@ Page Title="" Language="C#" MasterPageFile="Admin.Master" AutoEventWireup="true" CodeBehind="UploadImages.aspx.cs" Inherits="Kingsman_Tuxedo.Admin.UploadImages" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Default.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form id="form1" runat="server">
    <h1>Upload Product Images</h1>
        <p>
            <asp:FileUpload ID="FileUploadControl" runat="server" Height="50px" Width="374px" />
        </p>
        <p>
            <asp:Button ID="BtnImgUpload" runat="server" Height="45px" OnClick="BtnImgUpload_Click" style="margin-left: 0px" Text="Upload Image" Width="175px" />
        </p>
        <p>
            <asp:Image ID="CurrentImage" runat="server" />
        </p>
        <p>&nbsp;</p>
        <p>
            <asp:Button ID="BtnBack" runat="server" Height="45px" OnClick="BtnBack_Click" style="padding-bottom: 5px" Text="Back" Width="169px" />
        </p>

    </form>

</asp:Content>
