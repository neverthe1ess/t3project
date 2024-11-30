using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_DeleteTeacher : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["ASPNET_ConnectionString"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        string teacherid = Request.QueryString["teacherid"];
        int teacheridNum = int.Parse(teacherid);
        DeleteTeacherDataFromDatabase(teacheridNum);
    }

    private void DeleteTeacherDataFromDatabase(int teacherId)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlDataAdapter da = new SqlDataAdapter();

        //selectCommand는 da 생성(사용) 시 필수
        string selectSQL = "SELECT * FROM TEACHER WHERE teacher_id = @pid";
        SqlCommand cmdSelect = new SqlCommand(selectSQL, conn);
        cmdSelect.Parameters.AddWithValue("@pid", teacherId);
        da.SelectCommand = cmdSelect;

        // DELETE COMMAND
        string deleteSQL = "DELETE FROM TEACHER WHERE teacher_id = @pid";
        SqlCommand cmdDelete = new SqlCommand(deleteSQL, conn);
        cmdDelete.Parameters.AddWithValue("@pid", teacherId);
        da.DeleteCommand = cmdDelete;

        DataSet ds = new DataSet();

        try
        {
            da.Fill(ds, "TEACHER");
            DataTable table = ds.Tables["TEACHER"];
            //행 삭제
            DataRow[] deleteRows = table.Select("teacher_id=" + teacherId.ToString());
            foreach (DataRow row in deleteRows)
            {
                row.Delete();
            }

            da.Update(ds, "TEACHER");
        }
        catch(Exception error)
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = error.Message;
        }
        finally
        {
            DeleteTeacherImageFromFileSystem(teacherId);
            Response.Redirect("~/ProcessResult.aspx");
            
        }
    }

    private void DeleteTeacherImageFromFileSystem(int teacherId)
    {
        string directoryPath = Server.MapPath("~/public/images");
        string fileName = "teacher" + teacherId.ToString() +".jpg";
    
        FileInfo deleteImgFile = new FileInfo(Path.Combine(directoryPath, fileName));
        if (deleteImgFile.Exists)
        {
            try
            {
                deleteImgFile.Delete();
            }
            catch (Exception error) {
                lblErrorMsg.Visible = true;
                lblErrorMsg.Text = error.Message;
            }
        }
        else
        {
            lblErrorMsg.Visible = true;
            lblErrorMsg.Text = "이미지 파일이 존재하지 않습니다. ";
        }
    }
}