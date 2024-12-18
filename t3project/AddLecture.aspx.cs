using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddLecture : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            ddlLectureDay.Items.Insert(0, new ListItem("수업요일", "0"));
            ddlLectureTime.Items.Insert(0, new ListItem("수업시간", "0"));
            BindTeacherNameDropDownList();
            BindRoomsDropDownList();
        }
    }

    private void BindTeacherNameDropDownList() {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = "SELECT 강사 FROM teacher";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                ddlTeacherList.DataSource = reader;
                ddlTeacherList.DataTextField = "강사";
                ddlTeacherList.DataValueField = "강사";
                ddlTeacherList.DataBind();
                ddlTeacherList.Items.Insert(0, new ListItem("강사이름", "0"));
            }
        } 
    }
    private void BindRoomsDropDownList()
    {
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string query = "SELECT 강의실 FROM classroom";
            using (SqlCommand cmd = new SqlCommand(query, con))
            {
                con.Open();
                SqlDataReader reader = cmd.ExecuteReader();

                ddlLectureRooms.DataSource = reader;
                ddlLectureRooms.DataTextField = "강의실";
                ddlLectureRooms.DataValueField = "강의실";
                ddlLectureRooms.DataBind();
                ddlLectureRooms.Items.Insert(0, new ListItem("수업장소", "0"));
            }
        }
    }

    protected void btnLectureModify_Click(object sender, EventArgs e)
    {
        if(ddlLectureDay.SelectedIndex == 0 || ddlLectureRooms.SelectedIndex == 0 || ddlLectureTime.SelectedIndex == 0 || ddlTeacherList.SelectedIndex == 0)
        {
            lbltable_title.Text = "필수적인 입력을 하지 않았습니다.";
            lbltable_title.Text = ddlTeacherList.SelectedItem.Text;
        }
        using (SqlConnection con = new SqlConnection(connectionString))
        {
            string insertQuery = "INSERT INTO class (강의ID, 강사, 과목, 시간, 수업내용, 메모, 요일, 강의실) VALUES (@lectureID, @teacher, @subject, @time, @tbLectureDescription, @memo, @day, @rooms)";
            using (SqlCommand cmd = new SqlCommand(insertQuery, con))
            {
                cmd.Parameters.AddWithValue("@lectureid", getLectureid());
                cmd.Parameters.AddWithValue("@teacher", ddlTeacherList.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@subject", tbLectureSubject.Text);
                cmd.Parameters.AddWithValue("@time", 3);
                cmd.Parameters.AddWithValue("@tbLectureDescription", tbLectureDescription.Text);
                cmd.Parameters.AddWithValue("@memo", tbMemo.Text);
                cmd.Parameters.AddWithValue("@day", ddlLectureDay.SelectedItem.Text);
                cmd.Parameters.AddWithValue("@rooms", ddlLectureRooms.SelectedItem.Text);

                con.Open();
                int rowsAffected = cmd.ExecuteNonQuery();

                if (rowsAffected > 0)
                {
                    lbltable_title.Text = "등록 성공";
                    Response.Redirect("~/index.aspx");
                }
                else
                {
                    lbltable_title.Text = "등록 실패";
                }
            }
        }
    }
    private string getLectureid()
    {
        int lectureid = ddlLectureRooms.SelectedIndex * 10 + ddlLectureTime.SelectedIndex;
        return lectureid.ToString();
    }
}