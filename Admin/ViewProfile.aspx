<%--/*

********** view profile  ************
 Name of the Developer: Harish Chunchu
 Name of the module: view profile
 Task Number: 4.2.1
  Supported Developer: Pradeep Mahabhashyam
 Postconditions:admin should be able to view his personal details in the website
 Functionality of the module: admin can view his personal details that are given when he was added to website 
 Date last modified: 04/22/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="Admin_ViewProfile" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">


    .style51
    {
        font-size: large;
        font-weight: bold;
        text-align: center;
        height: 37px;
    }
    .style52
    {
        font-size: large;
        font-weight: bold;
        text-align: left;
        height: 39px;
        padding-left:150px;
    }
        
        .style13
        {
            width: 1067px;
            height: 39px;
            text-align: left;
        }
                
        .style14
        {
            height: 39px;
        }
        .style15
        {
            width: 1067px;
            height: 34px;
            text-align: left;
        }
        .style16
        {
            height: 34px;
        }
        .style45
        {
            width: 1067px;
            height: 38px;
            text-align: left;
        }
        .style46
        {
            width: 1067px;
            height: 34px;
        }
        .style32
    {
        width: 477px;
        height: 38px;
        text-align: left;
    }
        .style47
        {
            width: 1067px;
            height: 37px;
            text-align: left;
        }
        .style24
        {
            height: 37px;
        }
        .style33
    {
        width: 1067px;
        height: 35px;
        text-align: left;
    }
        .style34
    {
        width: 477px;
        text-align: left;
    }
        .style39
        {
            height: 27px;
            width: 1067px;
        }
        .style40
        {
            width: 477px;
            text-align: left;
            height: 28px;
        }
        .style36
        {
            width: 477px;
            height: 37px;
            text-align: left;
        }
        .style48
        {
            width: 1067px;
            height: 43px;
            text-align: left;
        }
        .style25
        {
            height: 43px;
        }
        .style49
        {
            width: 1067px;
            height: 38px;
        }
        .style38
        {
            width: 477px;
            text-align: left;
            height: 27px;
        }
        
    .style29
    {
        width: 1067px;
        text-align: left;
        height: 31px;
    }
        
        .style50
    {
        height: 31px;
    }
        .style61{
            margin-left:390px;
           
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   
    <table class="style61" >
        <tr>
            <td class="style51" colspan="2" style="color: #000000">
                WELCOME&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td align="left" class="style52" colspan="2" style="color: #000000">
                &nbsp;ADMIN DETAILS</td>
        </tr>
        <tr>
            <td class="style13">
                <asp:Label ID="Label2" runat="server" Text="First Name" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_Firstname" runat="server" Text="Lbl_Firstname" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        
        <tr>
            <td class="style45">
                <asp:Label ID="Label4" runat="server" Text="User Name" Font-Bold="false"
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="style8">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_Username" runat="server" Text="Lbl_Username" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style46">
                <asp:Label ID="Label5" runat="server" Text="Email Id" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="style32">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Lbl_Emailid" runat="server" Text="Lbl_Emailid" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            &nbsp;</td>
        </tr>
        
        <tr>
            <td class="style39">
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Hint Question" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="style40">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_HintQues" runat="server" Text="Lbl_HintQues" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style47">
                &nbsp;<asp:Label ID="Label12" runat="server" Text="Hint Answer" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="style36">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_HintAns" runat="server" Text="Lbl_HintAns" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        
    </table>
</asp:Content>

