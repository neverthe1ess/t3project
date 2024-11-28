<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
           <asp:Label ID="lbltable_title" runat="server" Text="로그인"></asp:Label>
           <div class ="login_container">
               <asp:LoginView ID="LoginView1" runat="server">
                   <AnonymousTemplate>
                       <asp:Login ID="Login1" runat="server" style="width:100%;">
                           <LayoutTemplate>
                               <div>
                                   <asp:TextBox cssClass="login_element" ID ="UserName" runat="server" placeholder="아이디"></asp:TextBox>
                               </div>
                               <div style="margin-top:10px">
                                   <asp:TextBox cssClass="login_element" ID="Password" runat="server" TextMode="Password" placeholder="비밀번호"></asp:TextBox>
                               </div>
                               <div>
                                   <asp:RequiredFieldValidator ID="UserNameRequired" cssClass="login_validator" runat="server" ControlToValidate="UserName" ErrorMessage="아이디가 필요합니다." ToolTip="사용자 이름이 필요합니다." ValidationGroup="ctl00$Login1"></asp:RequiredFieldValidator>
                                   <asp:RequiredFieldValidator ID="PasswordRequired" cssClass="login_validator" runat="server" ControlToValidate="Password" ErrorMessage="비밀번호가 필요합니다." ToolTip="비밀번호가 필요합니다." ValidationGroup="ctl00$Login1"></asp:RequiredFieldValidator>
                                   <br />
                                   <asp:CheckBox ID="RememberMe" runat="server" Text="&nbsp;&nbsp;사용자 이름 및 암호 저장" style="font-size:20px; font-weight:400;"/>
                                   <br />
                                   <asp:Label cssClass="login_validator" ID="FailureText" runat="server" EnableViewState="False"></asp:Label>
                                   <asp:Button CssClass="login_button" ID="LoginButton" runat="server" CommandName="Login" Text="로그인" ValidationGroup="ctl00$Login1" />
                                   <p class ="sign_up_message">회원이 아니라시면, <a href="/Account/Register.aspx"><span style="color:#0a66c2;">&nbsp;회원가입</span></a>하세요!</p>
                               </div>
                           </LayoutTemplate>
                       </asp:Login>
                   </AnonymousTemplate>
               </asp:LoginView>
           </div>
        </div>
</asp:Content>

