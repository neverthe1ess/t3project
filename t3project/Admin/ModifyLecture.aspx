<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyLecture.aspx.cs" Inherits="ModifyLecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/public/css/modifylecture.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class="function_title">
        <asp:Label ID="lbltable_title" runat="server" Text="수업정보 수정"></asp:Label>
    </div>
    <div class="lecture_infoContainer">
        <p class="lecture_container_title">수업정보 수정(관리자)</p>
        <div class="lecture_info_body"> 
           
            <hr />
            <div>
                <span class="title">강사이름</span>
                <asp:TextBox CssClass="form_box" ID="tbTeacherName" runat="server"></asp:TextBox>
            </div>
            <div>
                <span class="title">과목</span>
                <asp:TextBox CssClass="form_box" ID="tbClassName" runat="server"></asp:TextBox>
            </div>
            <div>
                <span class="title">수업내용</span>
                <asp:TextBox CssClass="form_box_multi" ID="tbLectureDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
            </div>
            <hr />
            <div>
                <span class="title">메모내용</span>
                <asp:TextBox CssClass="form_box" style="height:50px" ID="tbMemo" runat="server"></asp:TextBox>
            </div>
        </div>
        <div style="margin-top:15px">
            <asp:Button CssClass="button_function" style="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" />
            <asp:Button CssClass="button_function" ID="Button1" runat="server" Text="강의 수정" OnClick="btnLectureModify_Click" />
        </div>
    </div>
</asp:Content>

