﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebForm.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 124px">
            TYPE YOUR FULL NAME!<br />
            <br />
            <asp:TextBox ID="TextBox1" runat="server" Height="21px" Width="143px"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Height="31px" OnClick="Button1_Click" Text="Submit" Width="63px" ForeColor="Green" />
            <br />
        </div>
    </form>
</body>
</html>
