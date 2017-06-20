<%--/*

********** View profile Page for viewing items ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: view profile
 Task Number: 2.2.1
 Supported By: Harish Chunchu
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to view his details
 Functionality of the module: Users can view the details that he has provided during registration
 Date last modified: 04/19/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="ViewProfile.aspx.cs" Inherits="User_ViewProfile" Title="UHCL Flea Market" %>

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
        text-align: center;
        height: 39px;
       
    }
        
        .style13
        {
            width: 450px;
            height: 39px;
            text-align: right;
        }
                
        .style14
        {
            height: 39px;
            padding-left:130px;
            text-align:left;
           
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
        .auto-style1 {
            width: 506px;
            height: 39px;
            text-align: right;
        }
        .auto-style2 {
            height: 39px;
            padding-left: 130px;
            text-align: left;
            width: 469px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
 
    <table class="style1">
        <tr align="right">
            <td class="style52" colspan="2" style="color: #000000">
               
                Hey,&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;</td>
        </tr>
        <tr align="left">
            <td class="style52" colspan="2" style="color: #000000">
                USER DETAILS</td>
        </tr>
        <tr align="center">
            <td class="auto-style1">
                <asp:Label ID="Label2" runat="server" Text="First Name" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_Firstname" runat="server" Text="Lbl_Firstname" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
     
        <tr align="center">
            <td class="auto-style1">
                <asp:Label ID="Label4" runat="server" Text="User Name" Font-Bold="false"
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_Username" runat="server" Text="Lbl_Username" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td class="auto-style1" >
                <asp:Label ID="Label5" runat="server" Text="Email Id" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black" ></asp:Label>
            </td>
            <td class="auto-style2" >
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_Emailid" runat="server" Text="Lbl_Emailid" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
        </tr>
        
        <tr align="center">
            <td class="auto-style1">
                &nbsp;<asp:Label ID="Label11" runat="server" Text="Hint Question" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_HintQues" runat="server" Text="Lbl_HintQues" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        <tr align="center">
            <td class="auto-style1">
                &nbsp;<asp:Label ID="Label12" runat="server" Text="Hint Answer" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
            </td>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Lbl_HintAns" runat="server" Text="Lbl_HintAns" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;</td>
        </tr>
        
        
    </table>
</asp:Content>

