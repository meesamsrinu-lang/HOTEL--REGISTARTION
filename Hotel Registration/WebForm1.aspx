<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Hotel_Registration.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #74ebd5, #9face6);
    }

    .login-container {
        width: 400px;
        margin: 80px auto;
        background: white;
        padding: 40px;
        border-radius: 18px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.2);
        text-align: center;
    }

    .login-title {
        font-size: 32px;
        font-weight: bold;
        color: #ff0066;
        margin-bottom: 30px;
    }

    .input-group {
        text-align: left;
        margin-bottom: 20px;
    }

    .input-group label {
        display: block;
        font-weight: 600;
        color: #333;
        margin-bottom: 8px;
    }

    .input-box {
        width: 100%;
        height: 38px;
        border: 1px solid #ccc;
        border-radius: 8px;
        padding: 5px 10px;
        font-size: 16px;
        box-sizing: border-box;
        transition: .3s;
    }

    .input-box:focus {
        border-color: #ff0066;
        outline: none;
        box-shadow: 0 0 8px rgba(255,0,102,.3);
    }

    .login-btn {
        width: 100%;
        height: 45px;
        background: #ff0066;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        transition: .3s;
        margin-top: 10px;
    }

    .login-btn:hover {
        background: #cc0052;
        transform: translateY(-2px);
    }

    .register-btn {
        width: 100%;
        height: 42px;
        background: #4e54c8;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 16px;
        font-weight: 600;
        cursor: pointer;
        margin-top: 15px;
        transition: .3s;
    }

    .register-btn:hover {
        background: #363ba3;
    }

    @media(max-width:500px) {

        .login-container {
            width: 80%;
            padding: 25px;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" runat="server" ContentPlaceHolderID="MainContent">

<div class="login-container">

    <asp:Label ID="Label1" 
        runat="server" 
        Text="Login Page"
        CssClass="login-title">
    </asp:Label>


    <div class="input-group">

        <asp:Label ID="Label2" 
            runat="server" 
            Text="User Name">
        </asp:Label>

        <asp:TextBox ID="TextBox1" 
            runat="server"
            CssClass="input-box">
        </asp:TextBox>

    </div>


    <div class="input-group">

        <asp:Label ID="Label3" 
            runat="server" 
            Text="Password">
        </asp:Label>

        <asp:TextBox ID="TextBox2" 
            runat="server"
            TextMode="Password"
            CssClass="input-box">
        </asp:TextBox>

    </div>


    <asp:Button ID="Button3" 
        runat="server" 
        Text="Login"
        OnClick="Button3_Click"
        CssClass="login-btn" />


    <asp:Button ID="Button2" 
        runat="server"
        Text="New Registration"
        OnClick="Button2_Click1"
        CssClass="register-btn" />

</div>

</asp:Content>

