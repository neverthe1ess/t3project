<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ManageLecture.aspx.cs" Inherits="Admin_ManageLecture" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/managelecture.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
   <div class ="function_title">
     <asp:Label ID="lbltable_title" runat="server" Text="총괄 수업관리"></asp:Label>
    </div>
    <div class="total_container">
        <div class ="Lecture_list_container">
            <h1 style="font-size:50px; font-weight:bold; text-align:center;">2024 수업 리스트</h1>
            <!-- 수업요일 수업시간 수업내용 강사이름 수업장소 -->
            <br /><br />
            <br /><br />
            <asp:DataList ID="dlstLecture" runat="server" style="width:100%;"  >
                <HeaderTemplate>
                    <tr class ="result_list_header">
                        <th style="padding:8px;"><asp:Label ID="txtDay" runat="server" Text="수업요일"></asp:Label></th>
                        <th style="padding:8px;"><asp:Label ID="txtTime" runat="server" Text="수업과목"></asp:Label></th>
                        <th style="padding:8px;"><asp:Label ID="txtContent" runat="server" Text="수업내용"></asp:Label></th>
                        <th style="padding:8px;"><asp:Label ID="txtName" runat="server" Text="강사이름"></asp:Label></th>
                        <th style="padding:8px;"><asp:Label ID="txtRoom" runat="server" Text="수업장소"></asp:Label></th>
                    </tr>  
                </HeaderTemplate>
                <ItemTemplate>
                    <tr>
                        <td class="result_list_body"><asp:Label ID="searchResDay" runat="server" Text='<%# Eval("DayofWeek") %>'></asp:Label></td>
                        <td class="result_list_body"><asp:Label ID="searchResTime" runat="server" Text='<%# Eval("Subject") %>'></asp:Label></td>
                        <td class="result_list_body"><asp:LinkButton ID="searchResContent" runat="server" onClick="searchResContent_Click" CommandArgument='<%# Eval("LectureId") %>' Text='<%# Eval("Content") %>'></asp:LinkButton></td>
                        <td class="result_list_body"><asp:Label ID="searchResName" runat="server" Text='<%# Eval("Teacher") %>'></asp:Label></td>
                        <td class="result_list_body"><asp:Label ID="searchResRoom" runat="server" Text='<%# Eval("Room") %>'></asp:Label></td>
                    </tr>
                </ItemTemplate>
                <SelectedItemTemplate>
                </SelectedItemTemplate>
            </asp:DataList>
            <br /><br />
            <div class="floating-button-container">
                <asp:LinkButton ID="btnTeacherAdd" runat="server" CssClass="floating-button-blue" onClick="btnTeacherAdd_Click"> <i class="fa fa-plus"></i>&nbsp;&nbsp;강의 추가</asp:LinkButton>
            </div>
           </div>
        </div>
</asp:Content>

