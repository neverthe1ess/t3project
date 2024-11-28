using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (GetIsLogin())
        {
            // 로그인 되어 있다면, 버튼 이름을 로그아웃으로 변경
            loginBtn.Text = "&nbsp; &nbsp; 로그아웃";
        }
    }
    protected void loginBtn_Click(object sender, EventArgs e)
    {
        if (!GetIsLogin())
        {
            // 로그인하지 않은 경우, 로그인 페이지로 리다이렉트
            Response.Redirect("~/Account/Login.aspx");
        }
        else
        {
            // 로그아웃　버튼　눌렀을　때
            FormsAuthentication.SignOut();
            loginBtn.Text = "&nbsp; &nbsp; 로그인";
            Response.Redirect("~/index.aspx");
        }
    }

    private static bool GetIsLogin()
    {
        return HttpContext.Current.User.Identity.IsAuthenticated;
    }


}
