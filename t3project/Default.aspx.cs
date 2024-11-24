using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnSearch_Click(object sender, EventArgs e)
    {
        Response.Redirect("/Search.aspx"); 
    }

    protected void btnLectureManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("/LectureInfo.aspx");
    }

    protected void btnTeacherManage_Click(object sender, EventArgs e)
    {
        Response.Redirect("/AddLecture.aspx");
    }

    protected void timetable_Click(object sender, EventArgs e)
    {
        /*
         * 요일까지 받아서 쿼리하는 걸 생각해보기
         */
        string lectureId = ((LinkButton)sender).ID;
        string[] lectureTokens = lectureId.Split('_');
        string lectureNumber = lectureTokens[1];

        string queryString = "lecture=" + Server.UrlEncode(lectureNumber); 

        Response.Redirect("LectureInfo.aspx?" + queryString);
    }
}