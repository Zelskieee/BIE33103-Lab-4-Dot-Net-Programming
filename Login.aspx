<%@ Page Title="Login" Language="C#" MasterPageFile="~/MasterPages/MasterPage.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Lab3.MasterPages.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../style.css/StyleLoginPage.css" />
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-container">
        <p class="auto-style1"><strong>Login</strong></p>
        <p>
            <div class="image-container">
                <asp:Image ID="Image1" runat="server" ImageUrl="~/Resources/LoginPage.png" Width="138px" Height="142px" />
            </div>
        </p>
        <p class="auto-style2">Enter your ID and Password</p>
        <div class="labelid-container">
            <strong><span class="auto-style2">ID:</span></strong>
        </div>
        <div class="textboxid-container">
            <asp:TextBox ID="id" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfID" runat="server"
                ControlToValidate="id"
                InitialValue=""
                ErrorMessage="* Please enter your ID!"
                ForeColor="#FF3300"
                Font-Bold="true"
                Font-Size="Medium"
                Display="Dynamic" />
        </div>
        <p></p>
        <div class="labelpw-container">
            <strong><span class="auto-style2">Password:</span><span class="auto-style3"> </span></strong>
        </div>
        <div class="textboxpw-container">
            <asp:TextBox ID="pw" runat="server" TextMode="Password"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rvfPassword" runat="server"
                ControlToValidate="pw"
                ErrorMessage="* Please enter your password!"
                ForeColor="#FF3300"
                Font-Bold="true"
                Font-Size="Medium"
                Display="Dynamic" />
        </div>
        <div class="status-container">
            <asp:Label ID="lblStatus" runat="server" style="font-weight: 700; font-size: medium; color: #FF5A39;" Visible="false"></asp:Label>        
        </div>
        <p></p>
        <div class="submitbtn-container">
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" style="font-weight: 700" />
        </div>
        <div class="cancelbtn-container">
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" style="font-weight: 700" />
        </div>
    </div>
    <p></p>
</asp:Content>