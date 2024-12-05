using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Board_Modify : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string selectString = "SELECT * FROM board WHERE serial_no=" + Request["sn"];
            DBConn conn = new DBConn();
            SqlDataReader dr = conn.ExecuteReader(selectString);

            if (dr.Read())
            {
                lblContentWriter.Text = dr["writer"].ToString();
                lblBoardContentTitle.Text = dr["title"].ToString();
                tbContentDescription.Text = dr["message"].ToString();
            }
            dr.Close();
            conn.Close();
        }
    }


    protected void btnModifyContent_Click(object sender, EventArgs e)
    {
        string updateString = "UPDATE board SET writer=@writer, ";
        updateString += "title=@title, message=@message ";
        updateString += "WHERE serial_no=" + Request["sn"];

        DBConn conn = new DBConn();
        SqlCommand cmd = new SqlCommand(updateString, conn.getConn());
        cmd.Parameters.AddWithValue("@writer", lblContentWriter.Text);
        cmd.Parameters.AddWithValue("@title", lblBoardContentTitle.Text);
        cmd.Parameters.AddWithValue("@message", tbContentDescription.Text);

        cmd.ExecuteNonQuery();
        conn.Close();

        Response.Redirect("~/Board/List.aspx");
    }
}