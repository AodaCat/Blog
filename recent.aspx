<%@ Page Language="C#" AutoEventWireup="true" CodeFile="recent.aspx.cs" Inherits="recent" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>最新动态</title>
    <style type="text/css">
        .auto-style1 {
            height: 45px;
        }
        a{text-decoration:none}
    </style>
</head>
<body style="width: 645px; height: 385px;">
    <form id="form1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <marquee direction="up" onMouseOut="this.start()" onMouseOver="this.stop()" behavior="scroll" scrollamount="2" scrolldelay="100" loop="-1" hspace="10" vspace="10" style="width: 619px; height: 22px;">
                    <div style="text-align:center;"><%SqlDR();%></div>
                </marquee></td> 
        </tr>
        <tr>
            <td>
                <asp:GridView ID="NewsList" runat="server" AutoGenerateColumns="False" Width="100%" AllowPaging="True" OnPageIndexChanging="NewsList_PageIndexChanging" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="4" OnRowDataBound="NewsList_RowDataBound">
                    <AlternatingRowStyle BackColor="White"/>
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                    <table align="center" width="100%">
                                        <tr>                                 
                                            <td align="center">
                                                <a href='article.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ST_n_id")%>'>
                                                    <%# DataBinder.Eval(Container.DataItem, "ST_n_title") %></a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                摘要：<%# DataBinder.Eval(Container.DataItem, "ST_n_key") %></td>
                                        </tr>
                                        <tr>
                                            <td align="right" >
                                                <a href='article.aspx?id=<%# DataBinder.Eval(Container.DataItem, "ST_n_id")%>'>查看</a>
                                                阅读：<%# DataBinder.Eval(Container.DataItem, "ST_n_hit") %>评论：<%# DataBinder.Eval(Container.DataItem, "ST_n_re") %>时间：<%# DataBinder.Eval(Container.DataItem, "ST_n_date") %></td>
                                        </tr>
                                    </table>
                            </ItemTemplate>
                            <HeaderTemplate>
                                个人动态
                            </HeaderTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
