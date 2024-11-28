<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Register.aspx.cs" Inherits="Account_Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/register.css" rel="stylesheet" type="text/css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
           <div class ="function_title">
           <asp:Label ID="lbltable_title" runat="server" Text="회원가입"></asp:Label>
       </div>
       <div class="lecture_infoContainer">
           <p class ="lecture_container_title">회원정보 입력</p>
           <div class ="lecture_info_body"> 
               <div>
                   <span class="title">아이디</span>
                   <asp:TextBox CssClass="form_box" ID="txtRegisterID" runat="server"></asp:TextBox>
               </div>
               <hr />
               <div>
                   <span class="title">비밀번호</span>
                   <asp:TextBox CssClass="form_box" ID="txtRegisterPassword" runat="server"></asp:TextBox>
               </div>
               <div>
                   <span class="title">비밀번호 확인</span>
                   <asp:TextBox CssClass="form_box" ID="txtRegisterPasswordVerify" runat="server"></asp:TextBox>
               </div>
               <div>
                   <span class="title">추천인 입력</span>
                   <asp:TextBox CssClass ="form_box_multi" ID="tbLectureDescription" runat="server" TextMode="MultiLine"></asp:TextBox>
               </div>
               <hr />
           </div>
           <div style="margin-top:15px; text-align:center;">
               <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="이전으로" PostBackUrl="~/Account/Login.aspx" />
               <asp:Button CssClass ="button_function" ID="btnLectureModify" runat="server" Text="회원가입" />
           </div>
       </div>
</asp:Content>

