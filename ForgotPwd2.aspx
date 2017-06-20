<%--********** Forgot Password Page ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Forgot Password - Step2
 Task Number: 1.2.1.2
 Supported By: Harish Chunchu
 Postconditions: User must be having difficult in logging in because he forgot his password.
 Functionality of the module: User will be shown the answer for the hint question that he has selected when registering. This step2 of forgot password
 Date last modified: 04/18/2017
    --%>

<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="ForgotPwd2.aspx.cs" Inherits="ForgotPwd2" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style12
        {
            width: 486px;
            height: 35px;
        }
        .style13
        {
            width: 376px;
        }
        .style40{
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
        .auto-style1 {
            width: 486px;
            height: 15px;
        }
    </style>
    </asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<br />
    <br />
    <br />  <br />
    <br />
  <table class="style4" style="height: 168px; margin-left:205px; width: 105%">
        <tr>
            <td class="style13">
                <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black" Text="Hint Question"></asp:Label>
            </td>
            <td class="style14">
                <asp:Label ID="lbl_HintQue" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Large" 
                    ForeColor="Black" Text="Hint Answer"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="TextBox1" runat="server" Height="22px" Width="145px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style1" colspan="2">
               
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="Submit" 
                    Font-Bold="True" Font-Size="Medium" Height="34px" Width="101px" CssClass="style40" />
                &nbsp;<asp:Label ID="lbl_Msg" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="#FF3399"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style13">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Your Password Is"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="TextBox2" runat="server" Height="24px" Width="142px"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

