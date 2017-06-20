<%--/*

********** Update Profile ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Update profile
 Task Number: 2.2.2
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to update his details
 Functionality of the module: Users can update his details that were given during registration
 Date last modified: 04/18/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="UpdateProfile.aspx.cs" Inherits="User_UpdateProfile" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



    .style29
    {
        width: 346px;
        text-align: center;
    }
    .style30
    {
            width: 1256px;
            height: 39px;
            text-align: center;
        }
    
        .style14
        {
            height: 39px;
        }
        .style31
    {
            width: 1256px;
            height: 34px;
            text-align: center;
        }
        .style16
        {
            height: 34px;
        }
        .style33
    {
            width: 1256px;
            height: 35px;
            text-align: center;
        }
        .style22
        {
            height: 35px;
        }
        .style35
    {
            width: 1256px;
            height: 37px;
            text-align: center;
        }
        .style24
        {
            height: 37px;
        }
        .style11
        {
            width: 1256px;
            height: 43px;
        text-align: center;
    }
        .style25
        {
            height: 43px;
        }
        .style36
        {
            width: 1256px;
            text-align: center;
        }
    .style32
    {
        width: 1256px;
        height: 38px;
        text-align: center;
    }
        .style26
        {
            width: 1256px;
            height: 32px;
        text-align: center;
    }
        .style27
        {
            height: 32px;
        }
        .style28
        {
            height: 36px;
        }
        .style53{
            margin-left:240px;
        }
        .auto-style1 {
            width: 797px;
            height: 35px;
        }
        .auto-style2 {
            width: 1176px;
            height: 39px;
            text-align: center;
            margin-left: 40px;
        }
        .auto-style3 {
            width: 1176px;
            height: 34px;
            text-align: center;
        }
        .auto-style4 {
            width: 1176px;
            height: 43px;
            text-align: center;
        }
        .auto-style5 {
            width: 1176px;
            height: 35px;
            text-align: center;
        }
        .auto-style6 {
            margin-left: 0px;
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
        .auto-style7 {
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
  
    <table class="style53">
        <tr>
            <td class="style29" colspan="2">
                              <h1 style="font-family: Arial, Helvetica, sans-serif;  font-style: normal; color: #000000; " class="auto-style1">
                    &nbsp;&nbsp;&nbsp;
                    Update Profile</h1><br />
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Label ID="Label4" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="Black"
                 Text="First Name"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="Txt_Fname" runat="server" Width="140px" CssClass="auto-style6"></asp:TextBox>
            </td>
        </tr>
        
       
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label21" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="User Name"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="Txt_Username" runat="server"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style3">
                <asp:Label ID="Label8" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="Black"
                Text="Email Id"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="Txt_Emailid" runat="server" Width="140px"></asp:TextBox>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style4">
                <asp:Label ID="Label14" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="Black"
                Text="Hint Question"></asp:Label>
            </td>
            <td class="style25">
                <asp:DropDownList ID="Dd_Hintques" runat="server" Height="31px" Width="322px">
                    <asp:ListItem> - - SELECT A QUESTION - -</asp:ListItem>
                    <asp:ListItem>What is your first Phone number?</asp:ListItem>
                    <asp:ListItem>What is the name of your first class teacher ?</asp:ListItem>
                    <asp:ListItem>What is your Library card number ?</asp:ListItem>
                    <asp:ListItem>What is Your Favourite TV show?</asp:ListItem>
                    <asp:ListItem>Who is your Favourite Singer?</asp:ListItem>
                    <asp:ListItem>Where was your first schooling done?</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:Label ID="Label16" runat="server" Font-Bold="false" Font-Size="Medium" ForeColor="Black"
                Text="Hint Answer"></asp:Label>
            </td>
            <td class="style22">
                <asp:TextBox ID="Txt_Hintans" runat="server" Width="192px"></asp:TextBox>
            </td>
        </tr>
        
        <tr>
            <td class="style28" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Save Changes" Width="106px" CssClass="auto-style7" Height="28px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%--<asp:Label ID="Label3" runat="server" 
                    Text="Label" Visible="False" Font-Size="Medium" ForeColor="black"></asp:Label>--%>
                &nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="style28" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

