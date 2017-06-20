<%@ Page Title="" Language="C#" MasterPageFile="~/User/user.master" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="User_Default2" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style2
        {
            height: 12px;
            padding-left:300px;
        }
        .style11
        {
            width: 300px;
            height: 12px;
    padding-left:200px;
            
        }
        .style12
        {
            width: 20px;
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
      
        <tr align="right" >
            <td class="style11">
       <asp:Label 
                    ID="Label2" runat="server" Font-Bold="True" Font-Size="XX-Large" 
                    ForeColor="Black" Text="Few minutes while your Ad is being reviewed by our team " Width="500px"></asp:Label>
                         </td></tr>
  
        
        <tr align="center" style="padding-left: 270px" >
            <td class="style2">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label 
                    ID="Label4" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="You Can Click&nbsp;&nbsp;"></asp:Label>
                <asp:LinkButton ID="LinkButton1" runat="server" ForeColor="Blue" 
                    PostBackUrl="Viewmyposts.aspx" Font-Bold="True" Font-Size="Large" Font-Underline="True">Here</asp:LinkButton>
                &nbsp;
                <asp:Label ID="Label5" runat="server" Font-Bold="True" Font-Size="Medium" 
                    ForeColor="Black" Text="To View Your Ad"></asp:Label>
            </td>
        </tr>
    </table>
</asp:Content>



