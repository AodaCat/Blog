using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class message : System.Web.UI.Page
{
    SqlData mySqlData = new SqlData();
    string sql = "select  * from ST_message order by ST_mdate desc";
    protected void Page_Load(object sender, EventArgs e)
    {
        mySqlData.BindData(GridView1, sql);
    }

    protected void Button1_Click1(object sender, EventArgs e)
    {
        if (nickname.Text.Trim() == "" || title.Text.ToString().Trim() == "" || content.Value.Trim() == "")
        {
            Response.Write("<script language=javascript>alert('昵称,标题,内容不能为空!！');location='javascript:history.go(-1)'</script>");
            Response.End();
        }
        else
        {
            string ST_sql = "insert into ST_message (ST_nickname,ST_title,ST_content) values ('" + nickname.Text + "','" + title.Text + "','" + content.Value + "')";
            mySqlData.ExceSQL(ST_sql);
            Response.Redirect("message.aspx");
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        //如果是绑定数据行
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            //鼠标经过时，行背景色变
            e.Row.Attributes.Add("onmouseover", "c=this.style.backgroundColor;this.style.backgroundColor='#FFFF66'");
            //鼠标移出时，行背景色变
            e.Row.Attributes.Add("onmouseout", "this.style.backgroundColor=c");
        }
    }
}