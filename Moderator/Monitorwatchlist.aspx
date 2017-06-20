<%--

********** Monitor watch list ************
 Name of the Developer: Harish Chunchu
 Name of the module: Monitor watchlist
 Task Number: 3.5
 Preconditions: moderator should have already been a registered member
 Postconditions: moderator should be able to see the count of watchlist users
 Functionality of the module: moderator can view the users who have been reported. 
 Date last modified: 04/27/2017    --%>

<%@ Page Title="UHCL Flea Market" Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Monitorwatchlist.aspx.cs" Inherits="Moderator_Monitorwatchlist" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <h1 style="text-align:center;margin-left:380px;">Monitor Reported Sellers!</h1><br />
    <asp:GridView ID="gvWatchlist" runat="server" AutoGenerateColumns="False" 
        BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" HorizontalAlign="right" BorderWidth="1px" 
        CellPadding="3" CellSpacing="2" Height="174px" Width="476px">
        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
    <Columns>
    
    <asp:BoundField DataField="Posted_by" HeaderText="Posted by" />
     <asp:BoundField DataField="Reported_by" HeaderText="Reported by" />
    <asp:BoundField DataField="Complaint" HeaderText="Reason for reporting" />
    <asp:BoundField DataField="Count" HeaderText="Number of times reported" />

   
    </Columns>
        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
    </asp:GridView>
</asp:Content>

