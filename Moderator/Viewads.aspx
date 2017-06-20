<%--/*

********** View Ad's ************
 Name of the Developer:Harish Chunchu
 Name of the module: view Ad's
 Task Number: 3.4
 Supported By: Ramya Patchikura
 Preconditions: moderator should have already been a registered member 
 Postconditions: moderator should be able to view the details of the items
 Functionality of the module: moderator can view the details of the Ad's that are posted by other sellers
 Date last modified: 04/25/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master"AutoEventWireup="true" CodeFile="Viewads.aspx.cs" Inherits="Moderator_Viewads" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style47{
            margin-left:260px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <h1 style="text-align:center;margin-left:300px;">View Users' Ad</h1>
    <asp:GridView ID="gvViewAd" runat="server" AutoGenerateColumns="False" 
        Height="220px" Width="595px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" HorizontalAlign="right" CellPadding="3" CellSpacing="2" 
        CssClass="style47">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
           <%-- <asp:BoundField DataField="Email_id" HeaderText="Email Id" />--%>
            <asp:BoundField DataField="Description" HeaderText="Description" />
             <asp:BoundField DataField="Phone_Number" HeaderText="Contact" />
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Viewadsdetails.aspx?AddId={0}" 
                HeaderText="Detaild View" Text="View" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

