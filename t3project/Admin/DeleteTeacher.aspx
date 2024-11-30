<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="DeleteTeacher.aspx.cs" Inherits="Admin_DeleteTeacher" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/deleteteacher.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
  <div class ="function_title">
    <asp:Label ID="lbltable_title" runat="server" Text="강사삭제"></asp:Label>
  </div>
    <br /><br />
        <table style="font-size:100%; width:100%;">
            <tr>  
            </tr>                                    
            <tr>
                <td class="success_title" align ="center">정말로 강사를 삭제하시겠습니까?</td>
            </tr>
            <tr>
             <td><br /><br /></td>
            </tr>
            <tr>
              <td align="center">
                 <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d; margin-left:10px;" ID="btnToList" runat="server" Text="이전으로" PostBackUrl="~/Admin/ManageTeacher.aspx" />
                 <asp:Button CssClass ="button_function" style ="background:#dc3545; border:1px solid #dc3545; margin-left:10px;" ID="btnDelete" runat="server" Text="삭제하기" PostBackUrl="~/ProcessResult.aspx" />
            </td>
           </tr>
         </table>

</asp:Content>

