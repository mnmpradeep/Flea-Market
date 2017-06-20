<%-- 
 
********** Login Main Page for viewing items ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Login
 Task Number: 1.1.1
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should have already been a registered member with their student email address, if he is not a member he can register
 Postconditions: User should be able to view the item he has requested for
 Functionality of the module: Login page of the website, where users can login using their credentials
 Date last modified: 04/23/2017   --%>

<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            width: 100%;
            height: 1px;
        }
        .style11
        {
            width: 102px;
            height: 29px;
            padding-top:20px;
        }
        .style36{
             width: 102px;
            height: 29px;
            padding-top:5px;
            padding-left:10px;
        }
        .style14
        {
            width: 133px;
            height: 35px;
        }
        .style15
        {
            width: 102px;
            height: 35px;
        }
        .style16
        {
            height: 29px;
        }
        .style18
        {
            width: 102px;
        }
        .style19
        {
            width: 108px;
            height: 74px;
        }
        .style20
        {
            width: 133px;
        }
       
        .auto-style1 {
            height: 29px;
            width: 179px;
            padding-top:10px;
        }
        .auto-style2 {
            width: 179px;
        }

        .auto-style3 {
            display: block;
            border-radius: 4px;
            height: 216px;
            width: 450px;
            border: 1px solid #1020ea;
            margin-left: 354px;
            background-color: #fff;
        }
        .style3{
           text-align:left;
           margin-left:350px;
        }
    .auto-style4 {
        margin-top: 18px;
        border-left: 1px solid #9c7e31;
            border-right: 1px solid #9c7e31;
            border-top: 1px solid #a88734;
            border-bottom: 1px solid #846a29;
            Width: 120px;
            background: #f0c14b;
            color: #111;
            cursor: pointer;
            display: inline-block;
            padding: 0;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            margin-left: 10px;
    }
    .auto-style5 {
        margin-left: 37px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br /><br /><br /><br />
    <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                    Font-Names="Times New Roman" Font-Size="Medium" ForeColor="Red" 
                    Text="To Know More Details You Need To Login or Register" CssClass="style3"></asp:Label>
    <br /><br />
    <table align="left" class="auto-style3" >
        
        <tr>
            <td align="right" class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="Email ID :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="style11">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txt_Userid" ErrorMessage="Must Enter The Email Address" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                <asp:TextBox ID="Txt_Userid" runat="server" ValidationGroup="a"></asp:TextBox>
                 <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="Txt_Userid"
        Text="Invalid email"
        ValidationExpression="\w+([-+.']\w+)*@(uhcl\.edu|uh\.edu)"
        Runat="server" /> 
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Password :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="style36">
                <asp:TextBox ID="Txt_Pwd" runat="server" TextMode="Password" 
                    ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txt_Pwd" ErrorMessage="Must Enter The Password" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="left" class="style16" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Height="28px" 
                    onclick="Button1_Click" ValidationGroup="a"  Text="Log In" Width="89px" Font-Bold="True" 
                    Font-Size="Medium" CssClass="auto-style4" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp; <asp:Label ID="lbl_AdvId" runat="server" Visible="false"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="LBLVALIDATION" runat="server" Enabled="False" 
                    Text="LBLVALIDATION" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr>
            <td align="center" class="auto-style2">
                <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                    Font-Size="Large" ForeColor="Black" PostBackUrl="~/Registration.aspx">New User?</asp:LinkButton>
            </td>
            <td align="center" class="style18">
                &nbsp;<asp:LinkButton ID="LinkButton11" runat="server" 
                    PostBackUrl="~/Forgotpwd1.aspx" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Width="149px" CssClass="auto-style5">Forgot Password?</asp:LinkButton>
            </td>
        </tr>
        <tr>
            <td class="style19" colspan="2">
                <asp:ValidationSummary ID="ValidationSummary1" runat="server" 
                    ShowMessageBox="True" ShowSummary="False" ValidationGroup="a" 
                    Height="39px" Width="537px" />
            </td>
        </tr>
        </table>
</asp:Content>

