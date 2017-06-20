<%--/*

********** View replies ************
 Name of the Developer: Harish Chunch
 Name of the module: view replies
 Task Number: 3.3
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to view the comments that buyer has posted for the items
 Functionality of the module: Moderator can view the comments of the buyer
 Date last modified: 04/21/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="viewreplys.aspx.cs" Inherits="Moderator_viewreplys" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
     <h1 style="text-align:center;margin-left:300px;">Manage Users' Replies</h1>
    <asp:GridView ID="gvReplies" runat="server" AutoGenerateColumns="False" 
        Height="133px" Width="579px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" HorizontalAlign="Right">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_Id" HeaderText="Adv Id" />
            <asp:BoundField DataField="Posted_By" HeaderText="Posted By" />
            <asp:BoundField DataField="Reply_By" HeaderText="Reply By" />
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Viewreplydetails.aspx?Adv_id={0}" 
                HeaderText="View Details" Text="View" />
            <asp:HyperLinkField DataNavigateUrlFields="Reply_Id" 
                DataNavigateUrlFormatString="Deletereplies.aspx?Reply_Id={0}" 
                HeaderText="Delete" Text="Delete" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    &nbsp;
</asp:Content>

