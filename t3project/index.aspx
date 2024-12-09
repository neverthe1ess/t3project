<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/public/css/default.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        function copyUrlToclipboard() {
            var urlToCopy = window.location.href;
            // 최신 api라서 구형 브라우저에서는 지원안됨 
            navigator.clipboard.writeText(urlToCopy).then(function () {
                alert("URL이 클립보드에 복사되었습니다.");
             }).catch(function (error) {
                alert("클립보드 복사에 실패 ㅠㅠ " + error);
             });
         }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="역동관(3관) 시간표"></asp:Label>
</div>
<div>
    <div class ="dayofweek_name_cal">
        <asp:Button cssClass="dayofweek_button" ID="btnDay1" runat="server" Text="월" OnClick="btnDay_Click" />
        <asp:Button cssClass="dayofweek_button" ID="btnDay2" runat="server" Text="화" OnClick="btnDay_Click" />
        <asp:Button cssClass="dayofweek_button" ID="btnDay3" runat="server" Text="수" OnClick="btnDay_Click" />
        <asp:Button cssClass="dayofweek_button" ID="btnDay4" runat="server" Text="목" OnClick="btnDay_Click"/>
        <asp:Button cssClass="dayofweek_button" ID="btnDay5" runat="server" Text="금" OnClick="btnDay_Click"/>
        <asp:Button cssClass="dayofweek_button" ID="btnDay6" runat="server" Text="토" OnClick="btnDay_Click" />
        <asp:Button cssClass="dayofweek_button" ID="btnDay0" runat="server" Text="일" OnClick="btnDay_Click"/>
    </div>
    <div class ="table_container">
        <table class="table">
             <thead>
                <tr>
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
                     <td><asp:LinkButton ID="timetable_11" runat="server" Text= OnClick="timetable_Click" CssClass="table_element" BackColor="Yellow"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_21" runat="server" Text="21" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_31" runat="server" Text="31" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_41" runat="server" Text="41" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_51" runat="server" Text="51" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_61" runat="server" Text="61" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_71" runat="server" Text="71" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_81" runat="server" Text="81" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>14:00~15:00</th>
                     <td><asp:LinkButton ID="timetable_12" runat="server" Text="12" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_22" runat="server" Text="22" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_32" runat="server" Text="32" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_42" runat="server" Text="42" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_52" runat="server" Text="52" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_62" runat="server" Text="62" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_72" runat="server" Text="72" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_82" runat="server" Text="82" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>15:00~16:00</th>
                     <td><asp:LinkButton ID="timetable_13" runat="server" Text="13" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_23" runat="server" Text="23" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_33" runat="server" Text="33" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_43" runat="server" Text="43" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_53" runat="server" Text="53" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_63" runat="server" Text="63" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_73" runat="server" Text="73" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_83" runat="server" Text="83" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>16:00~17:00</th>
                     <td><asp:LinkButton ID="timetable_14" runat="server" Text="14" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_24" runat="server" Text="24" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_34" runat="server" Text="34" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_44" runat="server" Text="44" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_54" runat="server" Text="54" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_64" runat="server" Text="64" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_74" runat="server" Text="74" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_84" runat="server" Text="84" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>17:00~18:00</th>
                     <td><asp:LinkButton ID="timetable_15" runat="server" Text="15" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_25" runat="server" Text="25" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_35" runat="server" Text="35" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_45" runat="server" Text="45" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_55" runat="server" Text="55" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_65" runat="server" Text="65" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_75" runat="server" Text="75" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_85" runat="server" Text="85" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>18:00~19:00</th>
                     <td><asp:LinkButton ID="timetable_16" runat="server" Text="16" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_26" runat="server" Text="26" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_36" runat="server" Text="36" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_46" runat="server" Text="46" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_56" runat="server" Text="56" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_66" runat="server" Text="66" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_76" runat="server" Text="76" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_86" runat="server" Text="86" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>19:00~20:00</th>
                     <td><asp:LinkButton ID="timetable_17" runat="server" Text="17" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_27" runat="server" Text="27" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_37" runat="server" Text="37" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_47" runat="server" Text="47" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_57" runat="server" Text="57" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_67" runat="server" Text="67" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_77" runat="server" Text="77" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_87" runat="server" Text="87" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
                 <tr>
                     <th>20:00~21:00</th>
                     <td><asp:LinkButton ID="timetable_18" runat="server" Text="18" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_28" runat="server" Text="28" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_38" runat="server" Text="38" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_48" runat="server" Text="48" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_58" runat="server" Text="58" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_68" runat="server" Text="68" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_78" runat="server" Text="78" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                     <td><asp:LinkButton ID="timetable_88" runat="server" Text="88" OnClick="timetable_Click" CssClass="table_element"></asp:LinkButton></td>
                 </tr>
             </tbody>
         </table>
    </div>
    <div class="floating-button-container">
        <asp:LinkButton ID="btnSearch" runat="server" CssClass="floating-button" style="border-radius:20px; border-top-right-radius:0; border-bottom-right-radius:0;" OnClick="btnSearch_Click"> <i class="fa fa-search"></i>&nbsp;검색</asp:LinkButton>
        <asp:Button cssClass="floating-button" ID="btnLectureManage" runat="server" Text="수업 관리" PostBackUrl="/Admin/ManageLecture.aspx"/>
        <asp:Button cssClass="floating-button" ID="btnTeacherManage" runat="server" Text="강사 관리" PostBackUrl="/Admin/ManageTeacher.aspx"/>
        <asp:LinkButton ID="btnPrint" runat="server" CssClass="floating-button" OnClientClick="window.print(); return"> <i class="fa fa-print"></i>&nbsp;인쇄</asp:LinkButton>
        <asp:LinkButton ID="btnShare" runat="server" CssClass="floating-button" OnClientClick="copyUrlToclipboard(); return" style="border-radius:20px; border-top-left-radius:0; border-bottom-left-radius:0;"> <i class="fa fa-share"></i>&nbsp;공유</asp:LinkButton>
    </div>
</div> 
</asp:Content>

