<%--/*

********** Change Password ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: change password
 Task Number: 2.2.3
 Preconditions: User should have already been a registered member with their student email address 
 Postconditions: User should be able to change the password
 Functionality of the module: Users can change the password of his account
 Date last modified: 04/15/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="User_ChangePassword" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style22
        {
            width: 754px;
            height: 45px;
        }
        .style23
        {
            width: 688px;
            height: 45px;
        }
    
    .style18
    {
            width: 754px;
            height: 38px;
        }
    .style14
    {
        width: 688px;
        height: 38px;
    }
        .auto-style1 {
            width: 78%;
            height: 196px;
            margin-left:270px;
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
        .auto-style2 {
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
            margin-left: 20px;
            margin-top: 10px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
    
    <table  cellpadding="0" cellspacing="0" class="auto-style1">
         <tr>
            <td class="style29" colspan="2">
               
                <h1 style="font-family: Arial, Helvetica, sans-serif; text-align:center; font-style: normal; color: #000000; ">
                    &nbsp;&nbsp;&nbsp;
                    Change Your Password</h1><br />
            </td>
        </tr>
        <tr align="center">
            <td class="style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="OLD PASSWORD"></asp:Label>
                &nbsp;</td>
            <td class="style23">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_oldpwd" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False" 
                    ForeColor="White"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="NEW PASSWORD"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="Txt_newpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="Txt_Cnfrmpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <asp:CompareValidator ID="CV" runat="server" ControlToCompare="Txt_newpwd" 
            ControlToValidate="Txt_Cnfrmpwd" Operator="Equal" Text="Not Matching">
        </asp:CompareValidator>
        <tr align="center">
            <td colspan="2">
                
                <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="Medium" 
                    onclick="Button1_Click" style="text-align: center" Text="Save" 
                    Width="72px" CssClass="auto-style2" Height="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" 
                    ForeColor="black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

