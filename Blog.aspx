<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage/MasterPage.master" AutoEventWireup="true" CodeFile="Blog.aspx.cs" Inherits="Blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .auto-style8 {
        height: 125px;
    }
        .auto-style14 {
            height: 444px;
        }
        .auto-style16 {
            width: 156px;
            height: 156px;
        }
        #Button1 {
            height: 45px;
            width: 155px;
            text-align: center;
            margin-top: 0px;
        }
        #Button2 {
            text-align: center;
            height: 45px;
            width: 155px;
        }
        #Button3 {
            height: 45px;
            width: 155px;
            margin-top: 0px;
        }
        #Button4 {
            height: 45px;
            width: 155px;
        }
        .auto-style18 {
            height: 138px;
        }
        #Button5 {
            height: 81px;
            width: 155px;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" runat="server" contentplaceholderid="ContentPlaceHolder1">
    <table style="width: 100%; height: 446px; margin-right: 0px;">
        <tr>
            <td class="auto-style16">
                <a href="main.aspx" target="Frame"><img alt="" src="./images/01.jpg" style="height: 156px; width: 156px" /></a></td>
        </tr>
        <tr>
            <td class="auto-style18">
                <a href="recent.aspx" target="Frame"><input id="Button1" type="button" value="个人动态" /></a>
                <a href="main.aspx" target="Frame"><input id="Button2" type="button" value="个人主页" /></a>
                <a href="picture.aspx" target="Frame"><input id="Button3" type="button" value="个人图片" /></a>
                <a href="message.aspx" target="Frame"><input id="Button4" type="button" value="留言板" /></a></td>
        </tr>
        <tr>
            <td>
                <input id="Button5" type="button" value="Mr_Yellow" onclick="window.open('http://www.howlove.top')" /></td>
        </tr>
    </table>
</asp:Content>


<asp:Content ID="Content3" runat="server" contentplaceholderid="ContentPlaceHolder2">
    <table style="width:100%; height: 441px; margin-top: 0px;">
        <tr>
            <td class="auto-style14">
                <iframe src="recent.aspx" name="Frame" frameborder="0" scrolling="auto" style="width: 660px; height: 433px; margin-top: 0px; margin-left: 0px;"></iframe>
            </td>
        </tr>
    </table>
</asp:Content>



