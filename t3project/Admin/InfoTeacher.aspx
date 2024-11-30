<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="InfoTeacher.aspx.cs" Inherits="Admin_InfoTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/infoteacher.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
  <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="강사정보"></asp:Label>
  </div>
    <div class="lecture_infoContainer">
         <p class ="lecture_container_title">강사정보</p>
         <div class ="lecture_info_body"> 
            <div>
                <span class="title">강사이름</span>
                <asp:Label class="body" ID="lblteacherName" runat="server" Text="강사이름입니다."></asp:Label>
            </div>
            <hr />
            <div>
                <span class="title">강사이력 설명</span>
                <asp:Label class="body" ID="lblteacherDescription" runat="server" Text="강사설명입니다."></asp:Label>
            </div>
         </div>

         <div style="margin-top:15px">
              <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/Admin/ManageTeacher.aspx"  />
              <asp:Button CssClass ="button_function" style ="background:#dc3545; border:1px solid #dc3545;" ID="btnLectureRemove" runat="server" Text="강사 삭제" OnClick="btnLectureRemove_Click" />
         </div>
    </div>
</asp:Content>

