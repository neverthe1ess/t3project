using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Board_Write : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSaveContent_Click(object sender, EventArgs e)
    {
        string insertString = "INSERT INTO board(writer, title, message, ";
        insertString += "ref_id, inner_id, depth, read_count, del_flag, reg_date)";
        insertString += "VALUES(@writer, @title, @message, 0, 0, 0, 0, ";
        insertString += "'N', GETDATE())";

        string updateString = "UPDATE board SET ref_id = serial_no WHERE ref_id = 0";

        DBConn conn = new DBConn();
        SqlCommand cmd = new SqlCommand(insertString, conn.getConn());
        cmd.Parameters.AddWithValue("@writer", txtWriter.Text);
        cmd.Parameters.AddWithValue("@title", txtTitle.Text);
        cmd.Parameters.AddWithValue("@message", tbContentDescription.Text);
        try
        {
            cmd.ExecuteNonQuery();
            conn.ExecuteNonQuery(updateString);
        }
        catch (Exception error)
        {
            Response.Write(error.ToString());
        }
        finally
        {
            conn.Close();
        }
        Response.Redirect("~/Board/List.aspx");
    }
}