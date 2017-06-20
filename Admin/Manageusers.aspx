<%--/*

********** manage users  ************
 Name of the Developer: Harish Chunchu
 Name of the module: manage users
 Task Number: 4.1.3
  Supported Developer: Pradeep Mahabhashyam
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add/delete the users from the website
 Functionality of the module: admin can access the quick links in the homepage and use manage user option to add/delete the  users 
 Date last modified: 04/24/2017    */--%>

<%@ Page Title="UHCL Flea Market" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Manageusers.aspx.cs" Inherits="Admin_Manageusers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
       .style57{
           margin-left:350px;
       }
         .style0{
            margin-left: 600px;
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
            margin-left: 600px;
           
        }
        .auto-style1 {
            margin-left: 600px;
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
            margin-left: 620px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <h1 style="margin-left:400px;text-align:center">Manage Users!</h1>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Add an User" PostBackUrl="Registrationadmin.aspx" Width="119px" CssClass="auto-style1" Height="29px" />

    <br /><br /><br />
    <asp:GridView ID="gvManageUser" runat="server" AutoGenerateColumns="False" 
        Height="193px" Width="631px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="style57" >
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
                <asp:BoundField DataField="First_name" HeaderText="First name" />
            <asp:BoundField DataField="User_id" HeaderText="User Id" />
            <asp:BoundField DataField="Email_id" HeaderText="Email Id" />
            
            <%--<asp:HyperLinkField DataNavigateUrlFields="Email_id" 
                DataNavigateUrlFormatString="Registrationadmin.aspx?Contact={0}"
                 HeaderText="Add user" Text="Add" />--%>
            <asp:HyperLinkField DataNavigateUrlFields="Email_id" 
                DataNavigateUrlFormatString="Deleteuser.aspx?EmailId={0}" 
                HeaderText="Delete" Text="Delete" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

