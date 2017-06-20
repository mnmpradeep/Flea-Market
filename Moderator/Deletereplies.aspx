<%--/*

********** delete replies ************
 Name of the Developer: Harish Chunchu
 Name of the module: delete replies
 Task Number: 3.4.1
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to delete the comments that buyer has posted for the items
 Functionality of the module: Moderator can delete the comments of the buyer which are abusive
 Date last modified: 04/21/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Deletereplies.aspx.cs" Inherits="Moderator_Deletereplies" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">




        .style13
        {
            width: 100%;
            height: 402px;
            margin-left:250px;
        }
        .style15
        {
            width: 342px;
        }
        .style16
        {
            width: 342px;
            height: 47px;
        }
        .style17
        {
            height: 47px;
        }
        .style18
        {
            height: 42px;
        }
        .auto-style1 {
            width: 429px;
        }
        .auto-style2 {
            width: 429px;
            height: 47px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
 
    <table class="style13">
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Adv Id"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:Label ID="lb_advid" runat="server" Font-Bold="True"  
                    Text="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Posted By" ></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Label ID="lb_pb" runat="server" Font-Bold="True"  
                    Text="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="First Name "></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
            <td>
                <asp:Label ID="lb_fn" runat="server" Font-Bold="True" 
                    Text="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
       
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Email Id"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td>
                <asp:Label ID="lb_eid" runat="server" Font-Bold="True" 
                    Text="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Comment"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
            <td class="style17">
                <asp:Label ID="Lb_cmmnt" runat="server" Font-Bold="True"  
                    Text="Label" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style18" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Size="Medium" 
                    onclick="Button1_Click" Width="90px" Height="25px" ValidationGroup="a" BackColor="orange" BorderColor="Wheat" BorderStyle="Ridge"  OnClientClick="return confirm('Are you sure you want delete');"  Text="Delete" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="True" Font-Size="Medium" 
                    Text="Label" Visible="False"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

