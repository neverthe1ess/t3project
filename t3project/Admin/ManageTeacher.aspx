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
   <div class="inner">
      <article class ="card-item">
      <a href="#">
        <asp:Image runat="server" ImageUrl="~/public/images/teacher3.jpg"/>
          <div class="card-text">
            <h2 class="title">
                차은우T
            </h2>
            <p>
                경력: 학원 강사 17년<br />
                한국대학교 컴퓨터공학과 졸업
            </p>
            </div>
          </a>
        </article>
    </div>
   <div class="inner">
          <article class ="card-item">
    <a href="#">
      <asp:Image runat="server" ImageUrl="~/public/images/teacher6.jpg"/>
        <div class="card-text">
          <h2 class="title">
              신형만T
          </h2>
          <p>
              경력: 학원 강사 17년<br />
              한국대학교 컴퓨터공학과 졸업
          </p>
      </div>
    </a>
  </article>
   </div>

   <div class="inner">
          <article class ="card-item">
    <a href="#">
      <asp:Image runat="server" ImageUrl="~/public/images/teacher5.jpg"/>
        <div class="card-text">
          <h2 class="title">
              신짱구T
          </h2>
          <p>
              경력: 학원 강사 17년<br />
              한국대학교 컴퓨터공학과 졸업
          </p>
      </div>
    </a>
  </article>
   </div>
   <div class="inner">
   <article class ="card-item">
    <a href="#">
      <asp:Image runat="server" ImageUrl="~/public/images/teacher4.jpg"/>
        <div class="card-text">
          <h2 class="title">
              이정빈T
          </h2>
          <p>
              경력: 학원 강사 17년<br />
              한국대학교 컴퓨터공학과 졸업
          </p>
      </div>
    </a>
  </article>
   </div>
   <div class="inner">
          <article class ="card-item">
    <a href="#">
      <asp:Image runat="server" ImageUrl="~/public/images/teacher1.jpg"/>
        <div class="card-text">
          <h2 class="title">
              봉미선T
          </h2>
          <p>
              경력: 학원 강사 17년<br />
              도쿄대학교 일본어학과 졸업<br />
          </p>
      </div>
    </a>
  </article>
   </div>
   <div class="inner">
          <article class ="card-item">
    <a href="#">
      <asp:Image runat="server" ImageUrl="~/public/images/teacher2.png"/>
        <div class="card-text">
          <h2 class="title">
              차은우T
          </h2>
          <p>
              경력: 학원 강사 17년<br />
              한국대학교 컴퓨터공학과 졸업
          </p>
      </div>
    </a>
  </article>
   </div>
  </div>

  <div class="floating-button-container">
    <asp:LinkButton ID="btnSearch" runat="server" CssClass="floating-button" style="border-radius:40px;"> <i class="fa fa-plus"></i>&nbsp;&nbsp;&nbsp;&nbsp;강사 추가</asp:LinkButton>
    
    <asp:LinkButton ID="LinkButton1" runat="server" CssClass="floating-button" style="border-radius:40px;"> <i class="fa fa-times"></i>&nbsp;&nbsp;&nbsp;&nbsp;강사 삭제</asp:LinkButton>
  </div>
</asp:Content>

