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
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("File", typeof(string));
            dt.Columns.Add("size", typeof(string));
            dt.Columns.Add("type", typeof(string));
            foreach(string strfile in Directory.GetFiles(Server.MapPath("~/Data/")))
            {
                FileInfo fi = new FileInfo(strfile);
                dt.Rows.Add(fi.Name, fi.Length, fi.Extension);
            }
            GridView1.DataSource = dt;
            GridView1.DataBind();
            
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="Download")
            {
                Response.Clear();
                Response.ContentType = "application/octect-stream";
                
                Response.AppendHeader("Content-disposition", "attachment; fileName=" + e.CommandArgument);
                Response.TransmitFile(Server.MapPath("~/Data/") + e.CommandArgument);
                Response.End();

            }

        }
    }
}