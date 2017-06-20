<%--/*

********** View Posts ************
 Name of the Developer: Harish Chunchu
 Name of the module: view posts
 Task Number: 3.4.3
 Preconditions: moderator should have already been a registered member and posted atleast one item
 Postconditions: moderator should be able to view the details of the items he has posted
 Functionality of the module: moderator can view the list of the items that he has posted
 Date last modified: 04/20/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="viewmyposts.aspx.cs" Inherits="Moderator_viewmyposts" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
        .style20{
            margin-left:380px;
            
        }
         </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 style="text-align:center;margin-left:380px;">Your Ad's</h1>
    <br />
    <asp:GridView ID="gvMyPosts" runat="server" AutoGenerateColumns="False" 
        Height="192px" Width="455px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" HorizontalAlign="right" CssClass="style20" CellSpacing="2">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
            <%--<asp:BoundField DataField="Email_id" HeaderText="Email Id" />--%>
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:BoundField DataField="Days_Left" HeaderText="No Of Days Left"/>
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Viewmypostdetails.aspx?AddId={0}" 
                HeaderText="Detaild View" Text="View" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
    &nbsp; 
</asp:Content>

