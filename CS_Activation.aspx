<%--********** Activation Confirm ************
 Name of the Developer: Pradeep Mahabhashyam
 Name of the module: Confirm Activation
 Task Number: 1.2.1.2
 Supported By: Harish Chunchu
 Postconditions: User must have clicked on the confirmation link that is sent to his email.
 Functionality of the module: User will be shown the successful message on the screen
 Date last modified: 04/25/2017
    --%>
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CS_Activation.aspx.cs" Inherits="CS_Activation" Title="UHCL Flea Market"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        body
        {
            font-family: Arial;
            color:green;
            background-image:url(IMAGES/tick.jpeg);
            background-repeat:no-repeat;
            text-align:center;
            background-position:center;
        }
       
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <h1 style="margin-top:300px;"><asp:Literal ID="ltMessage" runat="server" /></h1>
    </form>
</body>
</html>
