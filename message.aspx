<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message.aspx.cs" Inherits="message" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>留言板</title>
    <style type="text/css">
        .auto-style1 {
            height: 114px;
            background-color: #66FFFF;
        }
        #content {
            height: 55px;
            margin-left: 7px;
        }
        .auto-style2 {
            height: 260px;
        }
        .auto-style3 {
            text-align: center;
        }
        .auto-style5 {
            height: 30px;
            width: 633px;
        }
        .auto-style6 {
            height: 15px;
            width: 633px;
        }
    </style>
    <script type="text/javascript">
        function is_empty() {
            if (nickname.Text.Trim() == "" || title.Text.ToString().Trim() == "" || content.Value.Trim() == "") {
                return false;
                alert("昵称,标题,内容不能为空！");
            }
            else
                return true;
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <table style="width: 100%; height: 350px;">
        <tr>
            <td class="auto-style1">
                <p>
                    <span style="font-size: 11pt">
                        网友昵称:</span>
				    <asp:TextBox id="nickname" runat="server" style="margin-top: 0px"></asp:TextBox><br/>
                    <span style="font-size: 11pt">
                        留言标题:</span>
				    <asp:TextBox id="title" runat="server"></asp:TextBox><br/>
                    <span style="font-size: 11pt">
                        留言内容:</span><textarea id="content" name="r_content" cols="40" runat="server"></textarea>
                    <asp:Button ID="Button1" runat="server" OnClientClick="return is_empty()" OnClick="Button1_Click1" Text="留言" CausesValidation="False" /><br/>
			    </p>
            </td>
        </tr>
        <tr>
            <td class="auto-style2" style="background-color: #FF6600">
                <asp:GridView ID="GridView1" runat="server" Width="627px" Height="253px" AutoGenerateColumns="False" OnRowDataBound="GridView1_RowDataBound">
                    <Columns>
                        <asp:TemplateField>
                            <HeaderTemplate>
							    <div class="auto-style3">
                                    <strong>留言板</strong>
                                </div>
                            </HeaderTemplate>
                            <ItemTemplate>
							    <table>
                                    <tr>
                                        <td class="auto-style6">
                                            <font-size="2">
            网友&nbsp;<strong><%# DataBinder.Eval(Container.DataItem, "ST_nickname") %></strong>&nbsp;于&nbsp;<strong><%# DataBinder.Eval(Container.DataItem, "ST_mdate") %></strong>&nbsp;留言:</font><br />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="auto-style5">
                                            &nbsp;&nbsp;<font-size="2"><strong><%# DataBinder.Eval(Container.DataItem, "ST_content") %></strong></font>
                                        </td>
                                    </tr>
							    </table>
                            </ItemTemplate>
                       </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
    </form>
</body>
</html>
