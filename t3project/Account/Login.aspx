<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/login.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
           <asp:Label ID="lbltable_title" runat="server" Text="로그인"></asp:Label>
           <div class ="login_container">
               <div>
                   <asp:TextBox cssClass="login_element" ID ="tbId" runat="server" placeholder="아이디"></asp:TextBox>
               </div>
               <div style="margin-top:10px">
                   <asp:TextBox cssClass="login_element" ID="tbPassword" runat="server" TextMode="Password" placeholder="비밀번호"></asp:TextBox>
                   <asp:RequiredFieldValidator CssClass="login_validator" ID="RequiredFieldValidator1" runat="server" ErrorMessage="아이디는 필수입니다!" ControlToValidate="tbId" Height="30px"></asp:RequiredFieldValidator>
                   <asp:RequiredFieldValidator CssClass="login_validator" ID="RequiredFieldValidator2" runat="server" ErrorMessage="비밀번호는 필수입니다!" ControlToValidate="tbPassword" Height="30px"></asp:RequiredFieldValidator>
               </div>
               <asp:Button CssClass="login_button" ID="btnLogin" runat="server" Text="로그인" />
               <p class ="sign_up_message">회원이 아니라시면, <a href="/Account/Register.aspx"><span style="color:#0a66c2;">&nbsp;회원가입</span></a>하세요!</p>
           </div>
       </div>
</asp:Content>

