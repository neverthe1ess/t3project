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
        string controlBtnId = "";
        // 초기 페이지 일때 오늘 요일 강조(쿼리 스트링이 없을때)
        if (Request.QueryString["dayof"] == null)
        {
            DateTime nowDay = DateTime.Now;
            int day = (int)nowDay.DayOfWeek;
            controlBtnId = "btnDay" + day.ToString();
        } else // 선택한 요일 강조 
        {
            controlBtnId = Request.QueryString["dayof"];
        }
        btnColor_Set(controlBtnId);
    }

    // 선택한 요일을 색 변경
    private void btnColor_Set(string controlBtnId)
    {
        Button dayButton = (Button)FindControl(controlBtnId);
        dayButton.BackColor = System.Drawing.Color.SlateGray;
        dayButton.ForeColor = System.Drawing.Color.White;
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

    protected void btnDay_Click(object sender, EventArgs e)
    {
        string sendByObjectName = ((Button)sender).ID;  //downcasting
        string btnQueryString = "dayof=" + Server.UrlEncode(sendByObjectName);
        Response.Redirect("Default.aspx?" + btnQueryString);
    }
}