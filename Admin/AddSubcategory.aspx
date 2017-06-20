<%--/*

********** Add new sub-category  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.1.2
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add new sub-category in the website
 Functionality of the module: admin can access the quick links in the homepage and use add sub-category module to add new list 
 Date last modified: 04/27/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddSubcategory.aspx.cs" Inherits="Admin_AddSubcategory" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
    .style12
    {
        width: 500px;
    }
    
        .style12
        {
            height: 32px;
            padding-left:400px;
        }
    
    .style14
    {
        width: 347px;
            height: 34px;
        }
        .style15
        {
            width: 347px;
            height: 36px;
        }
        .style16
        {
            height: 36px;
        }
        .style17
        {
            height: 34px;
        }
        .auto-style1 {
            width: 616px;
            height: 212px;
            padding-left: 400px;
        }
        .auto-style2 {
            margin-left: 45px;
        }
        .auto-style3 {
            width: 360px;
            height: 34px;
        }
        .auto-style4 {
            width: 360px;
            height: 36px;
        }
        .auto-style5 {
            margin-left: 46px;
        }
        .auto-style6 {
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
  <h1 style="margin-left:400px;text-align:center">Add a new Sub-Category!</h1>
    <br />
    <table class="auto-style1">
        <tr>
            <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Black" Text="Category"></asp:Label>
            </td>
            <td class="style17">
                <asp:DropDownList ID="Dd_category" runat="server" Font-Bold="False" 
                    Font-Size="Large" Width="186px" CssClass="auto-style2" Height="26px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Black" Text="Add Subcategory"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="Txt_Subcategory" runat="server" Font-Bold="False" 
                    Font-Size="Large" CssClass="auto-style5" Height="22px" Width="179px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td align="center"class="style13" colspan="2">
                
                <asp:Button ID="Button1" runat="server" Font-Bold="False" Font-Size="Large" 
                    onclick="Button1_Click" style="text-align: center" Text="Submit" CssClass="auto-style6" Height="32px" Width="95px" />
              
            </td>
        </tr>
    </table>
</asp:Content>

