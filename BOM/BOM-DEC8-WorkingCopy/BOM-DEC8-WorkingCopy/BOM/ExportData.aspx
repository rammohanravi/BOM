﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ExportData.aspx.cs" Inherits="WebApplication3.ExportData" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        Part No <asp:TextBox runat="server" ID="txtPartNo"></asp:TextBox><br />
        <asp:Button ID="btnSubmit" Text="Export" runat="server" 
            onclick="btnSubmit_Click" />
    </div>
    </form>
</body>
</html>
