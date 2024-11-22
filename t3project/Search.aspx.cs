using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        List<Lecture> list = new List<Lecture>();
        for (int i = 0; i < 10; i++)
        {
            Lecture test = new Lecture("수요일", "13:00~14:00", "파이프라이닝에 대해 학습한다. 메모리의 캐시의 지역성에 알아본다", "이정빈T", "역동관");
            list.Add(test);
        }

        dlstSearch.DataSource = list;
        dlstSearch.DataBind();

    }
}