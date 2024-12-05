using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Board_Read : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            // 조회수 증가
            string updateString = "UPDATE board SET read_count = read_count + 1";
            updateString += "WHERE serial_no=" + Request["sn"];

            // 쿼리 문자열로 받은 데이터 행 선택하기
            string selectString = "SELECT * FROM board WHERE serial_no=" + Request["sn"];

            DBConn conn = new DBConn();
            conn.ExecuteNonQuery(updateString);
            SqlDataReader dr = conn.ExecuteReader(selectString);

            if (dr.Read())
            {
                lblContentWriter.Text = dr["writer"].ToString();
                tbContentDescription.Text = dr["message"].ToString();
                lblBoardContentTitle.Text = dr["title"].ToString();

                btnModifyContent.PostBackUrl = "~/Board/Modify.aspx?sn=" + dr["serial_no"].ToString();
                btnDeleteContent.PostBackUrl = "~/Board/Delete.aspx?sn=" + dr["serial_no"].ToString();
            }
            dr.Close();
            conn.Close();
        }
    }
}