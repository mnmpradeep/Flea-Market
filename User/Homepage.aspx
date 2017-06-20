<%--/*

********** Homepage of User  ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Homepage
 Task Number: 2.0
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view his homepage on the browser
 Functionality of the module: User can search items using the search engine or use categories to browse categories 
 Date last modified: 04/26/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="User_Homepage" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

    <style type="text/css">
        .style11
        {
            width: 140px;
            margin-left:240px;
            
        }
       
        .style20{
            margin-left:250px;
        }
        .style21{
          
          
        }
        .auto-style1 {
            margin-left: 32px;
            margin-top:5px;
            background-image: url('../images/find.ico');
            background-repeat:no-repeat;
            background-size:20px;
            padding-left: 20px;
            border:1px solid #ccc;
           
        }
        .auto-style2 {
            margin-left: 0px;
            margin-top:40px;
            padding-top:40px;
           
        }
    .auto-style3 {
        margin-left: 322px;
        margin-top: 0px;
        margin-top:-20px;

    }
       .auto-style6 {
            margin-left: 450px;
            margin-top:-320px;
            padding-right:-150px;
        }
       .style13{
      padding-right:5px;         
    margin-left: 263px;
            margin-top:-22px;
            padding-left:5px; 
            background-repeat:no-repeat;
            background-size:20px;
          
            border:1px solid #ccc;
    width: 21px;
    border:dashed;
    height: 22px;
    
       }
       .style14{
           margin-top:-5px;
       }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br /><br />
     <asp:GridView ID="gvCategories" runat="server" AutoGenerateColumns="False" 
                Width="138px" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" 
                BorderWidth="1px" CellPadding="3" CellSpacing="2" Height="173px">
                <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                <Columns>
                    <asp:HyperLinkField DataNavigateUrlFields="Category_Id" 
                        DataNavigateUrlFormatString="Homepage.aspx?cat_id={0}" 
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
                        DataNavigateUrlFormatString="Homepage.aspx?sub_cat_id={0}" 
                        DataTextField="Subcategory_Name" HeaderText="Sub Categories" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
     <asp:GridView ID="gvCatResponse" runat="server" AutoGenerateColumns="False" 
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
                        DataNavigateUrlFormatString="Viewadsdetails.aspx?AddId={0}" HeaderText="More Details" 
                        Text="More Details" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White" />
            </asp:GridView>

     <asp:GridView ID="gvAddView" runat="server" AutoGenerateColumns="False" 
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
                        DataNavigateUrlFormatString="Viewadsdetails.aspx?AddId={0}" HeaderText="More Details" 
                        Text="More Details" />
                </Columns>
                <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5b3128" Font-Bold="True" ForeColor="White" />
            </asp:GridView>
    </asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <%--Search:--%>
<asp:TextBox ID="txtSearch" runat="server" Width="257px"  CssClass="style14" />
<%--<asp:Button Text="Search" runat="server" ID="search" OnClick="Search" />--%>
    <asp:ImageButton runat="server" ID="search" CssClass="style13" ImageUrl="~/IMAGES/find.png" OnClick="Search"  />
   
<asp:GridView ID="gvCustomers" runat="server"  AutoGenerateColumns="false"
     AllowPaging="true" 
     OnPageIndexChanging="OnPageIndexChanging" OnRowDataBound="OnRowDataBound" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" 
                CellPadding="3" CellSpacing="2"  HorizontalAlign="center" CssClass="auto-style2" Width="452px">
     <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
<Columns>
    <asp:BoundField HeaderStyle-Width="50px" DataField="Adv_id" HeaderText="Add Id" />
    <asp:BoundField HeaderStyle-Width="150px" DataField="Title" HeaderText="Title"
        ItemStyle-CssClass="Title" />
    <asp:BoundField HeaderStyle-Width="50px" DataField="Quantity" HeaderText="Quantity" />
    <asp:BoundField HeaderStyle-Width="50px"  DataField="Price" HeaderText="Price" />
    <asp:HyperLinkField DataNavigateUrlFields="Adv_id" 
                DataNavigateUrlFormatString="Viewadsdetails.aspx?AddId={0}" 
                HeaderText="View" Text="View More Details" />
</Columns>
    
</asp:GridView>
    </asp:Content>
        
    
        
   




