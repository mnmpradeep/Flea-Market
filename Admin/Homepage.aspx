<%--/*

********** Homepage of admin  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 4.0
 Postconditions:admin should be able to view his homepage on the browser
 Functionality of the module: admin can access the quick links in the homepage 
 Date last modified: 04/27/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Admin_Homepage" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <marquee BEHAVIOR=ALTERNATE scrollamount="2" style="width: 650px; color:forestgreen; font-size: 18px;"> Access Quick Links </marquee>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <p>
        <br />
    </p>
    <p>
    </p>
</asp:Content>

