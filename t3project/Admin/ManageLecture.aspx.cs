using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageLecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        List<Lecture> list = new List<Lecture>();
        for (int i = 0; i < 5; i++)
        {
            Lecture test = new Lecture("수요일", "13:00~14:00", "파이프라이닝에 대해 학습한다. 메모리의 캐시의 지역성에 알아본다", "이정빈T", "역동관");
            list.Add(test);
        }
        for (int i = 0; i < 5; i++)
        {
            Lecture test = new Lecture("수요일", "13:00~14:00", "운영체제에서의 프로세스 동기화를 알아본다. 세마포어의 P,V 연산에 대해 알아본다.", "조희원T", "역동관");
            list.Add(test);
        }

        dlstLecture.DataSource = list;
        dlstLecture.DataBind();
    }

    protected void btnListLecture_Click(object sender, EventArgs e)
    {

    }

    protected void searchResContent_Click(object sender, EventArgs e)
    {
        string queryString = "lecture=" + Server.UrlEncode(((LinkButton)sender).Text);
        Response.Redirect("~/LectureInfo.aspx?" + queryString);
        
    }
}