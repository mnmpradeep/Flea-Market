<%--/*

********** Delete Ad details ************
 Name of the Developer: Harish Chunchu
 Name of the module: Delete Ad details
 Task Number: 3.2
 Supported By: Pradeep Mahabhashyam
  Postconditions: Moderator should be able to delete the Ad's of the users
 Functionality of the module: Moderator can delete the Ad's along with the details of the item
 Date last modified: 04/24/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Deleteaddetails.aspx.cs" Inherits="Moderator_Deleteaddetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    

        .style12
        {
            width: 100%;
            height: 342px;
        }
        
        .style12
        {
            height: 32px;
            margin-left: 250px;
        }
    

        .style17
        {
            width: 481px;
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
            width: 421px;
        }
        .style21
        {
            width: 481px;
            height: 63px;
        }
        .style19
        {
            width: 488px;
            height: 63px;
        }
        .auto-style2 {
            width: 442px;
            height: 63px;
        }
        .auto-style3 {
            width: 442px;
        }
        .auto-style4 {
            margin-left: 20px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style5 {
            margin-left: 31px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style7 {
            margin-left: 28px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style8 {
            margin-left: 34px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style9 {
            margin-left: 38px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style10 {
            margin-left: 37px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style11 {
            margin-left: 8px;
            color: green;
            font-weight: bold;
            font-size: medium;
        }
         .style50{
             color: green;
            font-weight: bold;
            font-size: medium;
        }
         .style40{
              margin-top: 18px;
        border-left: 1px solid #9c7e31;
            border-right: 1px solid #9c7e31;
            border-top: 1px solid #a88734;
            border-bottom: 1px solid #846a29;
            Width: 120px;
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
        .auto-style12 {
            margin-top: 18px;
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
  
    <table class="style12">
      
        <tr>
            <td class="auto-style3">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Category :"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Font-Bold="false"
                    Font-Size="Medium" ForeColor="Black" Text="SubCategory :"></asp:Label>
                &nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" CssClass="auto-style4" BorderStyle="None" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="214px" Width="420px" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black" Text="Title:"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" CssClass="auto-style5" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                  
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Bold="False" Font-Size="Medium" 
                                ForeColor="Black" Text="Price:"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" CssClass="auto-style7" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_phn" runat="server" CssClass="style50" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Font-Bold="False" Font-Size="Medium" 
                                ForeColor="Black" Text="Quantity:"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Quantity" runat="server" CssClass="auto-style8" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Font-Bold="False" Font-Size="Medium" 
                                ForeColor="Black" Text="Description:"></asp:Label>
                            &nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" CssClass="auto-style9" TextMode="MultiLine" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" onclick="Button1_Click" CssClass="auto-style12" OnClientClick="return confirm('Are you sure you want delete');" Text="Delete" Height="28px" Width="80px" />
                &nbsp;</td>
            <td align="left" class="style19" valign="top">
                <asp:Label ID="Label8" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="Posted Date:"></asp:Label>
                &nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" CssClass="auto-style10" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                <asp:Label ID="Label9" runat="server" Font-Bold="False" Font-Size="Medium" 
                    ForeColor="Black" Text="Posted By:"></asp:Label>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" CssClass="auto-style11" BorderStyle="None" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

