<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ProcessResult.aspx.cs" Inherits="Admin_ProcessResult" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="/public/css/processresult.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
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
                <td class="success_title" align ="center">처리완료!</td>
            </tr>
            <tr>
             <td><br /><br /></td>
            </tr>
            <tr>
              <td align="center">
                 <asp:Button CssClass ="button_function" style ="background:#0a66c2; border:1px solid #6c757d; margin-left:10px;" ID="btnToList" runat="server" Text="홈으로" PostBackUrl="~/index.aspx" />
            </td>
           </tr>
         </table>
</asp:Content>

