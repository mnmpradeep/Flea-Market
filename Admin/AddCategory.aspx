<%--/*

********** Add new category  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.1.1
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add new category in the website
 Functionality of the module: admin can access the quick links in the homepage and use add category module to add new list 
 Date last modified: 04/27/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="AddCategory.aspx.cs" Inherits="Admin_AddCategory" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            height: 85px;
        }
    
    .style12
    {
        width: 101%;
    }
    .style14
    {
        height: 34px;
        width: 437px;
        padding-left:320px;
    }
    .style13
    {
        height: 34px;
        padding-left:520px;
    }
        .auto-style2 {
            width: 676px;
            margin-left:135px;
        }
        .auto-style3 {
            height: 34px;
            width: 472px;
            padding-left: 320px;
        }
        .auto-style4 {
            margin-left: 0px;
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
   <h1 style="margin-left:400px;text-align:center">Add a new category!</h1>

    <br />
    <table class="auto-style2">
        <tr align="right">
            <td align="right" class="auto-style3">
              
                <asp:Label ID="Label3" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Black" Text="Add Category -" Width="150px"></asp:Label>
            </td>
            <td align="center" class="style12">
                <asp:TextBox ID="Txt_Adcategory" runat="server" Font-Bold="True" 
                    Font-Size="Large"></asp:TextBox>
            </td>
        </tr>
        
        <tr align="right">
            <td align="left"class="style13" colspan="2">
                <asp:Label ID="Label4" runat="server" Font-Bold="False" Font-Size="Large" 
                    ForeColor="Black" Text="Label" Visible="False"></asp:Label>
               
                <asp:Button ID="Button1" runat="server" Font-Size="Large" 
                    onclick="Button1_Click" width="106px" Text="Submit" CssClass="auto-style4" Height="31px" />
            </td>
        </tr>
    </table>
</asp:Content>

