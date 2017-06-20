<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Viewmypostdetails.aspx.cs" Inherits="Moderator_Viewmypostdetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            height: 32px;
        }
    
        .style12
        {
            width: 100%;
            height: 110px;
            margin-left:250px;
        }
        .style17
        {
            width: 401px;
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
            width: 285px;
        }
        .style22
        {
            height: 74px;
        }
        .style21
        {
            height: 63px;
        }
        .auto-style1 {
            width: 355px;
        }
        .auto-style2 {
            margin-left: 10px;
           
            color:green;
            font-weight:bold;
            font-size:medium;
        
        }
        .auto-style3 {
            margin-left: 37px;
        }
        .style50{
            color:green;
            font-weight:bold;
            font-size:medium;
        }
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
    <br />
    <br />
    <table class="style12">
        <tr>
            <td class="auto-style1">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Category" runat="server" CssClass="style50" BorderStyle="None"></asp:TextBox>
            </td>
            <td class="style14">
             <asp:Label ID="Label4" runat="server" Text="SubCategory :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" CssClass="auto-style2" BorderStyle="None"></asp:TextBox>
                &nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="style16" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="262px" Width="372px" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Price :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label11" runat="server" Text="Quantity :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_quantity" runat="server" BorderStyle="None" CssClass="style50"></asp:TextBox>
                        </td>
                    </tr>
                
                    <tr>
                        <td class="style22">
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" Height="80px" 
                                TextMode="MultiLine" Width="207px" CssClass="auto-style3"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="style21" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Text="Posted Date :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Posteddate" runat="server" BorderStyle="None" CssClass="style50"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Text="Posted By :" Font-Bold="True" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" BorderStyle="None" CssClass="style50"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

