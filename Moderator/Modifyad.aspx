<%--/*

********** Modify Ad  ************
 Name of the Developer:  Harish Chunchu
 Name of the module: Modify Ad
 Task Number: 3.4.1
 Supported By: Pradeep Mahabhashyam
 Preconditions: moderator should have already been a registered member and posted an Ad
 Postconditions: moderator should be able to update his Ad
 Functionality of the module: moderator can modify the details about the item he has posted, in this module he can view list of items. 
 Date last modified: 04/20/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Modifyad.aspx.cs" Inherits="Moderator_Modifyad" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20{
            margin-left:380px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 style="text-align:center;margin-left:380px;">Modify Your Ad</h1><br />
    <asp:GridView ID="gvModifyAd" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" HorizontalAlign="right" CssClass="style20" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Height="174px" Width="476px">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <Columns>
    <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
    <asp:BoundField DataField="Title" HeaderText="Title" />
    <asp:BoundField DataField="Price" HeaderText="Price" />
   
    <asp:BoundField DataField="Description" HeaderText="Description" />
    <asp:HyperLinkField HeaderText="Modify Data" DataNavigateUrlFields="Adv_id" DataNavigateUrlFormatString="Modifydetails.aspx?AddId={0}" Text="Modify" />
    </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

