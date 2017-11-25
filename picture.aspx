<%@ Page Language="C#" AutoEventWireup="true" CodeFile="picture.aspx.cs" Inherits="picture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>个人图片</title>
    <style type="text/css">
        .auto-style1 {
            width: 269px;
        }

        .auto-style2 {
            width: 269px;
            height: 20px;
        }

        #form1 {
            width: 563px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table style="width: 100%">
            <tr>
                <td class="auto-style2">
                    图片信息管理</td>
            </tr>
            <tr>
                <td class="auto-style1">
                    <a href="AddPicture.aspx" target="Frame" ><input id="Button1" type="button" value="添加图片" /></a></td>
            </tr>
            <tr>
                <td style="text-align: center;" class="auto-style1">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Width="500px" AllowPaging="True" OnPageIndexChanging="GridView1_PageIndexChanging" OnRowDataBound="GridView1_RowDataBound">
                        <Columns>
                            <asp:BoundField HeaderText="图片ID" DataField="PictureID" />
                            <asp:BoundField HeaderText="图片主题" DataField="Subject" />
                            <asp:HyperLinkField DataNavigateUrlFields="ImageUrl" DataNavigateUrlFormatString="./images/{0}" HeaderText="图片信息" Target="_blank" Text="查看图片" />
                        </Columns>
                        <PagerStyle HorizontalAlign="Center" />
                     </asp:GridView>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
