<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="WebForm3.aspx.cs"
    Inherits="Hotel_Registration.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.success-box
{
    width:500px;
    margin:60px auto;
    padding:35px;
    background:#ffffff;
    border-radius:12px;
    box-shadow:0px 0px 15px #999;
    text-align:center;
}

.title
{
    font-size:32px;
    color:#28a745;
    font-weight:bold;
}

.subtitle
{
    font-size:22px;
    color:#333333;
    margin-top:15px;
}

.message
{
    font-size:18px;
    color:#666666;
}

.loginBtn
{
    margin-top:30px;
    width:180px;
    height:50px;
    background:#007bff;
    color:white;
    border:none;
    border-radius:6px;
    font-size:18px;
    cursor:pointer;
    font-weight:bold;
}

.loginBtn:hover
{
    background:#0056b3;
}

.check
{
    font-size:70px;
    color:#28a745;
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">

<div class="success-box">

    <div class="check">
        ✔
    </div>

    <asp:Label
        ID="Label1"
        runat="server"
        CssClass="title"
        Text="Registration Successful!!">
    </asp:Label>

    <br /><br />

    <asp:Label
        ID="Label2"
        runat="server"
        CssClass="subtitle"
        Text="Your account has been created successfully">
    </asp:Label>

    <br /><br />

    <asp:Label
        ID="Label3"
        runat="server"
        CssClass="message"
        Text="Click on Login button">
    </asp:Label>

    &nbsp;

    <asp:Label
        ID="Label4"
        runat="server"
        CssClass="message"
        Text="to check your details.">
    </asp:Label>

    <br /><br /><br />

    <asp:Button
        ID="Button1"
        runat="server"
        Text="Login"
        CssClass="loginBtn"
        OnClick="Button1_Click" />

</div>

</asp:Content>
