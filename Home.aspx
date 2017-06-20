<%-- 
 
********** Guest Home Page************       
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Homepage of the Guest
 Task Number: 1 (Guest Tasks)
 Supported By: Ramya Patchikura
 Preconditions: Database path should be correct in the web.config file
 Postconditions: User should be able to view the guest home page
 Functionality of the module: Homepage of Guest, where guest can view and browse items
 Date last modified: 04/19/2017    --%>

<%@ Page Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="Home.aspx.cs" Inherits="Home" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style5
        {
            width: 100%;
            height: 1px;
        }
        .style5
        {
            width: 102%;
            height: 301px;
            
        }
        .style7
        {
            width: 691px;
        height: 39px;
        padding-left:35px;
       

    }
        .style11
    {
        width: 912px;
        height: 39px;
        font-style:italic;
        
        
    }
    .style12
    {
        width: 929px;
        height: 39px;
    }
    .style13
    {
        width: 912px;
        height: 6px;
    }
        .style14
        {
            width: 912px;
            height: 574px;
           
            
        }
        .style40{
             border-left: thick solid #ff0000;
            height:300px;
        }
        .style16{
            width:100px;
           
        }
        .auto-style1 {
            width: 381px;
            padding-left:35px;
            border-right:  1px solid #DDD;
          
            
        }
        .auto-style2 {
            width: 251px;
            height: 39px;
            padding-left: 35px;
        }
        .auto-style3 {
            width: 500px;
            height: 39px;
            text-align:center;
            font-style: italic;
        }
        .auto-style4 {
            width: 1300px;
            height: 6px;
        }
        .auto-style5 {
            width: 1300px;
            height: 574px;
        }
        .auto-style6 {
            margin-left: 57px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <table class="style5">
    <tr>
        <td class="auto-style2" valign="top">
            <asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                ForeColor="Black" Text="Select Categories"></asp:Label>
        </td>
        <td class="auto-style3">
            <asp:Label ID="Label1" runat="server" Font-Bold="True" 
                Font-Names="Times New Roman" Font-Size="18px" ForeColor="Black"></asp:Label>
        </td>
        <td class="style12">
        </td>
    </tr>

    <tr>
        
        <td align="left" class="auto-style1" rowspan="2" valign="top">
            <asp:GridView ID="gvCategory" runat="server" AutoGenerateColumns="False" 
                Width="138px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="173px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Category_Id" 
                        DataNavigateUrlFormatString="Home.aspx?cat_id={0}" 
                        DataTextField="Category_Name" HeaderText="Categories" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White"/>
            </asp:GridView>
            <br />
            <asp:GridView ID="gvSubcategory" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" Height="162px" Width="140px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Subcategory_Id" 
                        DataNavigateUrlFormatString="Home.aspx?sub_cat_id={0}" 
                        DataTextField="Subcategory_Name" HeaderText="Sub Categories" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        </td>
        <td align="left" class="auto-style4" valign="top">
            &nbsp;</td>
        <td align="left" rowspan="2" valign="top">
            &nbsp;</td>
    </tr>
     
    <tr>
        <td align="center" class="auto-style5"  valign="top">
            <asp:GridView ID="gvCategoryView" runat="server" AutoGenerateColumns="False" 
                BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2" CssClass="auto-style6" Height="225px" Width="480px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:BoundField DataField="Title" HeaderText="Title" />
                    <asp:BoundField DataField="Price" HeaderText="Price" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                    <%--<asp:BoundField DataField="Email_id" HeaderText="Email_id" />--%>
                    <asp:BoundField DataField="Posted_date" HeaderText="Posted Date" />
                    <asp:BoundField DataField="Description" HeaderText="Description" />
                    <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                        DataNavigateUrlFormatString="login.aspx?Adv_id={0}" HeaderText="More Details" 
                        Text="More Details" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
        &nbsp;
        </td>
    </tr>
</table>
    <br />
</asp:Content>

