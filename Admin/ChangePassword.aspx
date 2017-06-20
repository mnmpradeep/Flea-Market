<%--/*

********** change password  ************
 Name of the Developer: Harish Chunchu
 Name of the module: change password
 Task Number: 4.2.3
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to change his password
 Functionality of the module: admin can change his password in this module 
 Date last modified: 04/27/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Admin_ChangePassword" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style18
    {
            width: 754px;
            height: 38px;
        }
    .style14
    {
        width: 488px;
        height: 38px;
       
    }
        .style22
        {
            width: 754px;
            height: 45px;
        }
        .style23
        {
            width: 488px;
            height: 38px;
        }
        .auto-style1 {
            margin-left: 0px;
        }
        .style40{
             margin-left: 0px;
             margin-top: 0px;
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
            margin-left: 185px;
        }
        .auto-style2 {
            margin-left: 0px;
            margin-top: 0px;
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
            margin-left: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
<h1 style="margin-left:400px;text-align:center">Change Your Password!</h1>
    <table align="right" cellpadding="0" cellspacing="0" class="style4" style="height: 178px">
        <tr align="center">
            <td align="right"  class="style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="OLD PASSWORD"></asp:Label>
                </td>
            <td  class="style23">
                &nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_oldpwd" runat="server" TextMode="Password"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label2" runat="server" Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
        <tr align="center">
            <td align="right" class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="NEW PASSWORD"></asp:Label>
            </td>
            <td align="center" class="style14">
                <asp:TextBox ID="Txt_newpwd" runat="server" TextMode="Password" CssClass="auto-style1"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td align="right" class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td align="center" class="style14">
                <asp:TextBox ID="Txt_Cnfrmpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <asp:CompareValidator ID="CV" runat="server" ControlToCompare="Txt_newpwd" 
            ControlToValidate="Txt_Cnfrmpwd" Operator="Equal" Text="Not Matching">
        </asp:CompareValidator>
        <tr align="center">
            <td colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="False" 
                    onclick="Button1_Click" CssClass="auto-style2" style="text-align: center" Text="Save Changes" 
                    Width="138px" Height="28px" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

