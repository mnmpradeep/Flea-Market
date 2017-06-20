<%--/*

********** Place Ad ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Place Ad
 Task Number: 2.3
 Supported By: Ramya Patchikura
 Preconditions: User should have already been a registered member with their student email address
 Postconditions: User should be able to place an Ad
 Functionality of the module: User can use the Place an Ad for free by filling the details about the item. 
 Date last modified: 04/23/2017    */--%>

<%@ Page Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="PlaceAdd.aspx.cs" Inherits="User_PlaceAdd" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
        .style12
        {
            height: 539px;
          margin-left:300px;
          width:500px;
          
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
    .style46{
        font-family:cursive;
        font-size:xx-large;
        color:green;
        margin-left:300px;
            width: 442px;
        }
   .auto-style1 {
            width: 409px;
            padding-top:0px;
        }
        .auto-style4 {
            width: 586px;
            height: 32px;
        }
           
        .auto-style9 {
            height: 44px;
            width: 409px;
        }
        .auto-style10 {
            height: 35px;
            width: 409px;
        }
        .auto-style11 {
            height: 11px;
            width: 409px;
        }
        .auto-style12 {
            width: 409px;
            padding-top: 13px;
        }
        .auto-style13 {
            height: 36px;
            width: 409px;
        }
        .auto-style14 {
            height: 33px;
            width: 409px;
        }
        .auto-style15 {
            height: 73px;
            width: 409px;
        }
        .auto-style16 {
            height: 46px;
            width: 409px;
            padding-left:30px;
        }
   
        .auto-style17 {
            height: 44px;
            width: 586px;
        }
        .auto-style18 {
            height: 35px;
            width: 586px;
        }
        .auto-style19 {
            height: 11px;
            width: 586px;
        }
        .auto-style20 {
            height: 36px;
            width: 586px;
        }
        .auto-style21 {
            height: 33px;
            width: 586px;
        }
        .auto-style22 {
            height: 73px;
            width: 586px;
        }
        .auto-style23 {
            height: 46px;
            width: 586px;
            padding-left:30px;
        }
   
        .auto-style24 {
            height: 539px;
            width: 494px;
            display: block;
            border-radius: 4px;
            border: 1px solid #ddd;
            margin-left: 450px;
            background-color: #fff;
            margin-top:-270px;
        }
   
        .auto-style25 {
            font-family: cursive;
            font-size: xx-large;
            color: green;
            margin-left: 450px;
            width: 487px;
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server" >
    <h3 class="auto-style25">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Submit a Free Classified Ad</h3>

   <img src="../IMAGES/sell.jpg" alt="sell" style="margin-left:800px;" />
    <table class="auto-style24" >
        <tr>
            <td class="auto-style17">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label3" runat="server" Font-Bold="false" Font-Names="Arial" 
                    Font-Size="Medium" ForeColor="Black" Text="Category"></asp:Label>
                &nbsp;</td>
            <td class="auto-style9">
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" 
                    Height="35px" onselectedindexchanged="DropDownList1_SelectedIndexChanged" 
                    style="margin-top: 0px" Width="165px">
                </asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList2" Display="Dynamic" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Select a Category</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style18">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label4" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Subcategory"></asp:Label>
                &nbsp;</td>
            <td class="auto-style10">
                <asp:DropDownList ID="DropDownList2" runat="server" Width="165px">
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="auto-style19">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label5" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Title"></asp:Label>
                &nbsp;&nbsp;</td>
            <td class="auto-style11">
                <asp:TextBox ID="Txt_Title" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="Txt_Title" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter a Title</asp:RequiredFieldValidator>
            </td>
        </tr>
      <%--  <tr>
            <td class="style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label6" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Email Id"></asp:Label>
                &nbsp;</td>
            <td>
                <asp:TextBox ID="Txt_Emailid" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Txt_Emailid" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">*</asp:RequiredFieldValidator>
            </td>
        </tr>--%>
        <tr>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label11" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Price"></asp:Label>
                &nbsp;</td>
            <td class="auto-style12">
                <asp:TextBox ID="Txt_Price" runat="server" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="Txt_Price" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter a Price</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="Txt_Price" ErrorMessage="RegularExpressionValidator" ValidationExpression="^[0-9]{0,10}$" ValidationGroup="a">Enter only numbers</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label12" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Quantity"></asp:Label>
                &nbsp;&nbsp;</td>
            <td class="auto-style1">
                <asp:TextBox ID="Txt_Quantity" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style4">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Label ID="Label7" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Phone Number"></asp:Label>
                </td>
            <td class="auto-style12">
                <asp:TextBox ID="Txt_Phonenumber" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="Txt_Phonenumber" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter Contact Details</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="Txt_Phonenumber" ErrorMessage="RegularExpressionValidator" ValidationExpression="\(?\d{3}\)?-? *\d{3}-? *-?\d{4}" ValidationGroup="a">Enter Valid Phone Number</asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style20">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="Label8" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Address"></asp:Label>
                &nbsp;</td>
            <td class="auto-style13">
                <asp:TextBox ID="Txt_Addr" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="Txt_Addr" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Address is required</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style21">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label9" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Description"></asp:Label>
                &nbsp;&nbsp;</td>
            <td class="auto-style14">
                <asp:TextBox ID="Txt_Description" runat="server" Height="92px" 
                    TextMode="MultiLine" Width="184px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="Txt_Description" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Enter Description!</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="auto-style22">
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Label ID="Label10" runat="server" Font-Bold="false" Font-Size="Medium" 
                    ForeColor="Black" Text="Images"></asp:Label>
                </td>
            <td class="auto-style15">
                <asp:FileUpload ID="FileUpload1" Multiple="Multiple" runat="server" Font-Bold="false" 
                    Font-Size="Medium" Width="294px" ForeColor="Black" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="FileUpload1" ErrorMessage="RequiredFieldValidator" ValidationGroup="a">Upload atleast one image</asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td align="right" class="auto-style23" >
                &nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:Button ID="Button1" runat="server" Font-Bold="false"  
                    onclick="Button1_Click" Text="Place" ValidationGroup="a" Width="69px" Height="29px" BackColor="#FF9900" BorderStyle="Groove" />
       
                </td>
            <td align="center" class="auto-style16">
                <asp:Button ID="Button2" runat="server" Height="29px" OnClientClick="PlaceAdd.aspx" Text="Cancel" Width="69px" BackColor="#FF9900" BorderStyle="Groove" />
                </td>
        </tr>
        &nbsp;&nbsp;&nbsp;
        <tr>
            <td class="style26" colspan="2" align="center">
                &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label13" runat="server" Text="Label" Visible="False" 
                    ForeColor="Black"></asp:Label>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;
            </td>
            
        </tr>
         
    </table>
   
</asp:Content>

