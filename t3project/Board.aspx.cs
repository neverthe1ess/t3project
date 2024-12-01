using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Board : System.Web.UI.Page
{
    private string webMemoDirString;
    protected void Page_Load(object sender, EventArgs e)
    {
        webMemoDirString = Server.MapPath("~/App_Data/Memo");
        if (!IsPostBack)
        {
            dlstMemo.DataSource = GetAllMemo();
            dlstMemo.DataBind();
        }
    }

    private List<Memo> GetAllMemo()
    {
        List<Memo> lstMemo = new List<Memo>();

        DirectoryInfo memoDir = new DirectoryInfo(webMemoDirString);
        foreach (FileInfo memoFile in memoDir.GetFiles())
        {
            lstMemo.Add(GetMemoFromFile(memoFile));
        }

        return lstMemo;
    }

    private Memo GetMemoFromFile(FileInfo memoFile)
    {
        Memo newMemo = new Memo();

        StreamReader sr = memoFile.OpenText();
        newMemo.Title = sr.ReadLine();
        newMemo.Written = DateTime.Parse(sr.ReadLine());
        newMemo.FileName = sr.ReadLine();
        string readLine;
        do
        {

            readLine = sr.ReadLine();
            if (readLine != null) newMemo.Content += readLine;
        } while (readLine != null);

        sr.Close();

        return newMemo;
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        string fileName = webMemoDirString + @"\" + DateTime.Now.Ticks.ToString() + ".txt";
        FileInfo newFile = new FileInfo(fileName);
        StreamWriter sw = newFile.CreateText();

        sw.WriteLine(txtTitle.Text);
        sw.WriteLine(DateTime.Now.ToString());
        sw.WriteLine(fileName);
        sw.WriteLine(txtContent.Text);
        sw.Close();

        dlstMemo.DataSource = GetAllMemo();
        dlstMemo.DataBind();

        txtTitle.Text = "";
        txtContent.Text = "";
    }

    protected void dlstMemo_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        HiddenField hdnFileName = e.Item.FindControl("hdnFileName") as HiddenField;
        string fileName = hdnFileName.Value;
        File.Delete(fileName);

        dlstMemo.DataSource = GetAllMemo();
        dlstMemo.DataBind();
    }
}