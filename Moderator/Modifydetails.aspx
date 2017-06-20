<%--/*

********** Modify Ad details ************
 Name of the Developer: Harish Chunchu
 Name of the module: Modify Ad
 Task Number: 3.4.1
 Preconditions: moderator should have already been a registered member and posted an Ad
 Postconditions: moderator should be able to update his Ad
 Functionality of the module: moderator can modify the details about the item he has posted. 
 Date last modified: 04/20/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Modifydetails.aspx.cs" Inherits="Moderator_Modifydetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
        .style12
        {
            width: 100%;
            height: 342px;
        }
        
        .style12
        {
           height: 304px;
            width: 100%;
            margin-left: 280px;
        }
    
        .style17
        {
            width: 454px;
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
            width: 379px;
        }
        .style21
        {
            width: 454px;
            height: 63px;
        }
        .style19
        {
            width: 488px;
            height: 63px;
        }
        .auto-style3 {
            width: 437px;
            height: 50px;
        }
        .auto-style4 {
            width: 488px;
            height: 50px;
        }
        .auto-style5 {
            margin-left: 25px;
        }
        .auto-style6 {
            margin-left: 4px;
        }
        .auto-style7 {
            margin-left: 52px;
        }
        .auto-style8 {
            width: 437px;
            height: 63px;
            padding-top:40px;
        }
        .auto-style9 {
            margin-left: 15px;
        }
        .style40{
             border-left: 1px solid #9c7e31;
            border-right: 1px solid #9c7e31;
            border-top: 1px solid #a88734;
            border-bottom: 1px solid #846a29;
            background: #f0c14b;
            color: #111;
            cursor: pointer;
            display: inline-block;
            padding: 0;
            text-align: center;
            text-decoration: none;
            vertical-align: middle;
            margin-left: 10px;
        
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">

    <table class="style12">
        <tr>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category :" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style4">
                &nbsp; <asp:Label ID="Label4" runat="server" Text="SubCategory :" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" CssClass="auto-style5"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="214px" Width="434px" />
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Price" runat="server" CssClass="auto-style6"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Quantity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                  
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" CssClass="style40" onclick="Button1_Click" 
                    Text="Save Changes" Height="27px" Width="127px" />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Size="Smaller" Text="Label" 
                    Visible="False" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" class="style19" valign="top">
              &nbsp;  
                <asp:Label ID="Label8" runat="server" Text="Posted Date" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                <asp:TextBox ID="Txt_Posteddate" runat="server" CssClass="auto-style7" Width="170px"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
               &nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Posted By" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" CssClass="auto-style9"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

