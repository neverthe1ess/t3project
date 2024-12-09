﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddLecture.aspx.cs" Inherits="AddLecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
        <link href="/public/css/addlecture.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
           <asp:Label ID="lbltable_title" runat="server" Text="수업등록"></asp:Label>
       </div>
       <div class="lecture_infoContainer">
           <p class ="lecture_container_title">수업정보 등록(관리자)</p>
           <div class ="lecture_info_body">
               <div>
                   <span class="title">수업시간</span>
                   <asp:Label class="body" ID="lblLectureTime" runat="server" Text="13:00~14:00"></asp:Label>
               </div>
               <hr />
               <div>
                   <span class="title">강사이름</span>
                   <asp:DropDownList class="body" ID="ddlTeacherList" runat="server" >
                       <asp:ListItem>이정빈T</asp:ListItem>
                       <asp:ListItem>차영욱T</asp:ListItem>
                       <asp:ListItem>이철희T</asp:ListItem>
                       <asp:ListItem>이은서T</asp:ListItem>
                   </asp:DropDownList>
                    
               </div>
               <div>
                   <span class="title">수업장소</span>
                   <asp:Label class="body" ID="lblLectureRoom" runat="server" Text="1강의실"></asp:Label>
               </div>
               <div>
                   <span class="title">수업내용</span>
                   <asp:TextBox CssClass ="form_box" ID="tbLectureDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
                  
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

