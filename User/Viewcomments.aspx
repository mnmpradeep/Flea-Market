<%--/*

********** View Comments ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view comments
 Task Number: 2.4.4
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted atleast one item
 Postconditions: User should be able to view the comments that buyer has posted for the item that he has posted
 Functionality of the module: Users can view the comments of the buyer that was posted
 Date last modified: 04/18/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Viewcomments.aspx.cs" Inherits="User_Viewcomments" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20{
            margin-left:400px;
            
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <br /><br /><br />
     <h1 style="text-align:center;margin-left:380px;">View Comments to Your Ad's</h1>
    <br />
    <asp:GridView ID="gvComments" runat="server" AutoGenerateColumns="False" 
        Height="205px" Width="455px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" HorizontalAlign="Right" ForeColor="Black" CssClass="style20">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_Id" HeaderText="Adv Id"  />
            <asp:BoundField DataField="Posted_By" HeaderText="Posted By" />
            <asp:BoundField DataField="Reply_By" HeaderText="Reply By" />
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Viewcommentdetails.aspx?Adv_id={0}" 
                HeaderText="View Details" Text="View" />
            <asp:HyperLinkField DataNavigateUrlFields="Reply_Id" 
                DataNavigateUrlFormatString="Deletecomments.aspx?Reply_Id={0}" 
                HeaderText="Delete" Text="Delete" />
        </Columns>
         <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

