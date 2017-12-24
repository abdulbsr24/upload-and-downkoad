using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace FileUploadDownload
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                BindGrid();
            }

        }
       public void BindGrid()
        {
            EmployeOperation obj = new EmployeOperation();
            GridView1.DataSource = obj.GetEmpList();
            GridView1.DataBind();
        }

       protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
       {
           if(e.Row.RowType==DataControlRowType.DataRow && GridView1.EditIndex==e.Row.RowIndex)
           {
               DropDownList ddlgender = (DropDownList)e.Row.FindControl("ddlgender");
               
               string cmd="spGettblGender";
               EmployeOperation obj = new EmployeOperation();

               ddlgender.DataSource = obj.GetData(cmd);
               ddlgender.DataValueField="Gender";
               ddlgender.DataTextField="Gender";
               ddlgender.DataBind();
               ddlgender.Items.FindByValue((e.Row.FindControl("lblgender")as Label).Text).Selected=true;
               DropDownList ddldept = (DropDownList)e.Row.FindControl("ddldept");
               string cmd1 = "spGettbldes";
               ddldept.DataSource = obj.GetData(cmd1);
               ddldept.DataValueField = "DeptName";
               ddldept.DataTextField = "DeptName";
               ddldept.DataBind();
              // ddldept.Items.FindByValue((e.Row.FindControl("lblDept") as Label).Text).Selected = true;
               
           }
       }

       protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
       {
           GridView1.EditIndex = -1;
           BindGrid();
       }

       protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
       {
           GridView1.EditIndex = e.NewEditIndex;
           BindGrid();
           
       }

       protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
       {

       }

       protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
       {

       }

      
     
        
    }
}