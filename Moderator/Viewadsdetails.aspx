<%--/*

********** View Ad's Details ************
 Name of the Developer: Harish Chunchu
 Name of the module: view Ad's details
 Task Number: 3.3
 Preconditions: moderator should have already been a registered member with their student email address
 Postconditions: moderator should be able to view the Ad details of the items posted by others
 Functionality of the module: moderator can view the details of the Ad's that are posted by others to Approve/Reject
 Date last modified: 04/24/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Viewadsdetails.aspx.cs" Inherits="Moderator_Viewadsdetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            height: 32px;
        }
    
        .style12
        {
            width: 100%;
            height: 463px;
            margin-left:250px;
        }
        .style17
        {
            width: 435px;
        }
        .style14
        {
            width: 488px;
        }
        .style13
        {            height: 179px;
        }
        .style15
        {
            width: 100%;
            height: 225px;
        }
        .style16
        {
            width: 260px;
        }
        .style22
    {
        height: 68px;
    }
        .style21
        {
            height: 63px;
        }
         .style50{
            color:green;
            font-weight:bold;
            font-size:medium;
        }
        .auto-style1 {
            width: 356px;
        }
        .auto-style2 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 27px;
        }
        .auto-style3 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 9px;
        }
        .auto-style4 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 11px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    
    <table class="style12">
        <tr>
            <td class="auto-style1">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style14">
               <asp:Label ID="Label4" runat="server" Text="SubCategory :" ForeColor="Black"  Font-Bold="True" 
                    Font-Size="Medium" ></asp:Label>
                &nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" BorderStyle="None" CssClass="auto-style2" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="278px" Width="372px" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" BorderStyle="None" CssClass="auto-style3" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" BorderStyle="None" CssClass="auto-style4" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                      <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact:" Font-Bold="true" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_phn" runat="server" CssClass="style50" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                          &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Quantity" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" Height="66px" 
                                TextMode="MultiLine" CssClass="style50" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Posted Date :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                <asp:Label ID="Label9" runat="server" Text="Posted By :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>

