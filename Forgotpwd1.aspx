<%--********** Forgot Password Page ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Forgot Password - Step1
 Task Number: 1.2.1.1
 Supported By: Harish Chunchu
 Postconditions: User must be having difficult in logging in because he forgot his password.
 Functionality of the module: User will be shown a hint question that he has selected when registering. This step1 of forgot password
 Date last modified: 04/18/2017
    --%>
<%@ Page Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="Forgotpwd1.aspx.cs" Inherits="Forgotpwd1" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            width: 536px;
            text-align: left;
            height: 31px;
        }
        .style5
        {
            text-align:center;
            width: 536px;
            height: 48px;
        }
           .style42
        {
            text-align:left;
            width: 536px;
            height: 48px;
        }
           .style40{
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
        .auto-style1 {
            border-left: 1px solid #9c7e31;
            border-right: 1px solid #9c7e31;
            border-top: 1px solid #a88734;
            border-bottom: 1px solid #846a29;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <br />
    <br />
    <br />
    <br />
    <br />
    <br />
   <table class="style4" style="height: 109px; width: 100%;">
        <tr>
        
            <td class="style5" align="right">

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                <asp:Label ID="Label1" runat="server" Text="EMAIL ID" Font-Bold="True" 
                    Font-Names="Arial" Font-Size="Large" ForeColor="Black"></asp:Label>
            </td>
            <td class="style42">
               
                <asp:TextBox ID="TextBox1" runat="server" Width="199px"></asp:TextBox>
                &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter Student Emailid</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="RegularExpressionValidator" ValidationExpression="\w+([-+.']\w+)*@(uhcl\.edu|uh\.edu)" ValidationGroup="a">Valid student address required</asp:RegularExpressionValidator>
                           
                 </td>
        </tr>
        <tr>
            <td class="style11" colspan="2" align="center">

                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Font-Bold="True" Font-Size="Medium" ValidationGroup="a" CssClass="auto-style1" Height="30px" Width="98px" />
              

                &nbsp;</td>
        </tr>
    </table>
    
</asp:Content>

