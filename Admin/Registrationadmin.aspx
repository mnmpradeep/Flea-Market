<%--/*

********** Registration ************
 Name of the Developer: Harish Chunchu
 Name of the module: Registration
 Task Number: 4.1.3
  Supported Developer: Pradeep Mahabhashyam
 Preconditions: admin should have already been a registered member 
 Postconditions:admin should be able to add the users to the website
 Functionality of the module: admin can access the quick links in the homepage and use manage user option to add the  users  by using this form
 Date last modified: 04/23/2017    */--%>

<%@ Page Title="UHCL FLEA MARKET" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="Registrationadmin.aspx.cs" Inherits="Admin_Registration"  %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    .style29
    {
        width: 346px;
        text-align: center;
        padding-top:15px;
    }
    .style30
    {
            width: 223px;
            height: 34px;
            text-align: center;

        }
    
        .style14
        {
            height: 39px;
           
        }
        .style31
    {
            width: 223px;
            height: 34px;
            text-align:center;
            
        }
        .style16
        {
            height: 34px;
            
        }
        .style17
        {
            width: 223px;
            height: 34px;
        text-align: center;
    }
        .style18
        {
            height: 31px;
        }
        .style19
        {
            width: 223px;
            height: 33px;
        text-align: left;
    }
        .style20
        {
            height: 33px;
        }
        .style33
    {
            width: 223px;
            height: 35px;
            text-align: center;
        }
        .style22
        {
            height: 35px;
        }
        .style34
    {
            width: 1223px;
            text-align: left;
        }
    .style35
    {
            width: 223px;
            height: 34px;
            text-align: center;
        }
        .style24
        {
            height: 37px;
        }
        .style11
        {
            width: 223px;
            height: 43px;
        text-align: center;
    }
        .style25
        {
            height: 43px;
        }
        .style36
        {
            width:223px;
            text-align: center;
        }
    .style32
    {
        width: 1223px;
        height: 38px;
        text-align: center;
    }
        .style26
        {
            width: 223px;
            height: 32px;
        text-align: center;
    }
        .style27
        {
            height: 32px;
        }
        .style28
        {
            height: 36px;
            padding-top:16px;
             
   

        }
        .style41{
            display: block;
    border-radius: 4px;
    border: 1px #ddd solid;
    background-color: #fff;
        }
        .auto-style1 {
            display: block;
            border-radius: 4px;
            border: 1px #ddd solid;
            background-color: #EDF0F3;
            width: 624px;
            margin-left:283px;
            height: 318px;
        }
        .auto-style3 {
            width: 554px;
            text-align:right;
        }
        .auto-style4 {
            width: 280px;
            height: 34px;
            text-align: center;
        }
        .auto-style5 {
            width: 280px;
            height: 43px;
            text-align: center;
        }
        .auto-style6 {
            width: 280px;
            height: 35px;
            text-align: center;
        }
        .auto-style7 {
            height: 72px;
            padding-top: 16px;
            
            width: 280px;
        }
        .auto-style8 {
            height: 72px;
            padding-top: 16px;
        }
        .auto-style9 {
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
   <h1 style="font-family: Arial, Helvetica, sans-serif;  font-size: 20px; font-style: normal; color: black; " class="auto-style3">
Get Started - It's Free</h1>
    <h1><asp:Literal ID="ltMessage" runat="server" /></h1>
    <table class="auto-style1">
      
        <tr>
            <td class="auto-style4" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" ForeColor="Black"
                 Text="First Name:"></asp:Label>
            </td>
            <td class="style14">
                <asp:TextBox ID="Txt_Fname" runat="server" Width="200px" ValidationGroup="a"></asp:TextBox>
                 
                <asp:RequiredFieldValidator ID="RequiredFieldValidator0" runat="server" ControlToValidate="Txt_Fname" Display="Dynamic" ErrorMessage="Enter " ValidationGroup="a">Enter Firstname</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="Txt_Fname" Display="Dynamic" ValidationExpression="([ a-zA-Z ]*)" ValidationGroup="a">Enter Only Alphabets</asp:RegularExpressionValidator>
                 
            </td>
        </tr>
       
        <tr>
            <td class="auto-style4" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                 Text="Password:"></asp:Label>
            </td>
            <td class="style18">
                <asp:TextBox ID="Txt_Pwd" runat="server" Width="200px" TextMode="Password" ValidationGroup="a"></asp:TextBox>
              
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ControlToValidate="Txt_Pwd" ValidationGroup="a">Enter Password</asp:RequiredFieldValidator>
              
            </td>
        </tr>
        <tr>
            <td class="auto-style4" align="center">
               
                <asp:Label ID="Label7" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                Text="Confirm Password:"></asp:Label>
            </td>
            <td class="style16">
                <asp:TextBox ID="Txt_Cfrmpwd" runat="server" Width="200px" TextMode="Password" ValidationGroup="a"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Txt_Cfrmpwd" ValidationGroup="a">Rewrite Password</asp:RequiredFieldValidator>
            </td>
        </tr>
        <asp:CompareValidator ID="CV" runat="server" ControlToCompare="Txt_Pwd" 
            ControlToValidate="Txt_Cfrmpwd" Operator="Equal" Text="Not Matching"></asp:CompareValidator>
       <tr>
            <td class="auto-style4" align="left">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                Text="Email Id:"></asp:Label>
            </td> 

            <td class="style16">
                <asp:TextBox ID="Txt_Emailid" runat="server" Width="200px" ValidationGroup="a"></asp:TextBox>
               
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="Txt_Emailid" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter Email</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style5">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label14" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                Text="Hint Question:"></asp:Label>
            </td>
            <td class="style25">
                <asp:DropDownList ID="Dd_Hintques" runat="server" Height="31px" Width="322px">
                    <asp:ListItem> - - SELECT A QUESTION - -</asp:ListItem>
                    <asp:ListItem>What is your first Phone number?</asp:ListItem>
                    <asp:ListItem>What is the name of your first class teacher ?</asp:ListItem>
                    <asp:ListItem>What is your Library card number ?</asp:ListItem>
                    <asp:ListItem>What is Your Favourite TV show?</asp:ListItem>
                    <asp:ListItem>Who is your Favourite Singer?</asp:ListItem>
                    <asp:ListItem>Where was your first schooling done?</asp:ListItem>
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Dd_Hintques" ValidationGroup="a">Select a Question</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label16" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                Text="Hint Answer:"></asp:Label>
            </td>
            <td class="style22">
                <asp:TextBox ID="Txt_Hintans" runat="server" Width="200px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="Txt_Hintans" ValidationGroup="a">Enter an Answer</asp:RequiredFieldValidator>
            </td>
        </tr>
        
        <tr>
            <td class="auto-style6">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label18" runat="server" Font-Bold="true" Font-Size="Medium" ForeColor="Black"
                Text="Position:"></asp:Label>
            </td>
            <td class="style22">
                <asp:TextBox ID="Text_pos" runat="server" Width="200px"></asp:TextBox>
                            </td>
        </tr>
              
        <tr>

            <td align="right" class="auto-style7">
                
                <asp:Button ID="Button1"  runat="server" onclick="Button1_Click" Text="Submit" 
                    Width="90px" Height="25px" ValidationGroup="a" BackColor="orange" BorderColor="Wheat" BorderStyle="Ridge" CssClass="auto-style9"  />
                
                </td>
            <td class="auto-style8" align="left" >
                 &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                <asp:Button ID="Button2" BackColor="orange" BorderColor="Wheat" runat="server" onclick="Button2_Click" Text="Reset" 
                    Width="90px" Height="25px" BorderStyle="Ridge" />
            </td>
        </tr>
        </table>
    
</asp:Content>

