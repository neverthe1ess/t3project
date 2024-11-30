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
    private string connectionString = WebConfigurationManager.ConnectionStrings["ASPNET_ConnectionString"].ConnectionString;
    private string teacherId;
    protected void Page_Load(object sender, EventArgs e)
    {
        teacherId = Request.QueryString["teacherid"];
        int teacherIdNum = int.Parse(teacherId);
        DataRow teacher = GetTeacherDataFromDatabase(teacherIdNum);
        lblteacherName.Text = teacher["teacher_name"].ToString();
        lblteacherDescription.Text = teacher["teacher_description"].ToString(); ;
    }

    private DataRow GetTeacherDataFromDatabase(int teacherId)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlCommand cmd = new SqlCommand("SELECT teacher_id, teacher_name, teacher_description FROM TEACHER WHERE teacher_id = @tid", conn);
        cmd.Parameters.AddWithValue("@tid", teacherId);
        SqlDataAdapter da = new SqlDataAdapter(cmd);

        // 가상의 데이터베이스의 테이블 TEACHER
        DataSet ds = new DataSet();
        da.Fill(ds, "TEACHER");
        DataRow result = ds.Tables["TEACHER"].Rows[0];

        return result;
    }

    protected void btnLectureRemove_Click(object sender, EventArgs e)
    {
        string queryString = "teacherid=" + Server.UrlEncode(teacherId);
        Response.Redirect("~/Admin/DeleteTeacher.aspx?" + queryString);
    }
}