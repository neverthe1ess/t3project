using System;
using System.Configuration;
using System.Data.SqlClient;

public partial class LectureInfo : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadLectureInfo();
        }
    }

    protected void btnLectureModify_Click(object sender, EventArgs e)
    {
        string lectureID = GetLectureID(); // LectureID 가져오기
        if (!string.IsNullOrEmpty(lectureID))
        {
            // ModifyLecture.aspx로 LectureID 전달
            string queryString = "LectureID=" + Server.UrlEncode(lectureID); // lectureID 값을 URL 인코딩
            Response.Redirect("Admin/ModifyLecture.aspx?" + queryString);

        }
        else
        {
            ShowMessage("수업 ID가 전달되지 않았습니다.");
        }
    }

    protected void btnLectureRemove_Click(object sender, EventArgs e)
    {
        string lectureID = GetLectureID();
        if (lectureID != null)
        {
            DeleteLecture(lectureID);
        }
        else
        {
            ShowMessage("수업 ID가 전달되지 않았습니다.");
        }
    }

    private void LoadLectureInfo()
    {
        string lectureID = GetLectureID();
        if (lectureID == null)
        {
            ShowMessage("수업 ID가 전달되지 않았습니다.");
            return;
        }

        string query = "SELECT 강사, 과목, 시간, 수업내용, 메모 FROM class WHERE 강의ID = @LectureID";
        ExecuteQuery(query, lectureID, reader =>
        {
            if (reader.Read())
            {
                lblTeacherName.Text = reader["강사"].ToString();
                lblLectureTitle.Text = reader["과목"].ToString();
                lblLectureDescription.Text = reader["수업내용"].ToString();
                lblNote.Text = reader["메모"].ToString();
            }
            else
            {
                inVisibleButton();
                ShowMessage("수업 정보를 찾을 수 없습니다. 강의를 등록하세요!");
            }
        });
    }

    private void inVisibleButton()
    {
        btnLectureModify.Visible = false;
        btnLectureRemove.Visible = false;
        btnTeacherAdd.Visible = true;
    }



    private void DeleteLecture(string lectureID)
    {
        string query = "UPDATE class SET 과목 = NULL, 강사= NULL, 수업내용= NULL, 메모 =NULL  WHERE 강의ID =@LectureID";
        ExecuteNonQuery(query, lectureID, rowsAffected =>
        {
            ShowMessage(rowsAffected > 0
                ? "강의가 성공적으로 삭제되었습니다."
                : "강의를 삭제하는 중 문제가 발생했습니다.");
        });
    }


    private string GetLectureID()
    {
        return Request.QueryString["LectureID"];
    }

    private void ExecuteQuery(string query, string lectureID, Action<SqlDataReader> handleData)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@LectureID", lectureID);
            try
            {
                connection.Open();
                using (SqlDataReader reader = command.ExecuteReader())
                {
                    handleData(reader);
                }
            }
            catch (Exception ex)
            {
                ShowMessage("데이터 처리 중 오류 발생: " + ex.Message);
            }
        }
    }

    private void ExecuteNonQuery(string query, string lectureID, Action<int> handleResult)
    {
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        using (SqlCommand command = new SqlCommand(query, connection))
        {
            command.Parameters.AddWithValue("@LectureID", lectureID);
            try
            {
                connection.Open();
                int rowsAffected = command.ExecuteNonQuery();
                handleResult(rowsAffected);
            }
            catch (Exception ex)
            {
                ShowMessage("데이터 처리 중 오류 발생: " + ex.Message);
            }
        }
    }

    private void ShowMessage(string message)
    {
        lbltable_title.Text = message;
    }
}


