<%--/*

********** View Ad's Details ************
 Name of the Developer: Harish Chunchu
 Name of the module: view Ad's details
 Task Number: 3.3
 Preconditions: moderator should have already been a registered member with their student email address
 Postconditions: moderator should be able to view the Ad details of the items posted by others
 Functionality of the module: moderator can view the details of the Ad's that are posted by others to Approve/Reject
 Date last modified: 04/24/2017    */--%>
<%@ Page Language="C#" MasterPageFile="~/Moderator/ModeratorMasterPage.master" AutoEventWireup="true" CodeFile="Viewdetails.aspx.cs" Inherits="Moderator_Viewdetails" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style12
        {
            height: 32px;
        }
        .style12
        {
            width: 100%;
            height: 342px;
            margin-left:260px;
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
            width: 266px;
        }
        .style21
        {
            width: 401px;
            height: 63px;
        }
        .style19
        {
            width: 488px;
            height: 63px;
        }
         .style50{
            color:green;
            font-weight:bold;
            font-size:medium;
        }
        .auto-style1 {
            width: 360px;
        }
        .auto-style2 {
            width: 360px;
            height: 63px;
        }
        .auto-style3 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 14px;
        }
        .auto-style4 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 15px;
        }
        .auto-style5 {
            width: 254px;
        }
        .auto-style6 {
            color: green;
            font-weight: bold;
            font-size: medium;
            margin-left: 22px;
        }
        .style40{
             border-left: 1px solid #9c7e31;
            border-right: 1px solid #9c7e31;
            border-top: 1px solid #a88734;
            border-bottom: 1px solid #846a29;
            Width: 100px;
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
        .auto-style7 {
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
            
        }
        .auto-style7:hover{
            color:blue;
        }
      
        </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder3" Runat="Server">
   
    <table class="style12">
        <tr>
            <td class="auto-style1">
                <br />
                <asp:Label ID="Label3" runat="server" Text="Category -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;
                <asp:TextBox ID="Txt_category" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                <br />
            </td>
            <td class="style14">
                &nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="SubCategory -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox ID="Txt_Subcategory" runat="server" BorderStyle="None" CssClass="auto-style6" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style13" colspan="2">
                <table border="0" class="style15">
                    <tr>
                        <td class="auto-style5" rowspan="5">
                            <asp:Image ID="Image1" runat="server" Height="214px" Width="386px" />
                        </td>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label5" runat="server" Text="Title -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
                            <asp:TextBox ID="Txt_Title" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label12" runat="server" Text="Price -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Price" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                        </td>
                    </tr>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label13" runat="server" Text="Quantity -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Quantity" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True" Width="161px"></asp:TextBox>
                        </td>
                    </tr>
                   <%-- <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label6" runat="server" Text=" Email Id -" Font-Bold="False"
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Emailid" runat="server" BorderStyle="None" CssClass="style50" ReadOnly="True"></asp:TextBox>
                        &nbsp;
                        </td>
                    </tr>--%>
                    <tr>
                        <td>
                            &nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label7" runat="server" Text="Description -" Font-Bold="False" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;
                            <asp:TextBox ID="Txt_Description" runat="server" CssClass="style50" ReadOnly="True" TextMode="MultiLine"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                    Text="Approve" OnClientClick="return confirm('Click Ok to Approve! ');"  Font-Bold="True" Font-Size="Medium" CssClass="auto-style7" Height="36px" Width="106px" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="Reject" 
                   OnClientClick="return confirm('Click Ok to Reject! ');" Font-Bold="True" Font-Size="Medium" CssClass="auto-style7" Height="36px" Width="106px"  />
                &nbsp;&nbsp;&nbsp;
            </td>
            <td align="left" class="style19" valign="top">
                <br />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label8" runat="server" Text="Posted Date" Font-Bold="false"
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                 &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<asp:TextBox ID="Txt_Posteddate" runat="server" BorderStyle="None" CssClass="auto-style3" ReadOnly="True"></asp:TextBox>
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Text="Posted By" Font-Bold="false" 
                    Font-Size="Medium" ForeColor="Black"></asp:Label>
                  &nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="Txt_Postedby" runat="server" BorderStyle="None" CssClass="auto-style4" ReadOnly="True"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>

