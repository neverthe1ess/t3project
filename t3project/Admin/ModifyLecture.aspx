﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ModifyLecture.aspx.cs" Inherits="ModifyLecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/public/css/modifylecture.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="수업정보 수정"></asp:Label>
</div>
<div class="lecture_infoContainer">
    <p class ="lecture_container_title">수업정보 수정(관리자)</p>
    <div class ="lecture_info_body"> 
        <div>
            <span class="title">수업시간</span>
            <asp:Label class="body" ID="lblLectureTime" runat="server" Text="13:00~14:00"></asp:Label>
        </div>
        <hr />
        <div>
            <span class="title">강사이름</span>
            <asp:DropDownList ID="teacher_name" runat="server" AutoPostBack="True" 
            onselectedindexchanged="Teacher_SelectedIndexChanged">
        </asp:DropDownList>
    </div>

         <div>
            <span class="title">과목</span>
            <asp:DropDownList ID="class_name" runat="server" AutoPostBack="True" 
            onselectedindexchanged="Class_SelectedIndexChanged">
            </asp:DropDownList>
        </div>
        <div>
            <span class="title">수업내용</span>
            <asp:TextBox CssClass ="form_box_multi" ID="tbLectureDescription" runat="server" TextMode="MultiLine" Text="DB에서 가져올 기존 수업 내용"></asp:TextBox>
           
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
</asp:Content>

