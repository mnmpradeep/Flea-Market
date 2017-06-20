<%--/*

********** Delete Ad  ************
 Name of the Developer: Harish Chunchu
 Name of the module: Delete Ad details
 Task Number: 3.2
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to delete the Ad's of the users
 Functionality of the module: Moderator can view and delete the Ad's 
 Date last modified: 04/24/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Deletead.aspx.cs" Inherits="Moderator_Deletead" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <h1 style="text-align:center;margin-left:300px;">Delete Users' Ad</h1>
    <asp:GridView ID="gvDeleteAd" runat="server" AutoGenerateColumns="False" 
        Height="193px" Width="584px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="Right" CellSpacing="2" >
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
             <asp:BoundField DataField="Phone_Number" HeaderText="Contact" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Deleteaddetails.aspx?AddId={0}" 
                HeaderText="Delete data" Text="Details" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

