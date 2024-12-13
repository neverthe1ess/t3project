using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;

public partial class Admin_InfoTeacher : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["t3projectConnectionString"].ConnectionString;
    private string teacherId;
    protected void Page_Load(object sender, EventArgs e)
    {
        teacherId = Request.QueryString["teacherid"];
        int teacherIdNum = int.Parse(teacherId);
        DataRow teacher = GetTeacherDataFromDatabase(teacherIdNum);
        lblteacherName.Text = teacher["강사"].ToString();
        lblteacherDescription.Text = teacher["강사설명"].ToString(); ;
    }

    private DataRow GetTeacherDataFromDatabase(int teacherId)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT 강사, 강사설명 FROM teacher", conn);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        // 가상의 데이터베이스의 테이블 TEACHER
        DataSet ds = new DataSet();
        da.Fill(ds, "teacher");
        DataRow result = ds.Tables["teacher"].Rows[teacherId - 1];

        return result;
    }

    protected void btnLectureRemove_Click(object sender, EventArgs e)
    {
        string queryString = "teacherid=" + Server.UrlEncode(teacherId);
        Response.Redirect("~/Admin/DeleteTeacher.aspx?" + queryString);
    }
}