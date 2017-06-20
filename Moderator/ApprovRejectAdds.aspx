<%--/*

********** Approve/Reject Ad's ************
 Name of the Developer: Harish chunchu
 Name of the module: Manage Ad's
 Task Number: 3.1
 Preconditions: moderator should have already been a registered member and have some items to approve or reject 
 Postconditions: moderator should be able to either approve/reject the item
 Functionality of the module: moderator can either approve the item or reject the item posted by the users
 Date last modified: 04/25/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="ApprovRejectAdds.aspx.cs" Inherits="Moderator_ApprovRejectAdds" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <style type="text/css">
       .style57{
           margin-left:400px;
       }
       .style58{
           margin-left:300px;
           font-family:'Trebuchet MS', 'Lucida Sans Unicode', 'Lucida Grande', 'Lucida Sans', Arial, sans-serif;
           font-size:x-large;
        
       }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <h1 style="text-align:center;margin-left:300px;">Approve/Reject Ad's</h1>
    
    <br />
    <asp:Label ID="approve" CssClass="style58" runat="server" Visible="false"></asp:Label>
        <asp:GridView ID="gvAddDetails" runat="server" AutoGenerateColumns="False" 
            Height="197px" BackColor="#DEBA84" BorderColor="#DEBA84" 
        BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" CssClass="style57" Width="415px">
            <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />

            <Columns>
                <asp:BoundField DataField="Adv_id" HeaderText="Add Id" />
                <asp:BoundField DataField="Title" HeaderText="Title" />
                <asp:BoundField DataField="Price" HeaderText="Price" />
               <%-- <asp:BoundField DataField="Email_id" HeaderText="Email_Id" />--%>
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                    DataNavigateUrlFormatString="Viewdetails.aspx?AddId={0}" 
                    HeaderText="View Details" Text="View" />
            </Columns>
            <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
            <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
        </asp:GridView>
        </asp:Content>

