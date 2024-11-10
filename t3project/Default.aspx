<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="/public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="app.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
       <header>
           <nav class="navbars"> 
               <div class="navbar_logo" style="font-weight:600">
                   <a href="/" style="color:#A2988F; display:flex";>
                   <img class ="logoimg" src="logo.png" alt="로고 이미지" />
                   <span>&nbsp;&nbsp;|&nbsp;&nbsp;학원 시간표 시스템</span>
                   </a>
                   </div>
                <div class="navbar_function">
                     <a class="navbar_button" href="/" > &nbsp; &nbsp; 검색</a>
                     <a class="navbar_button" href="/" > &nbsp; &nbsp; 게시판</a>
                     <a class="navbar_button" href="/"> &nbsp; &nbsp; 로그인 </a>
                </div>
                      
           </nav>
           <hr class ="navbar_hr" style="background-color: #e0d9d3;"/>   
       </header>
       <main>
           <div class ="function_title">
               <h1>역동관(3관) 시간표</h1>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
                                <th>강의 내용</th>
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
          감사합나디!
     </footer>
    </form>
</body>
</html>
