<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm6.aspx.cs" Inherits="Hotel_Registration.WebForm6" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <style>

    body {
        margin: 0;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        background: linear-gradient(135deg, #667eea, #764ba2);
    }

    .registration-card {
        width: 500px;
        margin: 60px auto;
        background: #ffffff;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0 15px 35px rgba(0,0,0,0.25);
        text-align: center;
    }

    .title {
        font-size: 32px;
        font-weight: bold;
        color: #764ba2;
        display: block;
        margin-bottom: 30px;
    }

    .form-label {
        display: block;
        font-size: 18px;
        font-weight: 600;
        color: #333;
        margin-bottom: 10px;
    }

    .text-box {
        width: 90%;
        height: 35px;
        padding: 5px 12px;
        border: 1px solid #ccc;
        border-radius: 8px;
        font-size: 16px;
        transition: 0.3s;
    }

    .text-box:focus {
        border-color: #764ba2;
        outline: none;
        box-shadow: 0 0 8px rgba(118,75,162,0.4);
    }

    .option-section {
        margin: 20px 0;
        font-size: 17px;
    }

    .option-section input {
        margin-right: 8px;
    }

    .option-section label {
        color: #444;
        font-weight: 500;
    }

    .register-btn {
        width: 90%;
        height: 45px;
        background: #764ba2;
        color: white;
        border: none;
        border-radius: 10px;
        font-size: 18px;
        font-weight: bold;
        cursor: pointer;
        margin-top: 25px;
        transition: 0.3s;
    }

    .register-btn:hover {
        background: #5a3780;
        transform: translateY(-2px);
    }


    @media(max-width:600px){

        .registration-card {
            width: 80%;
            padding: 25px;
        }

        .title {
            font-size: 25px;
        }

    }

</style>

</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">

    <div class="registration-card">

    <asp:Label ID="Label1" 
        runat="server" 
        Text="HOTEL REGISTRATION"
        CssClass="title">
    </asp:Label>


    <asp:Label ID="Label2" 
        runat="server"
        Text="Username"
        CssClass="form-label">
    </asp:Label>


    <asp:TextBox ID="TextBox1" 
        runat="server"
        CssClass="text-box">
    </asp:TextBox>


    <br /><br />


    <asp:Label ID="Label3" 
        runat="server"
        Text="Room Type"
        CssClass="form-label">
    </asp:Label>


    <div class="option-section">

        <asp:RadioButton ID="RadioButton1" 
            runat="server" 
            Text="Deluxe"
            GroupName="Room"
            OnCheckedChanged="RadioButton1_CheckedChanged" />


        &nbsp;&nbsp;


        <asp:RadioButton ID="RadioButton2" 
            runat="server" 
            Text="Ordinary"
            GroupName="Room"
            OnCheckedChanged="RadioButton1_CheckedChanged" />

    </div>


    <asp:Label ID="Label4" 
        runat="server"
        Text="Amenities"
        CssClass="form-label">
    </asp:Label>


    <div class="option-section">

        <asp:CheckBox ID="CheckBox1" 
            runat="server"
            Text="AC" />


        &nbsp;&nbsp;


        <asp:CheckBox ID="CheckBox2" 
            runat="server"
            Text="Computer" />

    </div>


    <asp:Button ID="Button1" 
        runat="server"
        Text="REGISTER"
        OnClick="Button1_Click"
        CssClass="register-btn" />

</div>

</asp:Content>
