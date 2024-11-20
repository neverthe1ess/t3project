<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TeaTime</title>
    <link href="/public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="app.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       <header>
           <nav class="navbars">
              <div class ="navbars_all">
                <div class="navbar_logo" style="font-weight:600">
                   <a href="/" style="color:#A2988F; display:flex";>
                   <img class ="logoimg" src="logo.png" alt="로고 이미지" />
                   <span>&nbsp;&nbsp;|&nbsp;&nbsp;학원 시간표 시스템</span>
                   </a>
               </div>
               <div class="navbar_function">
                  <a class="navbar_button" href="/LectureInfo.aspx">수업관리 </a>
                  <a class="navbar_button" href="/">게시판</a>
                  <a class="navbar_button" href="/">검색</a>
               </div> 
                <div style="flex:1 0 0">
               </div>
               <a style="font-size:24px" href="/"> &nbsp; &nbsp; 로그인 </a>
             </div> 
           </nav>
           <hr class ="navbar_hr" style="background-color: #e0d9d3;"/>   
       </header>
       <main>
          <div class="location_buttonbar">
              <div class ="location_button">
                  <a href="/" class="location_buttons">
                  <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-workspace" viewBox="0 0 16 16" style="margin-left:6px;">
                      <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
                      <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.4 5.4 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2z"/>
                  </svg>안동점</a>
              </div>
              <div class ="location_button">
                  <a href="/" class="location_buttons">
              <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-book-half" viewBox="0 0 16 16" style="margin-left:6px;">
                    <path d="M8.5 2.687c.654-.689 1.782-.886 3.112-.752 1.234.124 2.503.523 3.388.893v9.923c-.918-.35-2.107-.692-3.287-.81-1.094-.111-2.278-.039-3.213.492zM8 1.783C7.015.936 5.587.81 4.287.94c-1.514.153-3.042.672-3.994 1.105A.5.5 0 0 0 0 2.5v11a.5.5 0 0 0 .707.455c.882-.4 2.303-.881 3.68-1.02 1.409-.142 2.59.087 3.223.877a.5.5 0 0 0 .78 0c.633-.79 1.814-1.019 3.222-.877 1.378.139 2.8.62 3.681 1.02A.5.5 0 0 0 16 13.5v-11a.5.5 0 0 0-.293-.455c-.952-.433-2.48-.952-3.994-1.105C10.413.809 8.985.936 8 1.783"/>
              </svg>의성점</a>
              </div>
              <div class ="location_button">
                  <a href="/" class="location_buttons">
              <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-building" viewBox="0 0 16 16" style="margin-left:6px;">
                <path d="M4 2.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3 0a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zM4 5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM7.5 5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zM4.5 8a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5zm2.5.5a.5.5 0 0 1 .5-.5h1a.5.5 0 0 1 .5.5v1a.5.5 0 0 1-.5.5h-1a.5.5 0 0 1-.5-.5zm3.5-.5a.5.5 0 0 0-.5.5v1a.5.5 0 0 0 .5.5h1a.5.5 0 0 0 .5-.5v-1a.5.5 0 0 0-.5-.5z"/>
                <path d="M2 1a1 1 0 0 1 1-1h10a1 1 0 0 1 1 1v14a1 1 0 0 1-1 1H3a1 1 0 0 1-1-1zm11 0H3v14h3v-2.5a.5.5 0 0 1 .5-.5h3a.5.5 0 0 1 .5.5V15h3z"/>
              </svg>구미점</a>
              </div>
              <div class ="location_button">
                  <a href="/" class="location_buttons">
                  <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-person-workspace" viewBox="0 0 16 16" style="margin-left:6px; ">
                      <path d="M4 16s-1 0-1-1 1-4 5-4 5 3 5 4-1 1-1 1zm4-5.95a2.5 2.5 0 1 0 0-5 2.5 2.5 0 0 0 0 5"/>
                      <path d="M2 1a2 2 0 0 0-2 2v9.5A1.5 1.5 0 0 0 1.5 14h.653a5.4 5.4 0 0 1 1.066-2H1V3a1 1 0 0 1 1-1h12a1 1 0 0 1 1 1v9h-2.219c.554.654.89 1.373 1.066 2h.653a1.5 1.5 0 0 0 1.5-1.5V3a2 2 0 0 0-2-2z"/>
                  </svg>포항점</a>
              </div>
              <div class ="location_button">
                  <a href="/" class="location_buttons">
               <svg xmlns="http://www.w3.org/2000/svg" width="40" height="40" fill="currentColor" class="bi bi-plus-circle" viewBox="0 0 16 16" style="margin-left:-3px;">
                 <path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14m0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16"/>
                 <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4"/>
               </svg>추가</a>
              </div>
          </div>
           <div class ="function_title">
               <asp:Label ID="lbltable_title" runat="server" Text="역동관(3관) 시간표"></asp:Label>
           </div>
           <div>
               <div class ="dayofweek_name_cal">
                   <a href="/"><</a>
                   &nbsp;&nbsp;수요일&nbsp;&nbsp;
                   <a href="/">></a>
               </div>
               <div class ="table_container">
                   <table class="table">
                        <thead>
                           <tr colspan="9">
                             <th>시간</th>
                             <th>1강의실</th>
                             <th>2강의실</th>
                             <th>3강의실</th>
                             <th>4강의실</th>
                             <th>5강의실</th>
                             <th>6강의실</th>
                             <th>7강의실</th>
                             <th>8강의실</th>
                           </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <th>13:00~14:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>14:00~15:00</th>
                                <td>강의 내용</td>
                                <td>
                                </td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>15:00~16:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>16:00~17:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>17:00~18:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>18:00~19:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>19:00~20:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                            <tr>
                                <th>20:00~21:00</th>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                                <td>강의 내용</td>
                            </tr>
                        </tbody>
                    </table>
               </div>
               <div class="floating-button-container">
                    <button class="floating-button">검색</button>
                    <button class="floating-button selected">시간표 관리</button>
                    <button class="floating-button">수업 관리</button>
                    <button class="floating-button">2022년 2학기</button>
                    <button class="floating-button icon">📤 인쇄</button>
                    <button class="floating-button icon">⬇ 시간표 공유</button>
                </div>
           </div> 
       </main>
      <footer>
          하단 내용 쓰기 
     </footer>
    </form>
</body>
</html>
