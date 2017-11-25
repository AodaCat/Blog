using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddPicture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnOK_Click(object sender, EventArgs e)
    {
        string P_str_filePath = "", P_str_fileExtName = "", P_str_mFileName, P_str_mPath;
        System.Text.StringBuilder strMsg = new System.Text.StringBuilder("上传文件信息;<hr color=red>");
        if ("" != fileUp.PostedFile.FileName)
        {
            //获取文件路径
            P_str_filePath = fileUp.PostedFile.FileName;
            //获取扩展名
            P_str_fileExtName = P_str_filePath.Substring(P_str_filePath.LastIndexOf(".") + 1);
            try
            {
                //获取保存指定的路径
                P_str_mPath = Server.MapPath("Images/");
                //获取文件的名称
                P_str_mFileName = P_str_filePath.Substring(P_str_filePath.LastIndexOf("\\") + 1);
                //保存到指定的路径下
                fileUp.PostedFile.SaveAs(P_str_mPath + P_str_mFileName);
                string P_str_Com = "insert into tb_Picture(Subject,ImageUrl) values('" + this.txtSubject.Text + "','" + (P_str_mFileName) + "')";
                SqlData da = new SqlData();
                bool add = da.ExceSQL(P_str_Com);
                if (add == true)
                {
                    Response.Write("<script language=javascript>alert('添加成功!');location='Picture.aspx'</script>");
                }
                else
                {
                    Response.Write("<script language=javascript>alert('添加失败!');location='javascript:history.go(-1)'</script>");
                }
            }
            catch (Exception error)
            {
                Response.Write(error.ToString());
            }
        }
    }

    protected void btnCancle_Click(object sender, EventArgs e)
    {
        Response.Redirect("Picture.aspx");
    }
}