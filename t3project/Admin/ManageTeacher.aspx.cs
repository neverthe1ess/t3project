﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;

public partial class Admin_ManageTeacher : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if(!IsPostBack) // 초기 게시일때
        {
            GetTeacherDataFromDatabase();
        }
    }

    private void GetTeacherDataFromDatabase()
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT 강사, 강사설명 FROM teacher", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        // 가상의 데이터베이스의 테이블 teacher
        DataSet ds = new DataSet();
        da.Fill(ds, "teacher");
        int rowNumber = 0;
        foreach(DataRow row in ds.Tables["teacher"].Rows){
            CreateDynamicTeacherCard(row, ++rowNumber);
        }
    }

    private void CreateDynamicTeacherCard(DataRow row, int rowNumber)
    {
        Panel innerPanel = new Panel //Object Initializer
        {
            CssClass = "inner",
            ID = "InnerPanel"
        }; //html 코드로 div에 해당함

        // <article class = "card-item">
        HtmlGenericControl articleCardItem = new HtmlGenericControl("article");
        articleCardItem.Attributes.Add("class", "card-item");

        HyperLink link = new HyperLink();

        Image teacherImage = new Image();
        Panel cardTextPanel = new Panel
        {
            CssClass = "card-text"
        };

        HtmlGenericControl titleLabel = new HtmlGenericControl("h2");
        titleLabel.Attributes.Add("class", "title");

        HtmlGenericControl paragraphContentDescription = new HtmlGenericControl("p");

        cardTextPanel.Controls.Add(titleLabel);
        cardTextPanel.Controls.Add(paragraphContentDescription);

        link.Controls.Add(teacherImage);
        link.Controls.Add(cardTextPanel);

        articleCardItem.Controls.Add(link);
        innerPanel.Controls.Add(articleCardItem);

        content_card.Controls.Add(innerPanel);
        string queryString = "teacherid=" + Server.UrlEncode(rowNumber.ToString());
        link.NavigateUrl = "~/Admin/InfoTeacher.aspx?" + queryString;
        teacherImage.ImageUrl = "~/public/images/teacher" +rowNumber.ToString()+ ".jpg";
        titleLabel.InnerText = row["강사"].ToString();
        paragraphContentDescription.InnerHtml = row["강사설명"].ToString();
    }
}