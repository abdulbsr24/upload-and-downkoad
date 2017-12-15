using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FileUploadDownload
{
    public partial class DataBaseUploadDownload : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpPostedFile postfile = FileUpload1.PostedFile;
            string filename = Path.GetFileName(postfile.FileName);
            string fileExtension = Path.GetExtension(filename);
            int size = postfile.ContentLength;
            Stream stream = postfile.InputStream;
            BinaryReader binaryReader = new BinaryReader(stream);
            byte[] Bytes = binaryReader.ReadBytes((int)stream.Length);
            string CS = ConfigurationManager.ConnectionStrings["MYDB"].ConnectionString;
            SqlConnection con = new SqlConnection(CS);
            SqlCommand cmd = new SqlCommand("SpUplaodImage", con);
            



        }
    }
}