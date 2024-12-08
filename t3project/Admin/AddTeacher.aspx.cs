using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Admin_AddTeacher : System.Web.UI.Page
{
    private string connectionString = WebConfigurationManager.ConnectionStrings["ASPNET_ConnectionString"].ConnectionString;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAddTeacher_Click(object sender, EventArgs e)
    {
        if (teacherPhotoUpload.HasFile)
        {
            string lastFileNameNumber = GetlastFileNameNumberByDirectory();
            int saveFileNumber = int.Parse(lastFileNameNumber) + 1;
            string saveFileNumberStr = saveFileNumber.ToString();
            string fileName = Server.MapPath("~/public/images") + @"\" + "teacher" + saveFileNumberStr + ".jpg";
            teacherPhotoUpload.SaveAs(fileName);
            InsertTeacherInfoToDatabase(saveFileNumber);
        }
    }
    private void InsertTeacherInfoToDatabase(int teacherId)
    {
        SqlConnection conn = new SqlConnection(connectionString);
        SqlDataAdapter da = new SqlDataAdapter();

        string selectSQL = "SELECT * FROM teacher";
        SqlCommand cmdSelect = new SqlCommand(selectSQL, conn);
        da.SelectCommand = cmdSelect;

        string insertSQL = "INSERT INTO teacher";
        insertSQL += "(강사, 강사설명) VALUES "; 
        insertSQL += "(@tname, @tdes)";
        SqlCommand cmdInsert = new SqlCommand(insertSQL, conn);
        cmdInsert.Parameters.AddWithValue("@tname", tbTeacherName.Text);
        cmdInsert.Parameters.AddWithValue("@tdes", tbTeacherDescription.Text);
        da.InsertCommand = cmdInsert;

        DataSet ds = new DataSet();

        try
        {
            // DATASET에 가상 데이터베이스 테이블 생성 
            da.Fill(ds, "teacher");
            // 테이블 선택
            DataTable table = ds.Tables["teacher"];

            // 새로 삽입할 행 
            DataRow row = table.NewRow();
            row["강사"] = tbTeacherName.Text;
            row["강사설명"] = tbTeacherDescription.Text;

            table.Rows.Add(row);

            da.Update(ds, "teacher");
        }
        catch (Exception error) {
            errorMsg.Visible = true;
            errorMsg.Text = error.Message;
        }
        finally
        {
            // exception 없이 잘 수행시 성공 페이지 표시
            Response.Redirect("/ProcessResult.aspx");
        }
    } 

    // 사진 파일은 데이터베이스가 아닌 서버의 public/images에 저장함. 추가할때마다 1씩 증가하기 위해 마지막 파일의 번호를 반환, 로직 간소화를 위해 .jpg만 가능
    private string GetlastFileNameNumberByDirectory()
    {
        string directoryPath = Server.MapPath("~/public/images");
        string lastFileNameNumber = "0";
        DirectoryInfo directoryInfo = new DirectoryInfo(directoryPath);

        if (directoryInfo.Exists) {
            FileInfo[] files = directoryInfo.GetFiles().OrderBy(f => f.Name).ToArray(); // 정렬 후 배열로 변환

            if (files.Length > 0)
            {
                FileInfo lastFile = files[files.Length - 1];
                lastFileNameNumber = System.Text.RegularExpressions.Regex.Match(lastFile.Name, @"\d+").Value; //teacher[num].jpg 에서 num만 추출(정규 표현식)
            }
            else
            {
                Console.WriteLine("디렉토리에 파일이 없습니다.");
            }
        }
        else
        {
            Console.WriteLine("디렉토리가 존재하지 않습니다.");
        }
        return lastFileNameNumber;
    }
}