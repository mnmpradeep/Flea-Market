<%--/*

********** View Ad's Details ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view Ad's details
 Task Number: 2.1.1
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view the Ad details of the items
 Functionality of the module: Users can view the details of the Ad's that are posted by other sellers
 Date last modified: 04/18/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Viewadsdetails.aspx.cs" Inherits="User_Viewadsdetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
        .style12
        {
            width: 100%;
            height: 463px;
        }
        
        .style12
        {
              margin-left:250px;
        }
    
        .style17
        {
            width: 135px;
        }
        .style14
        {
            width: 288px;
            padding-left:75px;
           
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
            padding-top:15px;
            padding-right:20px;
        }
        .style50{
            color:green;
            font-weight:bold;
            font-size:medium;
        }
        .auto-style2 {
            width: 208px;
        }
        .auto-style3 {
            height: 43px;
            padding-top: 15px;
            padding-right: 20px;
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
        .style41:hover{
            cursor:pointer;
            text-decoration:underline;
            text-decoration-color:blue;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <table class="style12">
        <tr>
            <td class="auto-style2">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category -"  
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" ReadOnly="True" BorderStyle="None" CssClass="style50"></asp:TextBox>
            </td>
            <td class="style14">
               <asp:Label 
                    ID="Label4" runat="server" Text="SubCategory -" Font-Size="Medium" 
                    ForeColor="Black"></asp:Label>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" ReadOnly="True" CssClass="style50" BorderStyle="None"></asp:TextBox>
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
                            <asp:Label ID="Label5" runat="server" Text="Title -" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" ReadOnly="True" CssClass="style50" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>

                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price -" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" CssClass="style50" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        &nbsp;
                        </td>
                    </tr>
                     <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Contact:" Font-Bold="true" Font-Overline="False" 
                                Font-Size="Medium" ForeColor="Black"></asp:Label>
&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_phn" runat="server" CssClass="style50" BorderStyle="None" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity -"  
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Quantity" runat="server" CssClass="style50" ReadOnly="True" BorderStyle="None"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td class="style22">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server"  Text="Description -"  
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" Height="66px" 
                                TextMode="MultiLine" CssClass="style50" ReadOnly="True" ></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style3" colspan="2">
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Posted Date -" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" ReadOnly="True" CssClass="style50" BorderStyle="None"></asp:TextBox>
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Posted By -"  
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" CssClass="style50" ReadOnly="True" BorderStyle="None"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
               <asp:Button ID="Button3" runat="server" Text="Report Item" OnClick="Button3_Click"  BorderStyle="None" ForeColor="Blue" BackColor="White" CssClass="style40" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Contact Seller" Width="130px" CssClass="style40" Height="29px" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                <asp:Button ID="Button2" runat="server" CssClass="style40"   Text="Pay" Width="65px" Height="29px" OnClick="Button2_Click" />

            </td>
        </tr>
    </table>
</asp:Content>

