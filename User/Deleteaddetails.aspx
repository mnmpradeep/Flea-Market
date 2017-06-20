<%--/*

********** Delete Ad's Details ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Delete Ad's details
 Task Number: 2.4.2
 Preconditions: User should have already been a registered member with their student email address and posted an item
 Postconditions: User should be able to Delete the Ad that he has posted
 Functionality of the module: Users can view the details of the Ad's that are posted by him and delete them
 Date last modified: 04/18/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Deleteaddetails.aspx.cs" Inherits="User_Deleteaddetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        
        .style12
        {
            height: 32px;
        }
    

        
        .style12
        {
            height: 304px;
            width: 100%;
            margin-left: 295px;
        }
        
        
        .style17
        {
            width: 81px;
        }
        .style14
        {
           width: 88px;
           

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
        .style50{
             color: green;
            font-weight: bold;
            font-size: medium;
        }
        .auto-style3 {
            height: 25px;
        }
        .auto-style9 {
            width: 1121px;
            height: 63px;
        }
        .auto-style10 {
            width: 1121px;
        }
        .auto-style11 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-right: 0px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table class="style12">
        <tr>
            <td class="auto-style10">
                <br />
                <asp:Label ID="Label3" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Category :"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" ReadOnly="True" BorderStyle="None" CssClass="auto-style11"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Font-Bold="false"
                    Font-Size="Medium" ForeColor="Black" Text="SubCategory :"></asp:Label>
                &nbsp; &nbsp; &nbsp; &nbsp;
                <asp:TextBox ID="Txt_Subcategory" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
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
                            <asp:Label ID="Label5" runat="server" Font-Bold="false" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black" Text="Title"></asp:Label>
                         &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Font-Bold="false" Font-Size="Medium" 
                                ForeColor="Black" Text="Price"></asp:Label>
                           &nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
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
                            <asp:Label ID="Label11" runat="server" Font-Bold="false" Font-Size="Medium" 
                                ForeColor="Black" Text="Quantity"></asp:Label>
                          &nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Quantity" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Font-Bold="false" Font-Size="Medium" 
                                ForeColor="Black" Text="Description"></asp:Label>
                           &nbsp;&nbsp; &nbsp;&nbsp; &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style9">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" onclick="Button1_Click" OnClientClick="javascript:confirm('Are you sure?');" Text="Delete" Width="89px" CssClass="style40" Height="30px" />
                </td>
            <td align="left" class="style19" valign="top">
                <br />
                <asp:Label ID="Label8" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Posted Date"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;<br />
                <br />
                <br />
                <asp:Label ID="Label9" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Posted By"></asp:Label>
             &nbsp;   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

