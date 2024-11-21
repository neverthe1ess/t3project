<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Account_Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="../public/css/login.css" rel="stylesheet" type="text/css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
<form id="form1" runat="server">
   <header>
       <nav class="navbars">
          <div class ="navbars_all">
            <div class="navbar_logo" style="font-weight:600">
               <a href="/Default.aspx" style="color:#A2988F; display:flex";>
               <img class ="logoimg" src="../logo.png" alt="로고 이미지" />
               <span>&nbsp;&nbsp;|&nbsp;&nbsp;학원 시간표 시스템</span>
               </a>
           </div>
           <div class="navbar_function">
              <a class="navbar_button" href="/LectureInfo.aspx">수업관리 </a>
              <a class="navbar_button" href="/Board.aspx" >게시판</a>
              <a class="navbar_button" href="/" >검색</a>
           </div> 
            <div style="flex:1 0 0">
           </div>
           <a style="font-size:24px" href="/"> &nbsp; &nbsp; 로그인 </a>
         </div> 
       </nav>
       <hr class ="navbar_hr" style="background-color: #e0d9d3;"/>   
   </header>
   <main>
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
               <p class ="sign_up_message">회원이 아니라시면, <a href="/"><span style="color:#0a66c2;">&nbsp;회원가입</span></a>하세요!</p>

           </div>
       </div>
   </main>
  <footer>
      <div>
          <span class="footer_title">
              <b>TTT.COM</b>
          </span>
      </div>
      <div>             
          <span>
              <p>Designed By 이정빈, 조희원</p>
          </span></div>
      <div></div>
      <div></div>
 </footer>
</form>
</body>
</html>