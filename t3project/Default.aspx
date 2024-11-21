<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TeaTime</title>
    <link href="/public/css/reset.css" rel="stylesheet" type="text/css" />
    <link href="/public/css/default.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
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
                  <a class="navbar_button" href="/Board.aspx">게시판</a>
                  <a class="navbar_button" href="/Search.aspx">검색</a>
               </div> 
                <div style="flex:1 0 0">
               </div>
               <a style="font-size:24px" href="/Account/Login.aspx"> &nbsp; &nbsp; 로그인 </a>
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
                   <asp:Button cssClass="dayofweek_button" ID="btnMon" runat="server" Text="월" />
                   <asp:Button cssClass="dayofweek_button" ID="btnTue" runat="server" Text="화" />
                   <asp:Button cssClass="dayofweek_button" ID="btnWed" runat="server" Text="수" />
                   <asp:Button cssClass="dayofweek_button" ID="btnThu" runat="server" Text="목" />
                   <asp:Button cssClass="dayofweek_button" ID="btnFri" runat="server" Text="금" />
                   <asp:Button cssClass="dayofweek_button" ID="btnSat" runat="server" Text="토" />
                   <asp:Button cssClass="dayofweek_button" ID="btnSun" runat="server" Text="일" />
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
               <div class="floating-button-container">
                   <asp:LinkButton ID="btnSearch" runat="server" CssClass="floating-button" style="border-radius:20px; border-top-right-radius:0; border-bottom-right-radius:0;"> <i class="fa fa-search"></i>&nbsp;검색</asp:LinkButton>
                   <asp:Button cssClass="floating-button" ID="btnLectureManage" runat="server" Text="수업 관리" />
                   <asp:Button cssClass="floating-button" ID="btnTeacherManage" runat="server" Text="강사 관리" />
                   <asp:LinkButton ID="btnPrint" runat="server" CssClass="floating-button"> <i class="fa fa-print"></i>&nbsp;인쇄</asp:LinkButton>
                   <asp:LinkButton ID="btnShare" runat="server" CssClass="floating-button" style="border-radius:20px; border-top-left-radius:0; border-bottom-left-radius:0;"> <i class="fa fa-share"></i>&nbsp;공유</asp:LinkButton>
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
