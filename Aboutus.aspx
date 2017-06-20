<%--********** About Page ************
// Name of the Developer: Pradeep Mahabhashyam
// Name of the module: About us
// Task Number: 1.3
// Supported By: Ramya Patchikura
// Functionality of the module: Displays the information of the developers
// Date last modified: 04/25/2017 --%>
<%@ Page Language="C#" MasterPageFile="~/guest.master" AutoEventWireup="true" CodeFile="Aboutus.aspx.cs" Inherits="Aboutus" Title="UHCL Flea Market" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

        .style7
        {
            width: 691px;
        }
        .style7
        {
            height: 23px;
            width: 365px;
        }
        .style5
        {
            width: 100%;
            height: 1px;
        }
        .style5
        {
            height: 23px;
        }
               
        .style40{
            width:100px;
             border-right: thin solid black;
            height:30px;
            padding-right:20px;
        }
        .style40:hover{
            transition: transform 500ms ease, color 500ms linear;
    transform: scale(1.1);
        }
         .style41{
            width:100px;
             border-left: thin solid black;
            height:30px;
            margin-left:250px;
           
        }
        .style41:hover{
            transition: transform 500ms ease, color 500ms linear;
    transform: scale(1.1);
        }

        .auto-style4 {
            width: 98px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bold;
            
            /*padding-right: 20px;*/
        }
        .auto-style4:hover{
              transition: transform 500ms ease, color 500ms linear;
    transform: scale(1.1);
        }
        .auto-style5 {
            width: 100px;
            padding-left: 25px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bold;
           
        }
        .auto-style5:hover{
            transition: transform 500ms ease, color 500ms linear;
    transform: scale(1.1);
        }
        .auto-style6 {
            width: 104px;
            font-family: Verdana, Geneva, Tahoma, sans-serif;
            font-weight: bold;
            /*border-left: thin solid black;
            height: 30px;
            margin-left: 250px;*/
        }
        .auto-style6:hover{
            transition: transform 500ms ease, color 500ms linear;
    transform: scale(1.1);
        }
        .style47{
            width:100px;
        }
        .style59{
            text-align:center;
            width:250px;
            margin-left:500px;
            font-family:'Gill Sans', 'Gill Sans MT', Calibri, 'Trebuchet MS', sans-serif;
            font-size:xx-large;
            text-decoration:underline;
            
        }
        .style19{
            margin-top:300px;
        }

        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <br />
   
    <h1 class="style59">Team Gryffindor</h1>
    
    <br /><br /><br /><br />
    <table class="style4" style="margin-left:30px; padding-left:20px;" >
       
        <tr align="left" class="style47">
            <td class="auto-style4">
                <asp:Image ID="Image7" runat="server" Height="250px" 
                    ImageUrl="~/aboutus/pra.png" Width="261px" /><br /><br />
                <h2>Pradeep Mahabhashyam,</h2> <br /> <i> Front-End Developer | Developed Guest and User modules of the website</i>
                <br />
                <br />
               <i> EmailId : <a href="mailto:mnm.pradeep@gmail.com">mnm.pradeep@gmail.com</a> </i>
            </td>

         <td class="auto-style6" >
                <asp:Image ID="Image2" runat="server" Height="250px" 
                    ImageUrl="~/aboutus/har.png" Width="261px"  /><br /><br />
            
              <h2>Harish Chunchu,</h2> <br /> <i> Back-End Developer | Developed Admin and Moderator modules of the website</i>
                <br />
                <br />
               <i> EmailId : <a href="mailto:harish.ch7@gmail.com">harish.ch7@gmail.com</a></i></td>

             <td class="auto-style5">
                 <asp:Image ID="Image3" runat="server" Height="250px" 
                    ImageUrl="~/aboutus/ram.png" Width="261px" ImageAlign="Middle" /><br /><br />
            
              <h2>Ramya Patchikura,</h2> <br /> <i> QUIS Analysis | Developed Report item feature in Moderator, Login and Registration Pages of the website</i>
                <br />
                <br />
               <i> EmailId : <a href="mailto:ramya.patchikura@gmail.com">ramya.patchikura@gmail.com</a></i></td>
          
        
        </tr>
     
     
    </table>
</asp:Content>

