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
                                <td><asp:LinkButton ID="timetable11" runat="server" Text="11"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable21" runat="server" Text="21"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable31" runat="server" Text="31"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable41" runat="server" Text="41"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable51" runat="server" Text="51"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable61" runat="server" Text="61"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable71" runat="server" Text="71"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable81" runat="server" Text="81"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>14:00~15:00</th>
                                <td><asp:LinkButton ID="timetable12" runat="server" Text="12"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable22" runat="server" Text="22"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable32" runat="server" Text="32"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable42" runat="server" Text="42"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable52" runat="server" Text="52"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable62" runat="server" Text="62"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable72" runat="server" Text="72"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable82" runat="server" Text="82"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>15:00~16:00</th>
                                <td><asp:LinkButton ID="timetable13" runat="server" Text="13"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable23" runat="server" Text="23"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable33" runat="server" Text="33"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable43" runat="server" Text="43"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable53" runat="server" Text="53"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable63" runat="server" Text="63"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable73" runat="server" Text="73"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable83" runat="server" Text="83"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>16:00~17:00</th>
                                <td><asp:LinkButton ID="timetable14" runat="server" Text="14"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable24" runat="server" Text="24"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable34" runat="server" Text="34"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable44" runat="server" Text="44"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable54" runat="server" Text="54"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable64" runat="server" Text="64"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable74" runat="server" Text="74"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable84" runat="server" Text="84"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>17:00~18:00</th>
                                <td><asp:LinkButton ID="timetable15" runat="server" Text="15"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable25" runat="server" Text="25"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable35" runat="server" Text="35"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable45" runat="server" Text="45"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable55" runat="server" Text="55"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable65" runat="server" Text="65"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable75" runat="server" Text="75"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable85" runat="server" Text="85"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>18:00~19:00</th>
                                <td><asp:LinkButton ID="timetable16" runat="server" Text="16"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable26" runat="server" Text="26"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable36" runat="server" Text="36"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable46" runat="server" Text="46"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable56" runat="server" Text="56"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable66" runat="server" Text="66"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable76" runat="server" Text="76"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable86" runat="server" Text="86"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>19:00~20:00</th>
                                <td><asp:LinkButton ID="timetable17" runat="server" Text="17"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable27" runat="server" Text="27"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable37" runat="server" Text="37"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable47" runat="server" Text="47"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable57" runat="server" Text="57"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable67" runat="server" Text="67"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable77" runat="server" Text="77"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable87" runat="server" Text="87"></asp:LinkButton></td>
                            </tr>
                            <tr>
                                <th>20:00~21:00</th>
                                <td><asp:LinkButton ID="timetable18" runat="server" Text="18"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable28" runat="server" Text="28"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable38" runat="server" Text="38"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable48" runat="server" Text="48"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable58" runat="server" Text="58"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable68" runat="server" Text="68"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable78" runat="server" Text="78"></asp:LinkButton></td>
                                <td><asp:LinkButton ID="timetable88" runat="server" Text="88"></asp:LinkButton></td>
                            </tr>
                        </tbody>
                    </table>
               </div>
               <div class="floating-button-container">
                   <asp:LinkButton ID="btnSearch" runat="server" CssClass="floating-button" style="border-radius:20px; border-top-right-radius:0; border-bottom-right-radius:0;" OnClick="btnSearch_Click"> <i class="fa fa-search"></i>&nbsp;검색</asp:LinkButton>
                   <asp:Button cssClass="floating-button" ID="btnLectureManage" runat="server" Text="수업 관리" onClick="btnLectureManage_Click"/>
                   <asp:Button cssClass="floating-button" ID="btnTeacherManage" runat="server" Text="강사 관리" onClick="btnTeacherManage_Click"/>
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
