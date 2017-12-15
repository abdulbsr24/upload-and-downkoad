using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUploadDownload
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                FileUpload1.PostedFile.SaveAs(Server.MapPath("~/Data/") + FileUpload1.FileName);
                Label1.Text = "secessful upload";
            }
            BindGrid();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-Stream";
                Response.AppendHeader("content-disposition", "filename=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();
            }
        }

        public void BindGrid()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("file", typeof(string));
            dt.Columns.Add("size", typeof(string));
            dt.Columns.Add("type", typeof(string));
            dt.Columns.Add("download");

            foreach (string strfile in Directory.GetFiles(Server.MapPath("~/Data")))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
                
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();

        }
    }
}