<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddTeacher.aspx.cs" Inherits="Admin_AddTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/addteacher.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
  <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="강사추가"></asp:Label>
  </div>
  <div class="lecture_infoContainer">
           <p class ="lecture_container_title">강사정보 등록(관리자)</p>
           <div class ="lecture_info_body">
               <div>
                   <span class="title">강사이름</span>
                   <asp:TextBox CssClass ="form_box" ID="tbTeacherName" runat="server" Height="50px" Width="150px"></asp:TextBox>
               </div>
               <div>
                   <span class="title">강사이력 설명</span>
                   <asp:TextBox CssClass ="form_box" ID="tbTeacherDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
               </div>
               <hr />
               <div>
                   <span class="title">강사사진</span>
                   <asp:FileUpload runat="server" ID="teacherPhotoUpload"></asp:FileUpload>
               </div>
           </div>
            <asp:Label ID="errorMsg" runat="server" Text="Label" Visible="false"></asp:Label>
           <div style="margin-top:15px">
               <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/Admin/ManageTeacher.aspx"/>
               <asp:Button CssClass ="button_function" ID="btnAddTeacher" runat="server" Text="강사 등록" OnClick="btnAddTeacher_Click" />
           </div>
       </div>
</asp:Content>

