﻿using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class index : System.Web.UI.Page
{
    private string controlBtnId = "";

    protected void Page_Load(object sender, EventArgs e)
    {
        
        // 초기 페이지일 때 오늘 요일 강조 (쿼리스트링이 없을 때)
        if (Request.QueryString["dayof"] == null)
        {
            DateTime nowDay = DateTime.Now;
            int day = (int)nowDay.DayOfWeek;
            controlBtnId = "btnDay" + day.ToString();
        }
        else // 선택한 요일 강조
        {
            controlBtnId = Request.QueryString["dayof"];
        }
        btnColor_Set(controlBtnId);
    }

    // 선택한 요일을 색 변경
    private void btnColor_Set(string controlBtnId)
    {
        Control placeHolder = this.Master.FindControl("maincontent");
        Button dayButton = (Button)placeHolder.FindControl(controlBtnId);
        if (dayButton != null)
        {
            dayButton.BackColor = System.Drawing.Color.SlateGray;
            dayButton.ForeColor = System.Drawing.Color.White;
        }
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

    private void LoadTimetableData()
    {
        // 데이터베이스 연결 문자열 (Web.config에 저장된 ConnectionString 사용)
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;

        // 쿼리를 통해 데이터 가져오기 TODO 고치기
        string query = "SELECT 강사, 과목 FROM class ";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            SqlCommand command = new SqlCommand(query, connection);

            try
            {
                connection.Open();
                object result = command.ExecuteScalar();

                if (result != null)
                {
                    // 가져온 데이터를 LinkButton의 Text 속성에 할당
                    timetable_11.Text = result.ToString();
                }
                else
                {
                    timetable_11.Text = "No Data Available";
                }
            }
            catch (Exception ex)
            {
                // 에러 처리
                timetable_11.Text = "Error: " + ex.Message;
            }
        }
    }



    protected void timetable_Click(object sender, EventArgs e)
    {
        // 클릭된 강의 ID를 가져와 쿼리스트링으로 전달
        string lectureId = ((LinkButton)sender).ID;
        string[] lectureTokens = lectureId.Split('_');
        if (lectureTokens.Length > 1)
        {
            string lectureNumber = lectureTokens[1];

            // LectureInfo 페이지로 강의 ID 전달
            string queryString = "LectureID=" + Server.UrlEncode(lectureNumber);
            Response.Redirect("/LectureInfo.aspx?" + queryString);
        }
        else
        {
            // 잘못된 형식의 ID 처리
            // 필요시 오류 메시지 처리 로직 추가 가능
        }
    }


    protected void btnDay_Click(object sender, EventArgs e)
    {
        string sendByObjectName = ((Button)sender).ID; // 버튼 ID 가져오기
        string btnQueryString = "dayof=" + Server.UrlEncode(sendByObjectName);
        Response.Redirect("index.aspx?" + btnQueryString);
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




    