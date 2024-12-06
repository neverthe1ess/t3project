using System;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;

public partial class ModifyLecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            LoadTeacherData(); // 강사 데이터 로드
            LoadClassData();   // 과목 데이터 로드
        }
    }

    /// <summary>
    /// teacher 테이블의 강사 데이터를 DropDownList에 로드
    /// </summary>
    private void LoadTeacherData()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
        string query = "SELECT 강사 FROM teacher";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        teacher_name.Items.Clear();
                        teacher_name.Items.Add(new ListItem("-- 선택하세요 --", ""));

                        while (reader.Read())
                        {
                            ListItem item = new ListItem
                            {
                                Text = reader["강사"].ToString(),
                            };
                            teacher_name.Items.Add(item);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lbltable_title.Text = "강사 데이터 로드 중 오류 발생: " + ex.Message;
            }
        }
    }

    /// <summary>
    /// class 테이블의 과목 데이터를 DropDownList에 로드
    /// </summary>
    private void LoadClassData()
    {
        string connectionString = ConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
        string query = "SELECT 과목 FROM class";

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        class_name.Items.Clear();
                        class_name.Items.Add(new ListItem("-- 선택하세요 --", ""));

                        while (reader.Read())
                        {
                            ListItem item = new ListItem
                            {
                                Text = reader["과목"].ToString(),
                            };
                            class_name.Items.Add(item);
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                lbltable_title.Text = "과목 데이터 로드 중 오류 발생: " + ex.Message;
            }
        }
    }

    /// <summary>
    /// 강사 선택 변경 시 이벤트 처리
    /// </summary>
    protected void Teacher_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(teacher_name.SelectedValue))
        {
            string selectedTeacherID = teacher_name.SelectedValue;
            string selectedTeacherName = teacher_name.SelectedItem.Text;
            lbltable_title.Text = "선택된 강사: " + selectedTeacherName;
        }
        else
        {
            lbltable_title.Text = "강사가 선택되지 않았습니다.";
        }
    }

    /// <summary>
    /// 과목 선택 변경 시 이벤트 처리
    /// </summary>
    protected void Class_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (!string.IsNullOrEmpty(class_name.SelectedValue))
        {
            string selectedClassID = class_name.SelectedValue;
            string selectedClassName = class_name.SelectedItem.Text;
            lbltable_title.Text = "선택된 과목: " + selectedClassName;
        }
        else
        {
            lbltable_title.Text = "과목이 선택되지 않았습니다.";
        }
    }
}
