<%--/*

********** Modify Ad details ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Modify Ad
 Task Number: 2.4.1
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted an Ad
 Postconditions: User should be able to update his Ad
 Functionality of the module: User can modify the details about the item he has posted. 
 Date last modified: 04/20/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Modifydetails.aspx.cs" Inherits="User_Modifydetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        
        .style12
        {
            height: 374px;
        }
    
            
        .style12
        {
            width: 100%;
            height: 342px;
            margin-left:250px;
        }
        
        .style17
        {
            width: 454px;
        }
        .style14
        {
            width: 488px;
            padding-left:95px;
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
            padding-left:95px;
        }
        .auto-style1 {
            height: 304px;
            width: 100%;
            margin-left: 280px;
        }
        .auto-style2 {
            width: 435px;
        }
        .auto-style3 {
            width: 435px;
            height: 63px;
        }
        .style40{
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
        .auto-style4 {
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
        .auto-style5 {
            margin-left: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table class="auto-style1">
        <tr>
            <td class="auto-style2">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Text="SubCategory :" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                 &nbsp; &nbsp; &nbsp; &nbsp;
                &nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
         &nbsp; &nbsp; &nbsp; &nbsp;
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="214px" Width="434px" />
                        </td>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Price" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                       <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_phn" runat="server" CssClass="auto-style5"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Quantity" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                  
                    <tr>
                        <td>
                            &nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;<asp:FileUpload ID="FileUpload1" runat="server" ForeColor="Black" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br /><br /><br />
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Save Changes" CssClass="auto-style4" Height="30px" Width="125px" />
                &nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Size="Smaller" Text="Label" 
                    Visible="False" ForeColor="Black"></asp:Label>
            </td>
            <td align="left" style="padding-top:7px" class="style19" valign="top">
             
                <asp:Label ID="Label8" runat="server" Text="Posted Date:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br /><br /><br />
                <asp:Label ID="Label9" runat="server" Text="Posted By:" Font-Bold="False" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" BorderStyle="None" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

