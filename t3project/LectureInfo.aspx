<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LectureInfo.aspx.cs" Inherits="LectureInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <link href="/public/css/lectureinfo.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
        <asp:Label ID="lbltable_title" runat="server" Text="수업시간 상세 정보"></asp:Label>
           </div>
           <div class ="lecture_infoContainer">
               <p class ="lecture_container_title">수업정보 확인</p>
               <div class ="lecture_info_body"> 
                   <div>
                       <span class="title">수업이름</span>
                       <asp:Label class="body" ID="lblLectureTitle" runat="server" Text="컴퓨터구조론"></asp:Label>
                   </div>
                   <hr />
                   <div>
                       <span class="title">강사이름</span>
                       <asp:Label class="body" ID="lblTeacherName" runat="server" Text="이정빈T"></asp:Label>
                   </div>
                   <hr />
                   <div>
                       <span class="title">수업시간</span>
                       <asp:Label class="body" ID="lblLectureTime" runat="server" Text="13:00~14:00"></asp:Label>
                   </div>
                   <hr />
                   <div>
                       <span class="title">수업내용</span>
                       <asp:Label class="body" ID="lblLectureDescription" runat="server" Text="파이프라이닝에 대해 학습한다."></asp:Label>
                   </div>
                   <hr />
                   <div>
                       <span class="title">메모내용</span>
                       <asp:Label class="body" ID="lblNote" runat="server" Text="메모"></asp:Label>
                   </div>
               </div>
               <div style="margin-top:15px">
                   <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" OnClick="btnToList_Click"  />
                   <asp:Button CssClass ="button_function" ID="btnLectureModify" runat="server" Text="강의 수정" onClick ="btnLectureModify_Click"/>
                   <asp:Button CssClass ="button_function" style ="background:#dc3545; border:1px solid #dc3545;" ID="btnLectureRemove" runat="server" Text="강의 삭제" />
               </div>
           </div>
</asp:Content>

