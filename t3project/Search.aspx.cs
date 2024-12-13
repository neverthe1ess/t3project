using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void btnSubmit_click(object sender, EventArgs e)
    {
        string keyword = txtSearch.Text.Trim(); // 검색어 가져오기

        if (!string.IsNullOrEmpty(keyword))
        {
            LoadLectureData(keyword);
        }
        else
        {
            lbltable_title.Text = "검색어를 입력하세요.";
        }

    }

    private void LoadLectureData(string keyword = "")
    {
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
        List<Lecture> list = new List<Lecture>();

        // SQL 쿼리: 수업내용에서 검색어 찾기
        string query = "SELECT 강의ID, 요일, 과목, 수업내용, 강사, 강의실 FROM class WHERE 수업내용 LIKE @Keyword";

        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@Keyword", "%" + keyword + "%");

            try
            {
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        string lectureID = reader["강의ID"].ToString();
                        string dayOfWeek = reader["요일"].ToString();
                        string subject = reader["과목"].ToString();
                        string content = reader["수업내용"].ToString();
                        string teacher = reader["강사"].ToString();
                        string room = reader["강의실"].ToString();

                        Lecture lecture = new Lecture(lectureID, dayOfWeek, subject, content, teacher, room);
                        list.Add(lecture);
                    }
                }
            }
            catch (Exception ex)
            {
                lbltable_title.Text = "오류 발생: " + ex.Message;
                return;
            }
        }

        // 결과 바인딩
        if (list.Count > 0)
        {
            dlstSearch.DataSource = list;
            dlstSearch.DataBind();
            lbltable_title.Text = "검색"; // 메시지 초기화
        }
        else
        {
            dlstSearch.DataSource = null;
            dlstSearch.DataBind();
            lbltable_title.Text = "검색 결과가 없습니다.";
        }
    }


    private void ShowMessage(string message)
    {
        // 에러 메시지를 출력하거나 처리하는 로직
        lbltable_title.Text = message; // lblMessage는 페이지에 추가한 Label 컨트롤
    }

    protected void searchResContent_Click(object sender, EventArgs e)
    {
        // 강의 ID를 CommandArgument에서 가져옴
        string lectureID = ((LinkButton)sender).CommandArgument;

        if (!string.IsNullOrEmpty(lectureID))
        {
            // LectureInfo.aspx로 리다이렉트, 강의 ID를 쿼리 문자열로 전달
            string queryString = "LectureID=" + Server.UrlEncode(lectureID);
            Response.Redirect("~/LectureInfo.aspx?" + queryString);
        }
        else
        {
            // 강의 ID가 없는 경우 처리
            ShowMessage("강의 ID가 전달되지 않았습니다.");
        }
    }
}