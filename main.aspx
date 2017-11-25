<%@ Page Language="C#" AutoEventWireup="true" CodeFile="main.aspx.cs" Inherits="main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人主页</title>
    <style type="text/css">
        #form1 {
            width: 645px;
            height: 390px;
        }
    </style>
    </head>
<body style="width: 46%">
    <form id="form1" runat="server">
        <table style="width: 100%; height: 409px;">
            <tr>
                <td>
                    <asp:Xml ID="Xml1" runat="server" DocumentSource="~/xml/myself.xml" TransformSource="~/xml/myself.xslt"></asp:Xml>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
