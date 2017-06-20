<%--/*

********** Modify Ad  ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Modify Ad
 Task Number: 2.4.1
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted an Ad
 Postconditions: User should be able to update his Ad
 Functionality of the module: User can modify the details about the item he has posted, in this module he can view list of items. 
 Date last modified: 04/20/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Modifyad.aspx.cs" Inherits="User_Modifyad" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .style20{
            margin-left:400px;
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
     <br /><br /><br />
     <h1 style="text-align:center;margin-left:380px;">Modify Your Ad</h1>
    <br />
    <asp:GridView ID="gModifyAd" runat="server" AutoGenerateColumns="False" 
        Height="232px" Width="561px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" HorizontalAlign="right" CssClass="style20">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
        <Columns>
            <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
            <asp:BoundField DataField="Title" HeaderText="Title" />
            <asp:BoundField DataField="Price" HeaderText="Price" />
           <asp:BoundField DataField="Phone_Number" HeaderText="Contact" />
            <asp:BoundField DataField="Description" HeaderText="Description" />
            <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Modifydetails.aspx?AddId={0}" 
                HeaderText="Modify Data" Text="Modify" />
        </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

