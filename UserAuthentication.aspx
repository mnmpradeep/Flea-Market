<%-- 
 
********** Login Main Page ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Login
 Task Number: 1.2
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should have already been a registered member with their student email address.
 Postconditions: User should be able to view his home page
 Functionality of the module: Login page of the website, where users can login using their credentials
 Date last modified: 04/23/2017   --%>

<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="UserAuthentication.aspx.cs" Inherits="UserAuthentication" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style16
        {
            height: 29px;
            padding-top:15px;

        }
        .style11
        {
            width: 232px;
            height: 29px;
            padding-left:11px;
        }
        
        .style5
        {
            width: 100%;
            height: 1px;
        }
        .style20
        {
            width: 237px;
            height: 32px;
        }
        .style19
        {
            width: 108px;
            height: 74px;
        }
        .style21
        {
            width: 102px;
            height: 32px;
            
        }
        .style22
        {
            width: 23px;
            height: 29px;
        }
        .style26{
            width:230px;
            height:29px;
            padding-top:27px;
            padding-left:20px;
            

        }
       .style27{
           display: block;
    border-radius: 4px;
    border: 1px #ddd solid;
    background-color: #fff;


       }
       .style28{
           Width:120px;
           
           background: #f0c14b;
    border-color: #a88734 #9c7e31 #846a29;
    color: #111;
    border-style: solid;
    border-width: 1px;
    cursor: pointer;
    display: inline-block;
    padding: 0;
    text-align: center;
    text-decoration: none!important;
    vertical-align: middle;
                        
       }
        .auto-style1 {
            width: 179px;
            height: 29px;
        }
        .auto-style2 {
            width: 179px;
            height: 32px;
        }
        .auto-style3 {
            margin-left: 0px;
        }
        .auto-style4 {
            margin-left: 9px;
        }
        .auto-style5 {
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
        .auto-style6 {
            margin-left: 14px;
        }
        .auto-style7 {
            display: block;
            border-radius: 4px;
            border: 1px #1020ea solid;
            background-color: #fff;
            height: 217px;
            width: 450px;
            margin-left: 354px;
        }
        .auto-style8 {
            margin-left: 355px;
        }
    </style>
   
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <%--<p>
        <br />
    </p>--%>
    <br /><br /><br /><br />
    <h3 style="text-align:left" class="auto-style8" >Use Your Student Email Address to Login</h3><br />
    <table align="center" class="auto-style7">
        <tr>
            <td align="right" class="auto-style1">
               
                <asp:Label ID="Label2" runat="server" Text="Email ID :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td align="right" class="style26">
                <asp:TextBox ID="Txt_Userid" runat="server" ValidationGroup="a" CssClass="auto-style3" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="Txt_Userid" ErrorMessage="Must Enter The Email Address" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator
        id="regEmail"
        ControlToValidate="Txt_Userid"
        Text="(Invalid email, Please enter your student Email ID)"
        ValidationExpression="\w+([-+.']\w+)*@(uhcl\.edu|uh\.edu)"
        Runat="server" /> 
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style1">
               
                <asp:Label ID="Label3" runat="server" Text="Password :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style11">
                <asp:TextBox ID="Txt_Pwd" runat="server" TextMode="Password" 
                    ValidationGroup="a" CssClass="auto-style4"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="Txt_Pwd" ErrorMessage="Must Enter The Password" 
                    ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="center" class="style16" colspan="2">
                <asp:Button ID="Button1" runat="server" CssClass="auto-style5" ValidationGroup="a" Height="28px" 
                    onclick="Button1_Click" Text="Sign In"   /><br />
                &nbsp;&nbsp; <asp:Label ID="lbl_AdvId" runat="server" Visible="False" 
                    ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="LBLVALIDATION" runat="server" Enabled="False" 
                    Text="LBLVALIDATION" Visible="False" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td align="center" class="auto-style2">
                <asp:LinkButton ID="LinkButton12" runat="server" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="blue" PostBackUrl="~/Registration.aspx">New User?</asp:LinkButton>
            </td>
            <td align="center" class="style21">
                &nbsp;<asp:LinkButton ID="LinkButton11" runat="server" 
                    PostBackUrl="~/Forgotpwd1.aspx" Font-Bold="true" Font-Size="Medium" 
                    ForeColor="blue" Width="149px" CssClass="auto-style6">Forgot Password?</asp:LinkButton>
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

