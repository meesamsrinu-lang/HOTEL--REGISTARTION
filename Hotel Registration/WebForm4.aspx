<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true"
    CodeBehind="WebForm4.aspx.cs"
    Inherits="Hotel_Registration.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>

.login-box
{
    width:400px;
    margin:60px auto;
    padding:30px;
    background:white;
    border-radius:10px;
    box-shadow:0px 0px 15px gray;
    text-align:center;
}

.title
{
    font-size:30px;
    color:#003366;
    font-weight:bold;
}

table
{
    width:100%;
    margin-top:20px;
}

td
{
    padding:10px;
}

.label
{
    font-size:18px;
    font-weight:bold;
    text-align:left;
}

.textbox
{
    width:220px;
    height:30px;
    border:1px solid #ccc;
    border-radius:5px;
    padding-left:8px;
    font-size:15px;
}

.btn
{
    width:150px;
    height:45px;
    background:#0078D7;
    color:white;
    border:none;
    border-radius:5px;
    font-size:18px;
    font-weight:bold;
    cursor:pointer;
}

.btn:hover
{
    background:#0056b3;
}

</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">

<div class="login-box">

    <asp:Label
        ID="Label1"
        runat="server"
        CssClass="title"
        Text="Login Page">
    </asp:Label>

    <table>

        <tr>
            <td class="label">
                <asp:Label
                    ID="Label2"
                    runat="server"
                    Text="User Name">
                </asp:Label>
            </td>

            <td>
                <asp:TextBox
                    ID="TextBox1"
                    runat="server"
                    CssClass="textbox">
                </asp:TextBox>
            </td>
        </tr>

        <tr>
            <td class="label">
                <asp:Label
                    ID="Label3"
                    runat="server"
                    Text="Password">
                </asp:Label>
            </td>

            <td>
                <asp:TextBox
                    ID="TextBox2"
                    runat="server"
                    TextMode="Password"
                    CssClass="textbox">
                </asp:TextBox>
            </td>
        </tr>

        <tr>
            <td colspan="2" align="center">

                <br />

                <asp:Button
                    ID="Button1"
                    runat="server"
                    Text="Login"
                    CssClass="btn"
                    OnClick="Button1_Click" />

            </td>
        </tr>

    </table>

</div>

</asp:Content>
