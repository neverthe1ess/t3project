<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AddLecture.aspx.cs" Inherits="AddLecture" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="app3.css" rel="stylesheet" type="text/css" />
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
               <img class ="logoimg" src="logo.png" alt="로고 이미지" />
               <span>&nbsp;&nbsp;|&nbsp;&nbsp;학원 시간표 시스템</span>
               </a>
           </div>
           <div class="navbar_function">
              <a class="navbar_button" href="/LectureInfo.aspx">수업관리 </a>
              <a class="navbar_button" href="/" >게시판</a>
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
           <asp:Label ID="lbltable_title" runat="server" Text="수업등록"></asp:Label>
       </div>
       <div class="lecture_infoContainer">
           <p class ="lecture_container_title">수업정보 등록(관리자)</p>
           <div class ="lecture_info_body"> 
               <div>
                   <span class="title">수업시간</span>
                   <asp:Label class="body" ID="lblLectureTime" runat="server" Text="13:00~14:00"></asp:Label>
               </div>
               <hr />
               <div>
                   <span class="title">강사이름</span>
                   <asp:DropDownList class="body" ID="ddlTeacherList" runat="server" >
                       <asp:ListItem>이정빈T</asp:ListItem>
                       <asp:ListItem>차영욱T</asp:ListItem>
                       <asp:ListItem>이철희T</asp:ListItem>
                       <asp:ListItem>이은서T</asp:ListItem>
                   </asp:DropDownList>
                    
               </div>
               <div>
                   <span class="title">수업장소</span>
                   <asp:Label class="body" ID="lblLectureRoom" runat="server" Text="1강의실"></asp:Label>
               </div>
               <div>
                   <span class="title">수업내용</span>
                   <asp:TextBox CssClass ="form_box" ID="tbLectureDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                  
               </div>
               <hr />
               <div>
                   <span class="title">메모내용</span>
                   <asp:TextBox CssClass ="form_box" style ="height:50px" ID="tbMemo" runat="server"></asp:TextBox>
               </div>
           </div>
           <div style="margin-top:15px">
               <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" />
               <asp:Button CssClass ="button_function" ID="btnLectureModify" runat="server" Text="강의 등록" />
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
