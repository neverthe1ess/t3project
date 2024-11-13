<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
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
                  <a class="navbar_button" href="/">수업관리 </a>
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
                                <td>강의 내용</td>
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
           </div> 
       </main>
      <footer>
          하단 내용 쓰기 
     </footer>
    </form>
</body>
</html>
