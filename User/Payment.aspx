<%-- 
 
********** Payment Page ************
 Name of the Developer:Harish Chunchu
 Name of the module: Payment
 Task Number: 2.2.3.1
 Supported By: Pradeep Mahabhashyam
 Preconditions: User should have logged into the website and ready to pay for an item
 Postconditions: User should be able to pay successfully.
 Functionality of the module: payment page, where users' will provide their card details and pay for the item
 Date last modified: 04/29/2017  --%>

<%@ Page Title="UHCL Flea Market" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Payment.aspx.cs" Inherits="User_Payment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
        <table>
    <tr>
        <td>
        <asp:Label ID="Label1" runat="server" Text="CARD NUMBER"></asp:Label> </td>
        <td class="auto-style1"><asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
</td>
</tr>
         <tr>
        <td>
        <asp:Label ID="Label2" runat="server" Text="EXPIRY DATE"></asp:Label> </td>
        <td class="auto-style1"><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
</td>
</tr>
        <tr>
        <td>
        <asp:Label ID="Label3" runat="server" Text="Card Holder Name"></asp:Label> </td>
        <td class="auto-style1"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
</td>
</tr>
        <tr>
        <td>
        <asp:Label ID="Label4" runat="server" Text="CVV"></asp:Label> </td>
        <td class="auto-style1"><asp:TextBox ID="TextBox4" runat="server" Height="16px" Width="48px"></asp:TextBox>
</td>
</tr>
</table>
    <br />
                
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
                
&nbsp;
    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Cancel" />
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
</asp:Content>

