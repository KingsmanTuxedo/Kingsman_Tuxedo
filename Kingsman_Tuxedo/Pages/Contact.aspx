<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Kingsman_Tuxedo.Pages.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../CSS/Style.css" rel="stylesheet" type="text/css" />
    <link href="../CSS/Default.css" rel="stylesheet" type="text/css"/>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat="server">
        <div class="box">
    <div class="out">
	<table>
			<tr>
				<th>CONTACT:</th>
			</tr>
			<tr>
				<td><b>If you have any enquiries, please feel free to contact us directly.</b></td>
			</tr>
			<tr>
				<td>We will reply as soon as possible. We are looking forward to hearing from you!<br />
                    <br />
                    Name<asp:TextBox ID="TxtName2" runat="server" style="margin-left: 50px" Width="413px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="IDName2" runat="server" ControlToValidate="TxtName2" ErrorMessage=" * Please enter your name"></asp:RequiredFieldValidator>
&nbsp;<br />
                    <br />
                    Email<asp:TextBox ID="TxtEmail" runat="server" style="margin-left: 55px" Width="407px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="IDEmail" runat="server" ControlToValidate="TxtEmail" ErrorMessage="Email address is required"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="IDEmail2" runat="server" ErrorMessage="Invalid Email Address" ControlToValidate="TxtEmail" ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    <br />
                    <br />
                    Subject<asp:TextBox ID="TxtSubject" runat="server" style="margin-left: 39px" Width="403px"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="IDSubject" runat="server" ControlToValidate="TxtSubject" ErrorMessage="Please enter the subject"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    Message<asp:TextBox ID="TxtMsg" runat="server" Height="85px" style="margin-left: 26px" Width="430px" TextMode="MultiLine"></asp:TextBox>
                     <asp:RequiredFieldValidator ID="IDMsg" runat="server" ControlToValidate="TxtMsg" ErrorMessage="Message is required"></asp:RequiredFieldValidator>
                    <br />
                    <br />
                    <asp:Button ID="BtnSend" runat="server" Height="60px" Text="Send" Width="166px" OnClick="BtnSend_Click" />
                    <br />
                    <br />
                    <asp:Literal ID="LitMsg" runat="server"></asp:Literal>
                </td>
            </tr>
          
			<tr>
				<th>CUSTOMER SERVICE:</th>
			</tr>
			<tr>
				<td>Time: Monday-Friday 11am-7pm (Brunei Time)</td>
			</tr>
			<tr>
				<td>Phone Number: +673 888555</td>
			</tr>
			<tr>
				<td>Email: KingsmanTuxedo@gmail.com</td>
			</tr>
                <tr>
               <th> OUR LOCATION:</th>
                </tr>
            <tr>
                <td>We are Located at Plaza Abdul Razak, Third Floor, 2B,J Laksamana Abdul Razak, Bandar Seri Begawan BA1712,Brunei.</td>
            </tr>
		</table>
</div>
            </div>
    </form>
        
    <div id="map">
            <script src="../JS/map.js"></script>
              <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyALR4N6gkX3oKEVzdu3Ez3qNYko0398VNE&callback=initMap"></script> 
    </div>
    <div id="static-map">
         <img src="../Images/Map.JPG" alt="Static Image of Location"/>
    </div>
</asp:Content>
