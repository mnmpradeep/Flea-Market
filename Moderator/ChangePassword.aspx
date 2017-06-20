<%--/*

********** Change Password ************
 Name of the Developer: Harish chunchu
 Name of the module: change password
 Task Number: 3.2.3
 Preconditions: moderator should have already been a registered member 
 Postconditions: moderator should be able to change the password
 Functionality of the module: moderator can change the password of his account
 Date last modified: 04/15/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="Moderator_ChangePassword" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

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
        .style41{
              margin-left: 340px;
            margin-top: 0px;
        }
        .auto-style1 {
            margin-left: 26px;
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
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 style="margin-left:400px;text-align:center">Change Your Password!</h1>
    <table align="right" cellpadding="0" cellspacing="0" class="style41" style="height: 178px">
        <tr align="center">
            <td align="right" class="style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="OLD PASSWORD"></asp:Label>
                &nbsp;</td>
            <td class="style23">
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
            <td  align="center" class="style14">
                <asp:TextBox ID="Txt_newpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr align="center">
            <td align="right" class="style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="CONFIRM PASSWORD"></asp:Label>
            </td>
            <td  align="center"class="style14">
                <asp:TextBox ID="Txt_Cnfrmpwd" runat="server" TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <asp:CompareValidator ID="CV" runat="server" ControlToCompare="Txt_newpwd" 
            ControlToValidate="Txt_Cnfrmpwd" Operator="Equal" Text="Not Matching">
        </asp:CompareValidator>
        <tr align="center">
            <td align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="Medium" 
                    onclick="Button1_Click" style="text-align: center" Text="Save Changes" 
                    Width="157px" CssClass="auto-style1" Height="30px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="Label" Visible="False" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

