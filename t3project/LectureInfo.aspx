<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="LectureInfo.aspx.cs" Inherits="LectureInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/public/css/lectureinfo.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class="function_title">
        <asp:Label ID="lbltable_title" runat="server" Text="수업시간 상세 정보"></asp:Label>
    </div>
    <div class="lecture_infoContainer">
        <p class="lecture_container_title">수업정보 확인</p>
        <div class="lecture_info_body">
            <div>
                <span class="title">수업이름</span>
                <asp:Label class="body" ID="lblLectureTitle" runat="server"></asp:Label>
            </div>
            <hr />
            <div>
                <span class="title">강사이름</span>
                <asp:Label class="body" ID="lblTeacherName" runat="server"></asp:Label>
            </div>
            
            <div>
                <span class="title">수업내용</span>
                <asp:Label class="body" ID="lblLectureDescription" runat="server"></asp:Label>
            </div>
            <hr />
            <div>
                <span class="title">메모내용</span>
                <asp:Label class="body" ID="lblNote" runat="server"></asp:Label>
            </div>
        </div>
        <div style="margin-top:15px">
            <asp:Button CssClass="button_function" style="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/index.aspx" />
            <asp:Button CssClass="button_function" ID="btnLectureModify" runat="server" Text="강의 수정"  OnClick="btnLectureModify_Click"/>
            <asp:Button CssClass="button_function" style="background:#dc3545; border:1px solid #dc3545;" ID="btnLectureRemove" runat="server" Text="강의 삭제" OnClick="btnLectureRemove_Click"/>
        </div>

        <div class="floating-button-container">
            <asp:LinkButton ID="btnTeacherAdd" Visible="false" runat="server" CssClass="floating-button-blue" PostBackUrl="~/AddLecture.aspx"> <i class="fa fa-plus"></i>&nbsp;&nbsp;강의 등록</asp:LinkButton>
        </div>
    </div>
</asp:Content>


