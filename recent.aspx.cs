using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class recent : System.Web.UI.Page
{
    SqlData mySqlData = new SqlData();
    String mySql = "select * from ST_news order by ST_n_date desc";
    protected void Page_Load(object sender, EventArgs e)
    {
        mySqlData.BindData(NewsList, mySql);
    }

    protected void NewsList_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        NewsList.PageIndex = e.NewPageIndex;
        NewsList.DataBind();
    }

    protected void NewsList_RowDataBound(object sender, GridViewRowEventArgs e)
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
    public void SqlDR()
    {
        string mydr = "select top 4 * from ST_news order by ST_n_date desc";
        SqlData sqldata = new SqlData();
        SqlDataReader dr = sqldata.ExceRead(mydr);
        while (dr.Read())
        {
            Response.Write("<a href='article.aspx?id=" + dr["ST_n_id"].ToString() + "'>" + dr["ST_n_title"].ToString() + "&nbsp&nbsp摘要：" + dr["ST_n_key"].ToString() + "&nbsp&nbsp时间：" + dr["ST_n_date"].ToString() + "</a><br/>");
        }
        dr.Close();
    }
}