using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

public partial class Board_Delete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DBConn conn = new DBConn();

        string deleteString = "DELETE FROM board WHERE serial_no=" + Request["sn"];
        conn.ExecuteNonQuery(deleteString);

        conn.Close();
        Response.Redirect("~/Board/List.aspx");


    }
}