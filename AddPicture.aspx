<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddPicture.aspx.cs" Inherits="AddPicture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 187px;
            height: 50px;
            text-align: center;
        }
        .auto-style2 {
            height: 50px;
        }
        .auto-style3 {
            width: 187px;
            height: 98px;
            text-align: center;
        }
        .auto-style4 {
            height: 98px;
        }
        .auto-style5 {
            width: 187px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 511px; height: 316px;" cellpadding="0" cellspacing="0">
        <tr>
            <td colspan="3" style="height: 241px; width: 755px;">
                <table style="width: 573px; height: 345px">
                    <tr>
                        <td colspan="5" style="text-align: center">
                            <strong><span style="color: #993300">添加图片</span></strong></td>
                    </tr>
                    <tr>
                        <td class="auto-style1">
                            <span style="font-size: 9pt">
                                图片主题:</span></td>
                        <td colspan="4" class="auto-style2">
                            <asp:TextBox ID="txtSubject" runat="server" Width="233px" Font-Size="9pt" Height="24px"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td class="auto-style3">
                            <span style="font-size: 9pt">
                                上传图片:</span></td>
                        <td class="auto-style4">
                            <asp:FileUpload ID="fileUp" runat="server" Font-Size="9pt" Width="237px" Height="34px" /></td>
                    </tr>
                    <tr>
                        <td class="auto-style5">
                            </td>
                        <td>
                            <asp:Button ID="btnOK" runat="server" Text="确定" OnClick="btnOK_Click" Height="34px" Width="76px" />&nbsp;
                            <asp:Button ID="btnCancle" runat="server" Text="取消" OnClick="btnCancle_Click" Height="34px" Width="76px" /></td>
                    </tr>
                </table>
            </td>
         </tr>
      </table>
    </form>
</body>
</html>
