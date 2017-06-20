<%--********** Registration Confirm************
// Name of the Developer: Pradeep Mahabhashyam
// Name of the module: Confirm Activation
// Task Number: 1.2.1.2
// Supported By: Ramya Patchikura
// Postconditions: User must have entered all his information in the form.
// Functionality of the module: User will be shown the successful message on the screen
// Date last modified: 04/25/2017 --%>
<%@ Page Language="C#" MasterPageFile="~/login.master" AutoEventWireup="true" CodeFile="Cnfrmregistration.aspx.cs" Inherits="Cnfrmregistration" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            height: 12px;
        }
        .style11
        {
            width: 450px;
            height: 12px;
    
            
        }
        .style12
        {
            width: 100%;
            height: 15px;
        }
        .style41{
            width:100%;
            height:235px;
        }
        
      
    </style>
   
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
    <br />
    
    <table class="style41" >
      
        <tr align="center" style="padding-left: 30px">
            <td class="style11">
       <asp:Label 
                    ID="Label2" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="An Activation Link Has Been Sent To Your Student Email."></asp:Label>
                 <br /><asp:Label 
                    ID="Label1" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Click On that Link To Activate Your Account"></asp:Label>
                         </td></tr>
     <%--   <tr>
            <td class="style12">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label3" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text=" YOUR&nbsp;&nbsp;&nbsp; USERID&nbsp; IS"></asp:Label>
                &nbsp;&nbsp;
                <asp:Label ID="Label1" runat="server" Text="Label" Font-Bold="True" 
                    Font-Size="Large" Font-Underline="True" ForeColor="White"></asp:Label>
                &nbsp;</td>
        </tr>--%>
        
        <tr align="center" >
            <td class="style2">
                <asp:Label 
                    ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="Click&nbsp;&nbsp;"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" font-bold="True" font-size="Large" Font-Underline="True" OnClientClick="window.open('https://webmail.uhcl.edu/owa/auth/logon.aspx?replaceCurrent=1&amp;url=https%3a%2f%2fwebmail.uhcl.edu%2fowa%2f')" >Here</asp:LinkButton>
               
                     &nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="To Access Your Student Email"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>

