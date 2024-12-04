<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Write.aspx.cs" Inherits="Board_Write" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/writeBoard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
    <div class ="function_title">
       <asp:Label ID="lbltable_title" runat="server" Text="게시판"></asp:Label>
   </div>
   <div class="lecture_infoContainer">
       <p class ="lecture_container_title">게시판 글쓰기</p>
       <div class ="lecture_info_body">
           <div>
               <span class="title">작성자</span>
                <asp:TextBox CssClass ="form_box" ID="txtWriter" runat="server" Height="40px" Width="120px" MaxLength="50"></asp:TextBox>
                <asp:RequiredFieldValidator ID ="rfvWriter" runat="server" ErrorMessage="작성자는 필수항목입니당" Display="None" ControlToValidate="txtWriter"></asp:RequiredFieldValidator>
           </div>
           <hr />
           <div>
               <span class="title">제목</span>
               <asp:TextBox CssClass ="form_box" ID="txtTitle" runat="server" Height="40px" MaxLength="250"></asp:TextBox>
               <asp:RequiredFieldValidator ID ="rfvTitle" runat="server" ErrorMessage="제목은 필수항목입니당" Display="None" ControlToValidate="txtTitle"></asp:RequiredFieldValidator>
           </div>
           <div>
               <span class="title">내용</span>
               <asp:TextBox CssClass ="form_box" ID="tbContentDescription" runat="server" TextMode="MultiLine" Height="200px"></asp:TextBox>        
           </div>
           <div>
               <asp:ValidationSummary ID ="vsWrite" runat="server" ShowMessageBox="true" ShowSummary="false" />
           </div>
           <hr />
       </div>
       <div style="margin-top:15px">
           <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/Board/List.aspx" />
           <asp:Button CssClass ="button_function" ID="btnSaveContent" runat="server" Text="저장하기" CausesValidation="false" onClick="btnSaveContent_Click" />
       </div>
   </div>
</asp:Content>

