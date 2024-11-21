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
        Lecture test = new Lecture("수요일", "13:00~14:00", "파이프라이닝에 대해 학습한다.", "이정빈T", "역동관");
        Lecture test2 = new Lecture("수요일", "13:00~14:00", "파이프라이닝에 대해 학습한다.", "이정빈T", "역동관");
        List<Lecture> list = new List<Lecture>();
        list.Add(test);
        list.Add(test2);

        dlstSearch.DataSource = list;
        dlstSearch.DataBind();

    }
}