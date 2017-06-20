<%--/*

********** Place Ad ************
 Name of the Developer: Ramya Patchikura
 Name of the module: Place Ad
 Task Number: 3.3
 Preconditions: moderator should have already been a registered member with their student email address
 Postconditions: moderator should be able to place an Ad
 Functionality of the module: moderator can use the Place an Ad for free by filling the details about the item. 
 Date last modified: 04/23/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="PlaceAdd.aspx.cs" Inherits="Moderator_PlaceAdd" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
    .style12
    {
        width: 671px;
        margin-left:300px;
    }
    
        .style12
        {
            height: 439px;
            margin-left:350px;
        }
    
    .style14
    {
        height: 44px;
        width: 298px;
    }
    .style16
    {
        height: 44px;
    }
    .style17
    {
        width: 298px;
        height: 35px;
    }
    .style18
    {
        height: 35px;
    }
    .style27
    {
        width: 298px;
        height: 11px;
    }
    .style28
    {
        height: 11px;
    }
    .style21
    {
        width: 298px;
        height: 32px;
    }
    .style22
    {
        width: 298px;
        height: 36px;
    }
    .style23
    {
        height: 36px;
    }
    .style24
    {
        width: 298px;
        height: 33px;
    }
    .style25
    {
        height: 33px;
    }
    .style19
    {
        width: 298px;
        height: 96px;
    }
    .style20
    {
        height: 96px;
    }
    .style29
    {
        width: 298px;
        height: 46px;
    }
    .style30
    {
        height: 46px;
    }
    .style26
    {
        height: 40px;
    }
        .auto-style1 {
            width: 298px;
            height: 19px;
        }
        .auto-style2 {
            height: 19px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   <h1 style="margin-left:100px;text-align:center">Place An Ad</h1>
    <table class="style12">
        <tr>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="false" Font-Names="Arial" 
                    Font-Size="Medium" ForeColor="Black" Text="Category"></asp:Label>
                &nbsp;</td>
            <td class="style16">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="40px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="margin-top: 0px" Width="142px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Subcategory"></asp:Label>
                &nbsp;</td>
            <td class="style18">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="140px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style1">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Title"></asp:Label>
                &nbsp;&nbsp;</td>
            <td class="auto-style2">
                <asp:TextBox ID="Txt_Title" runat="server" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Title" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Price"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="Txt_Price" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label12" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Quantity"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="Txt_Quantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style22">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label7" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Phone Number"></asp:Label>
                &nbsp;</td>
            <td class="style23">
                <asp:TextBox ID="Txt_Phonenumber" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style24">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Address"></asp:Label>
                &nbsp;</td>
            <td class="style25">
                <asp:TextBox ID="Txt_Addr" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style19">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label9" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Description"></asp:Label>
                &nbsp;</td>
            <td class="style20">
                <asp:TextBox ID="Txt_Description" runat="server" Height="92px" 
                    TextMode="MultiLine" Width="184px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style29">
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label10" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Images"></asp:Label>
                &nbsp;</td>
            <td class="style30">
                <asp:FileUpload ID="FileUpload1" runat="server" Font-Bold="false" 
                    Font-Size="Medium" Width="294px" ForeColor="Black" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="false" Font-Size="Medium" 
                    onclick="Button1_Click" BackColor="#FF9900" OnClientClick="return confirm('Click Ok to Post');" BorderStyle="Groove" Text="Place" ValidationGroup="a" Width="70px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
                <asp:Label ID="Label13" runat="server" Text="Label" Visible="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

