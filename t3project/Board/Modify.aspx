<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Modify.aspx.cs" Inherits="Board_Modify" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/modifyboard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
         <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="게시판"></asp:Label>
</div>
<div class="lecture_infoContainer">
    <p class ="lecture_container_title">글 수정</p>
    <div class ="lecture_info_body">
        <div>
            <span class="title">작성자</span>
             <asp:Label class="body" ID="lblContentWriter" runat="server" Text=""></asp:Label>
        </div>
        <hr />
        <div>
            <span class="title">제목</span>
            <asp:Label class="body" ID="lblBoardContentTitle" runat="server" Text=""></asp:Label>
        </div>
        <div>
            <span class="title">내용</span>
            <asp:TextBox CssClass ="form_box" ID="tbContentDescription" runat="server" TextMode="MultiLine" Height="200px"></asp:TextBox>        
        </div>
        <hr />
    </div>
    <div style="margin-top:15px">
        <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/Board/List.aspx" />
        <asp:Button CssClass ="button_function" ID="btnModifyContent" runat="server" Text="수정하기" onClick="btnModifyContent_Click"/>
    </div>
</div>
</asp:Content>

