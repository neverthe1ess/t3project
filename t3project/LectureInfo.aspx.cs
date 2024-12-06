using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LectureInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadLectureInfo();
        }

        lblLectureTime.Text = Request.QueryString["lecture"];

        // if(관리자가 아니면)
        //btnLectureModify.Visible = false;
        //btnLectureRemove.Visible = false;
    }

    /// <summary>
    /// 데이터베이스에서 수업 정보를 가져와 화면에 표시
    /// </summary>
    private void LoadLectureInfo()
    {
        // Web.config에 저장된 연결 문자열 가져오기
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

        // 예제: 수업 정보를 특정 ID 기준으로 가져오는 쿼리
        string query = "SELECT 강사, 과목, 수업시간, 수업내용, 메모 FROM lecture WHERE LectureID = @LectureID";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    // ModifyLecture에서 전달된 LectureID를 사용
                    string lectureID = Request.QueryString["LectureID"];

                    if (string.IsNullOrEmpty(lectureID))
                    {
                        lbltable_title.Text = "수업 ID가 전달되지 않았습니다.";
                        return;
                    }

                    command.Parameters.AddWithValue("@LectureID", lectureID);

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                        {
                            lblTeacherName.Text = reader["강사"].ToString();
                            lblLectureTitle.Text = reader["과목"].ToString();
                            lblLectureTime.Text = reader["수업시간"].ToString();
                            lblLectureDescription.Text = reader["수업내용"].ToString();
                            lblNote.Text = reader["메모"].ToString();
                        }
                        else
                        {
                            lbltable_title.Text = "수업 정보를 찾을 수 없습니다.";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lbltable_title.Text = "수업 정보 로드 중 오류 발생: " + ex.Message;
            }
        }
    }
}
