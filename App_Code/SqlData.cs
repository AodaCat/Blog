using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
//引用数据库命名空间
using System.Data;
using System.Data.SqlClient;
//引用配置文件中的AppSettings中的数据
using System.Configuration;
using System.Web.UI.WebControls;

/// <summary>
/// SqlData 的摘要说明
/// </summary>

public class SqlData
{

    #region 类中的全局变量
    private SqlConnection sqlcon;   //数据库连接
    private SqlCommand sqlcom;  //数据库命令
    private SqlDataAdapter sqldata; //数据源填充DataSet
    #endregion

    #region 构造函数
    public SqlData()
    {
        //
        // TODO: 在此处添加构造函数逻辑
        //
        sqlcon = new SqlConnection(ConfigurationManager.AppSettings["conStr"]);
    }
    #endregion

    #region 执行SQL语句
    public bool ExceSQL(string strSqlCom)
    {
        sqlcom = new SqlCommand(strSqlCom, sqlcon);
        try
        {
            //判断数据库是否为连接状态
            if (sqlcon.State == System.Data.ConnectionState.Closed) { sqlcon.Open();}
            //执行SQL语句
            sqlcom.ExecuteNonQuery();
            //SQL语句执行成功则返回true
            return true;
        }
        catch
        {
            //SQL语句执行失败则返回false
            return false;
        }
        finally
        {
            //关闭数据库连接
            sqlcon.Close();
        }
    }
    #endregion

    #region 返回DataSet类型数据
    public DataSet ExceDS(string strSqlCom)
    {
        try
        {
            //打开连接
            sqlcon.Open();
            //创建并初始化一个Sqlcommand对象
            sqlcom = new SqlCommand(strSqlCom, sqlcon);
            //定义并初始化数据适配器
            sqldata = new SqlDataAdapter();
            //创建一个DataSet数据集
            sqldata.SelectCommand = sqlcom;
            DataSet ds = new DataSet();
            //将数据适配器中的数据填充到数据集ds中
            sqldata.Fill(ds);
            //返回一个DataSet数据集
            return ds;
        }
        finally
        {
            //关闭数据库
            sqlcon.Close();
        }
    }
    #endregion

    #region 返回SqlDataReader类型的数据
    public SqlDataReader ExceRead(string strSqlCom)
    {
        sqlcon.Open();
        //定义并初始化命令对象
        sqlcom = new SqlCommand(strSqlCom, sqlcon);
        //创建一个数据阅读器
        SqlDataReader read = sqlcom.ExecuteReader();
        //返回读取的数据值
        return read;
    }
    #endregion

    #region  绑定用户页面中的GridView控件
    public bool BindData(GridView dl, string strSqlCom)
    {
        dl.DataSource = this.ExceDS(strSqlCom);
        try
        {
            dl.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            sqlcon.Close();
        }
    }
    #endregion
}