using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LectureInfo : System.Web.UI.Page
{ 

    protected void Page_Load(object sender, EventArgs e)
    {
        lblLectureTime.Text = Request.QueryString["lecture"];
        
        // if(관리자가 아니면)
        //btnLectureModify.Visible = false;
        //btnLectureRemove.Visible = false;
    }

    protected void btnToList_Click(object sender, EventArgs e)
    {
        Response.Redirect("/default.aspx");
    }

    protected void btnLectureModify_Click(object sender, EventArgs e)
    {
        Response.Redirect("/ModifyLecture.aspx");
    }
}