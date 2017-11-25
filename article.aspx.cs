using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class article : System.Web.UI.Page
{
    public string str_title;
    public string str_key;
    public string str_content;
    public string str_date;
    protected void Page_Load(object sender, EventArgs e)
    {
        string str = Page.Request["id"].ToString();
        SqlData myData = new SqlData();
        string mysql = "select * from ST_news where ST_n_id='" + str + "'";
        SqlDataReader dr = myData.ExceRead(mysql);
        while(dr.Read())
        {
            str_title = dr["ST_n_title"].ToString();
            str_key = dr["ST_n_key"].ToString();
            str_content = dr["ST_n_content"].ToString();
            str_date = dr["ST_n_date"].ToString();
        }
    }
}