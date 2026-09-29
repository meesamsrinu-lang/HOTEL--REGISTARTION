<%@ Page Language="C#" AutoEventWireup="true" 
    CodeBehind="WebForm8.aspx.cs" 
    Inherits="Hotel_Registration.WebForm8" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">

<title>Welcome</title>

<style>

body
{
    margin:0;
    padding:0;
    font-family:Arial, Helvetica, sans-serif;
    height:100vh;
    background:linear-gradient(135deg,#007bff,#00c6ff);
    display:flex;
    justify-content:center;
    align-items:center;
}


.welcome-box
{
    width:500px;
    background:white;
    padding:40px;
    text-align:center;
    border-radius:15px;
    box-shadow:0px 10px 30px rgba(0,0,0,0.3);
}


.icon
{
    font-size:70px;
    color:#007bff;
}


.title
{
    font-size:40px;
    font-weight:bold;
    color:#003366;
}


.message
{
    font-size:20px;
    color:#555;
    margin-top:20px;
    line-height:30px;
}


.hotel-btn
{
    margin-top:30px;
    width:200px;
    height:45px;
    background:#007bff;
    color:white;
    border:none;
    border-radius:8px;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
}


.hotel-btn:hover
{
    background:#0056b3;
    transform:scale(1.05);
    transition:0.3s;
}


.footer
{
    margin-top:25px;
    color:#888;
    font-size:14px;
}

</style>

</head>


<body>

<form id="form1" runat="server">


<div class="welcome-box">


<div class="icon">
    🏨
</div>


<asp:Label 
    ID="Label1"
    runat="server"
    CssClass="title"
    Text="Welcome">
</asp:Label>


<br /><br />


<asp:Label
    ID="Label2"
    runat="server"
    CssClass="message"
    Text="Welcome to our Hotel Management System. Manage registrations, users, and hotel details easily.">
</asp:Label>


<br />


<asp:Button
    ID="Button1"
    runat="server"
    CssClass="hotel-btn"
    Text="Continue" />


<div class="footer">
    © 2026 Hotel Registration System
</div>


</div>


</form>

</body>

</html>
