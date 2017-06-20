<%--/*

********** show interest ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Show interest
 Task Number: 2.1.1.1
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to send a comment to the seller
 Functionality of the module: User can use the contact seller option to contact the seller by sending a comment 
 Date last modified: 04/18/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="ShowInterest.aspx.cs" Inherits="User_ShowInterest" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


        .style13
        {
            width: 100%;
            height: 402px;
            color:black;
            margin-left:280px;
        }
        .style15
        {
            width: 405px;
        }
        .style16
        {
            width: 405px;
            height: 110px;
        }
        .style17
        {
            height: 110px;
        }
        .auto-style1 {
            width: 75%;
            height: 395px;
            color: black;
            margin-left: 380px;
        }
        .auto-style2 {
            width: 303px;
            font-weight:bold;
        }
        .auto-style3 {
            width: 303px;
            height: 110px;
            font-weight:bold;
        }
        .auto-style4 {
            width: 240px;
            color:brown;
            font-weight:bold;
        }
        .auto-style5 {
            height: 110px;
            width: 240px;
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
        .auto-style6 {
            margin-top: 18px;
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
    <br /><br /><br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Adv Id"></asp:Label>
                &nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lb_advid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Posted By"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style4">
                <asp:Label ID="lb_pb" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Text="First Name "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td class="auto-style4">
                <asp:Label ID="lb_fn" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Text="Email Id"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style4">
                <asp:Label ID="lb_eid" runat="server" Text="Label"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Text="Comment"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="auto-style5">
                <asp:TextBox ID="Txt_Comment" runat="server" Height="65px" TextMode="MultiLine" MaxLength="300" Rows="6"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Txt_Comment" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter few words</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    PostBackUrl="~/User/ShowInterest.aspx" Text="Submit" ValidationGroup="a" CssClass="auto-style6" Height="27px" Width="70px" />
               
            </td>
        </tr>
    </table>
</asp:Content>

