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
           <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" Width="100%">
               <WizardSteps>
                   <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                       <ContentTemplate>
                        <div class ="lecture_info_body"> 
                          <div class ="line_container">
                             <span class="title">아이디</span>
                             <asp:TextBox CssClass="form_box" ID="UserName" runat="server"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="사용자 이름이 필요합니다." ToolTip="사용자 이름이 필요합니다." CssClass="element_validator" ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <hr />
                          <div class ="line_container">
                             <span class="title">비밀번호</span>
                             <asp:TextBox CssClass="form_box" ID="PassWord" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="암호가 필요합니다." ToolTip="암호가 필요합니다."  CssClass="element_validator" ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <div class ="line_container">
                             <span class="title">비밀번호 확인</span>
                             <asp:TextBox CssClass="form_box" ID="ConfirmPassWord" runat="server" TextMode="Password"></asp:TextBox>
                             <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="암호 확인이 필요합니다." ToolTip="암호 확인이 필요합니다." CssClass="element_validator" ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <hr />
                          <div class ="line_container">
                              <span class="title">이메일</span>
                              <asp:TextBox CssClass ="form_box" ID="Email" runat="server" ></asp:TextBox>
                              <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="이메일이 필요합니다." ToolTip="이메일이 필요합니다."  CssClass="element_validator" ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <div class ="line_container">
                              <span class="title">보안 질문</span>
                              <asp:TextBox CssClass ="form_box" ID="Question" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="QuestionRequired" runat="server" ControlToValidate="Question" ErrorMessage="보안 질문이 필요합니다." ToolTip="보안 질문이 필요합니다."  CssClass="element_validator" ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <div class ="line_container">
                              <span class="title">보안 대답</span>
                              <asp:TextBox CssClass ="form_box" ID="Answer" runat="server"></asp:TextBox>
                              <asp:RequiredFieldValidator ID="AnswerRequired" runat="server" ControlToValidate="Answer" ErrorMessage="보안 대답이 필요합니다." ToolTip="보안 대답이 필요합니다." CssClass="element_validator"  ValidationGroup="CreateUserWizard1"></asp:RequiredFieldValidator>
                          </div>
                          <div class="line_container">
                              <asp:CompareValidator ID="CompareValidator1" style="color: #FE642E;" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="[암호]와 [암호 확인]에 입력한 내용은 일치해야 합니다."  ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                          </div>
                          <br />
                           <div class="line_container">
                              <asp:Literal ID="Literal1" runat="server" EnableViewState="False"></asp:Literal>
                          </div>
                         </div>
                       </ContentTemplate>
                       <CustomNavigationTemplate>
                           <div style="margin-top:15px; text-align:center;">
                                <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="이전으로" PostBackUrl="~/Account/Login.aspx" />
                                <asp:Button CssClass ="button_function" ID="StepNextButton_2" runat="server" CommandName="MoveNext" Text="회원가입" ValidationGroup="CreateUserWizard1" />
                          </div> 
                       </CustomNavigationTemplate>
                   </asp:CreateUserWizardStep>
                   <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                       <ContentTemplate>
                           <br /><br />
                           <table style="font-size:100%; width:100%;">
                               <tr>
                                   <td align="center">
                                       <div>
                                           <asp:Image ID="Image1" runat="server" style=" width:150px; " ImageUrl="~/Account/check.png" />
                                       </div>
                                   </td>    
                               </tr>                                    
                               <tr>
                                   <td class = "success_title" align ="center">계정을 만들었습니다!</td>
                               </tr>
                               <tr>
                                   <td><br /><br /></td>
                               </tr>
                               <tr>
                                   <td align="center">
                                       <asp:Button CssClass ="button_function" style ="background:#0a66c2; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="홈으로" PostBackUrl="~/index.aspx" />
                                   </td>
                               </tr>
                           </table>
                       </ContentTemplate>
                   </asp:CompleteWizardStep>
               </WizardSteps>
           </asp:CreateUserWizard>
       </div>
</asp:Content>

