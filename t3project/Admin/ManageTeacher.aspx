<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageTeacher.aspx.cs" Inherits="Admin_ManageTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/manageteacher.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
  <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="강사관리"></asp:Label>
  </div>
   <br />
  <div class ="card_container">
    <asp:PlaceHolder ID="content_card" runat="server"></asp:PlaceHolder>
  </div>
  <div class="floating-button-container">
    <asp:LinkButton ID="btnTeacherAdd" runat="server" CssClass="floating-button-blue" PostBackUrl="~/Admin/AddTeacher.aspx"> <i class="fa fa-user-plus"></i>&nbsp;&nbsp;강사 추가</asp:LinkButton>
  </div>
</asp:Content>

