<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Kingsman_Tuxedo.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/Style.css" rel="stylesheet" type="text/css"/>
    <link href="CSS/Default.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <form id="form1" runat="server">
                <link href="CSS/responsiveslide.css" rel="stylesheet" type="text/css"/>
            <script src="JS/JavaScript.js"></script>
			<script>
				$(function () {
				  $("#slider1").responsiveSlides({
					auto: true,
					pager: true,
					nav: true,
					speed: 300,
					maxwidth: 5000,
					namespace: "centered-btns"
				  });
				});
			</script>
			<div class="banner">
				<div class="rslides_container ">
					<ul class="rslides" id="slider1">
                        <li><img src="Images/Slider/suits1.jpg" alt="Slider Image 1" /></li>
                        <li><img src="Images/Slider/suits2.jpg" alt="Slider Image 2"/></li>
						<li><img src="Images/Slider/suits3.jpg" alt="Slider Image 3"/></li>
						<li><img src="Images/Slider/suits4.jpg" alt="Slider Image 4"/></li>
						<li><img src="Images/Slider/suits5.jpg" alt="Slider Image 5"/></li>
					</ul>
				</div>
			</div>
            <br />
            <br />
            <br />
                    <asp:Repeater ID="Repeater1" runat="server" DataSourceID="SqlDataSource1">
                        <HeaderTemplate>
                              <h1>Products</h1>
                        </HeaderTemplate>
                        <ItemTemplate>
                            <div id="Repeater">
                                <ul>
                                    <li>
                                        <a href="<%#Eval("ProductId", "Pages/Products.aspx?id={0}") %>"><asp:Image ID="Image1" runat="server" ImageUrl='<%#"~/ProductImages/" + Eval("ProductId") + ".jpg" %>' /></a>
                                        <h3><a href="<%#Eval("ProductId", "Pages/Products.aspx?id={0}") %>"><%#Eval("ProductName")%></a></h3>
                                        <p><b>Product Description</b></p>
                                        <%#Eval("ProductDesc") %>
                                        <p><b>Price</b></p>
                                        <p>BND <%#Eval("Price") %></p>
                                    </li>
                                </ul>
                            </div>
                        </ItemTemplate>
                        <FooterTemplate></FooterTemplate>
                    </asp:Repeater>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnection %>" ProviderName="<%$ ConnectionStrings:IdentityConnection.ProviderName %>" SelectCommand="SELECT * FROM [tblProduct]"></asp:SqlDataSource>
            </form>
</asp:Content>
