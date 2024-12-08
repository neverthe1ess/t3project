using System;
using System.Data.SqlClient;
using System.Configuration;

public partial class ModifyLecture : System.Web.UI.Page
{
    private string ConnectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadLectureData(); // 강의 데이터 로드
        }
    }

    /// <summary>
    /// Load lecture data using LectureID from query string.
    /// </summary>
    private void LoadLectureData()
    {
        string lectureID = GetLectureID(); // LectureID 가져오기
        if (string.IsNullOrWhiteSpace(lectureID))
        {
            ShowMessage("수업 ID가 제공되지 않았습니다.");
            return;
        }

        string query = "SELECT 강사, 과목, 수업내용, 메모 FROM class WHERE 강의ID = @LectureID";
        using (var connection = new SqlConnection(ConnectionString))
        using (var command = new SqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@LectureID", lectureID);

            try
            {
                connection.Open();
                using (var reader = command.ExecuteReader())
                {
                    if (reader.Read())
                    {
                        tbTeacherName.Text = reader["강사"].ToString();
                        tbClassName.Text = reader["과목"].ToString();
                        tbLectureDescription.Text = reader["수업내용"].ToString();
                        tbMemo.Text = reader["메모"].ToString();
                    }
                    else
                    {
                        ShowMessage("해당 강의 정보를 찾을 수 없습니다.");
                    }
                }
            }
            catch (Exception ex)
            {
                ShowMessage("강의 데이터 로드 중 오류 발생: " + ex.Message);
            }
        }
    }

    /// <summary>
    /// Update lecture information based on user input.
    /// </summary>
    protected void btnLectureModify_Click(object sender, EventArgs e)
    {
        string lectureID = GetLectureID(); // LectureID 가져오기
        if (string.IsNullOrWhiteSpace(lectureID))
        {
            ShowMessage("수업 ID가 제공되지 않았습니다.");
            return;
        }

        string updateSQL = @"UPDATE class 
                             SET 강사 = @Teacher, 과목 = @Class, 수업내용 = @Description, 메모 = @Memo 
                             WHERE 강의ID = @LectureID";
        using (var connection = new SqlConnection(ConnectionString))
        using (var command = new SqlCommand(updateSQL, connection))
        {
            command.Parameters.AddWithValue("@LectureID", lectureID);
            command.Parameters.AddWithValue("@Teacher", tbTeacherName.Text ?? string.Empty);
            command.Parameters.AddWithValue("@Class", tbClassName.Text ?? string.Empty);
            command.Parameters.AddWithValue("@Description", tbLectureDescription.Text ?? string.Empty);
            command.Parameters.AddWithValue("@Memo", tbMemo.Text ?? string.Empty);

            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    ShowMessage("강의 정보가 성공적으로 업데이트되었습니다.");
                    string queryString = "LectureID=" + Server.UrlEncode(lectureID);
                    Response.Redirect("/LectureInfo.aspx?" + queryString); // 수정 완료 후 원래 페이지로 이동
                }
                else
                {
                    ShowMessage("강의 정보 업데이트 실패. 데이터를 확인하세요.");
                }
            }
            catch (Exception ex)
            {
                ShowMessage("강의 정보 업데이트 중 오류 발생: " + ex.Message);
            }
        }
    }

    /// <summary>
    /// Get the LectureID from the query string.
    /// </summary>
    private string GetLectureID()
    {
        return Request.QueryString["LectureID"];
    }

    /// <summary>
    /// Display a message to the user.
    /// </summary>
    private void ShowMessage(string message)
    {
        lbltable_title.Text = message;
    }
}
