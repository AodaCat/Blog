<%@ Page Language="C#" AutoEventWireup="true" CodeFile="article.aspx.cs" Inherits="article" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 129px;
            height: 229px;
            text-align: center;
        }
        .auto-style2 {
            height: 38px;
            width: 129px;
            text-align: center;
        }
        .auto-style3 {
            line-height:initial;
        }
        </style>
</head>
    <body style="width: 645px; height: 385px;">
        <form>
            <table style="width: 100%; height: 385px;">
                <tr>
                    <td class="auto-style2">题目：</td>
                    <td class="auto-style3"><%=str_title %></td>
                </tr>
                 <tr>
                    <td class="auto-style2">摘要：</td>
                    <td class="auto-style3"><%=str_key %></td>
                </tr>
                <tr>
                    <td class="auto-style1">内容：</td>
                    <td class="auto-style3"><%=str_content %></td>
                </tr>
                <tr>
                    <td class="auto-style2">时间：</td>
                    <td class="auto-style3"><%=str_date %></td>
                </tr>
            </table>
        </form>
    </body>
</html>
