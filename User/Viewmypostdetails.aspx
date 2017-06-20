<%--/*

********** View Posts ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view posts
 Task Number: 2.4.3
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address and posted atleast one item
 Postconditions: User should be able to view the details of the items he has posted
 Functionality of the module: Users can view the details of the items that he has posted
 Date last modified: 04/20/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Viewmypostdetails.aspx.cs" Inherits="User_Viewmypostdetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
        .style12
        {
            width: 100%;
            height: 110px;
            margin-left:305px;
        }
        
        .style12
        {
            height: 32px;
            margin-left:250px;
        }
    
        .style17
        {
            width: 300px;
        }
        .style14
        {
            width: 488px;
            padding-left:50px;
           
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
            width: 381px;
        }
        .style22
        {
            height: 74px;
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
            width: 363px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    
    <table class="style12">
        <tr>
            <td class="auto-style1">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
            </td>
            <td class="style14">
                <asp:Label ID="Label4" runat="server" Text="SubCategory -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:TextBox ID="Txt_Subcategory" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="262px" Width="380px" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" CssClass="style50" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" CssClass="style50" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                        <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact:" Font-Bold="true" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_phn" runat="server" CssClass="style50" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_quantity" CssClass="style50" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                   
                    <tr>
                        <td class="style22">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Description"  CssClass="style50" runat="server" Height="80px" 
                                TextMode="MultiLine" Width="207px" ReadOnly="True" BorderStyle="Groove"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style21" align="center" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Posted Date -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                
                <asp:TextBox ID="Txt_Posteddate" CssClass="style50" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Posted By -" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
               
                <asp:TextBox ID="Txt_Postedby" CssClass="style50" runat="server" ReadOnly="True" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

