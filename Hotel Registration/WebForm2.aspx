<%@ Page Title="Registration" Language="C#" MasterPageFile="~/Site1.Master"
    AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs"
    Inherits="Hotel_Registration.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

<style>
    body{
        font-family:Arial;
        background:#f5f5f5;
    }

    .register-box{
        width:550px;
        margin:30px auto;
        background:white;
        padding:25px;
        border-radius:10px;
        box-shadow:0 0 10px gray;
    }

    h2{
        text-align:center;
        color:#003366;
    }

    table{
        width:100%;
    }

    td{
        padding:8px;
    }

    .label{
        font-weight:bold;
        width:180px;
    }

    .textbox{
        width:220px;
        height:28px;
        border:1px solid #ccc;
        border-radius:5px;
        padding-left:5px;
    }

    .btn{
        background:#0078D7;
        color:white;
        border:none;
        padding:10px 25px;
        border-radius:5px;
        font-size:16px;
        cursor:pointer;
    }

    .btn:hover{
        background:#0056b3;
    }

    .error{
        color:red;
        font-size:12px;
    }
</style>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="Maincontent" runat="server">

<div class="register-box">

<h2>Hotel Registration Form</h2>

<table>

<tr>
<td class="label">User ID</td>
<td>
<asp:TextBox ID="TextBox1" runat="server" CssClass="textbox"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv1" runat="server"
ControlToValidate="TextBox1"
CssClass="error"
ErrorMessage="* Required" />
</td>
</tr>

<tr>
<td class="label">First Name</td>
<td>
<asp:TextBox ID="TextBox2" runat="server" CssClass="textbox"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv2" runat="server"
ControlToValidate="TextBox2"
CssClass="error"
ErrorMessage="* Required" />
</td>
</tr>

<tr>
<td class="label">Last Name</td>
<td>
<asp:TextBox ID="TextBox3" runat="server" CssClass="textbox"></asp:TextBox>
</td>
</tr>

<tr>
<td class="label">Username</td>
<td>
<asp:TextBox ID="TextBox4" runat="server" CssClass="textbox"></asp:TextBox>
<asp:RequiredFieldValidator ID="rfv3" runat="server"
ControlToValidate="TextBox4"
CssClass="error"
ErrorMessage="* Required" />
</td>
</tr>

<tr>
<td class="label">Gender</td>
<td>
<asp:RadioButton ID="RadioButton1" runat="server"
Text="Male" GroupName="Gender"/>

<asp:RadioButton ID="RadioButton2" runat="server"
Text="Female" GroupName="Gender"/>
</td>
</tr>

<tr>
<td class="label">Password</td>
<td>
<asp:TextBox ID="TextBox5" runat="server"
TextMode="Password"
CssClass="textbox"></asp:TextBox>

<asp:RequiredFieldValidator ID="rfv4"
runat="server"
ControlToValidate="TextBox5"
CssClass="error"
ErrorMessage="* Required"/>
</td>
</tr>

<tr>
<td class="label">Confirm Password</td>
<td>

<asp:TextBox ID="TextBox6"
runat="server"
TextMode="Password"
CssClass="textbox"></asp:TextBox>

<asp:CompareValidator
ID="cv1"
runat="server"
ControlToCompare="TextBox5"
ControlToValidate="TextBox6"
CssClass="error"
ErrorMessage="Passwords do not match"/>
</td>
</tr>

<tr>
<td class="label">Email</td>
<td>

<asp:TextBox ID="TextBox7"
runat="server"
CssClass="textbox"></asp:TextBox>

<asp:RegularExpressionValidator
ID="rev1"
runat="server"
ControlToValidate="TextBox7"
CssClass="error"
ValidationExpression="\w+([-.+']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
ErrorMessage="Invalid Email"/>

</td>
</tr>

<tr>
<td class="label">Phone</td>
<td>

<asp:TextBox ID="TextBox8"
runat="server"
CssClass="textbox"></asp:TextBox>

<asp:RegularExpressionValidator
ID="rev2"
runat="server"
ControlToValidate="TextBox8"
ValidationExpression="^[6-9]\d{9}$"
CssClass="error"
ErrorMessage="Invalid Phone"/>

</td>
</tr>

<tr>
<td class="label">Address</td>
<td>

<asp:TextBox ID="TextBox9"
runat="server"
CssClass="textbox"
TextMode="MultiLine"
Rows="3"></asp:TextBox>

</td>
</tr>

<tr>
<td class="label">Age</td>
<td>

<asp:TextBox ID="TextBox10"
runat="server"
CssClass="textbox"></asp:TextBox>

<asp:RangeValidator
ID="rv1"
runat="server"
ControlToValidate="TextBox10"
MinimumValue="18"
MaximumValue="100"
Type="Integer"
CssClass="error"
ErrorMessage="18-100 only"/>

</td>
</tr>

<tr>
<td class="label">Languages</td>
<td>

<asp:CheckBox ID="CheckBox1"
runat="server"
Text="Telugu"/>

<asp:CheckBox ID="CheckBox2"
runat="server"
Text="English"/>

<asp:CheckBox ID="CheckBox3"
runat="server"
Text="Hindi"/>

</td>
</tr>

<tr>
<td class="label">Country</td>
<td>

<asp:DropDownList ID="DropDownList1"
runat="server"
CssClass="textbox">

<asp:ListItem Value="">--Select Country--</asp:ListItem>
<asp:ListItem>India</asp:ListItem>
<asp:ListItem>Australia</asp:ListItem>
<asp:ListItem>England</asp:ListItem>
<asp:ListItem>New Zealand</asp:ListItem>

</asp:DropDownList>

</td>
</tr>

<tr>
<td colspan="2" align="center">

<asp:Button
ID="Button1"
runat="server"
Text="Register"
CssClass="btn"
OnClick="Button1_Click2"/>

</td>
</tr>

<tr>
<td colspan="2">

<asp:ValidationSummary
ID="ValidationSummary1"
runat="server"
CssClass="error"/>

</td>
</tr>

</table>

</div>

</asp:Content>
