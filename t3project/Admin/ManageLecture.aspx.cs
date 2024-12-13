using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_ManageLecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadLectureData();
        }
    }
    private void LoadLectureData()
    {
        // 데이터베이스 연결 문자열 가져오기 (Web.config에 저장된 ConnectionString 사용)
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

        // 수업 데이터를 담을 리스트
        List<Lecture> list = new List<Lecture>();

        string query = "SELECT 강의ID, 요일, 과목, 수업내용, 강사, 강의실 FROM class";

        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            try
            {
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        // 데이터 읽기
                        string lectureID = reader["강의ID"].ToString();
                        string dayOfWeek = reader["요일"].ToString();
                        string subject = reader["과목"].ToString();
                        string content = reader["수업내용"].ToString();
                        string teacher = reader["강사"].ToString();
                        string room = reader["강의실"].ToString();

                        // Lecture 객체 생성 후 리스트에 추가
                        Lecture lecture = new Lecture(lectureID, dayOfWeek, subject, content, teacher, room);
                        list.Add(lecture);
                    }
                }
            }
            catch (Exception ex)
            {
                // 에러 처리
                ShowMessage("데이터 로드 중 오류 발생: " + ex.Message);
                return;
            }
        }
        // DataList에 데이터 바인딩
        dlstLecture.DataSource = list;
        dlstLecture.DataBind();
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