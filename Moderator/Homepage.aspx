<%--/*

********** Homepage of moderator ************
 Name of the Developer: Harish Chunchu
 Name of the module: Homepage
 Task Number: 3.0
 Preconditions: moderator should have already been a registered member 
 Postconditions: moderator should be able to view his homepage on the browser
 Functionality of the module: moderator can access the quick links in the homepage 
 Date last modified: 04/22/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Moderator_Homepage" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style40{
            padding-bottom:100px;
        }
    </style>

</asp:Content>
<asp:Content ID="content" ContentPlaceHolderID="content" runat="server">
    <marquee BEHAVIOR=ALTERNATE scrollamount="2" style="width: 650px; color:forestgreen; font-size: 18px;"> Access Quick Links </marquee>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
    <p>
        
        <br />
    </p>
    <p>
    </p>
</asp:Content>

