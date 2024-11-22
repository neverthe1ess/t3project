<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

<asp:Content ContentPlaceHolderID="searchContent" runat="server">
    <link href="/public/css/search.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  <div class ="total_container">
    <div class ="function_title">
         <asp:Label ID="lbltable_title" runat="server" Text="검색"></asp:Label>
    </div>
    <div class ="search_container">
        <i class="fa fa-search fa-2x" style="padding:20px;"></i>
        <asp:TextBox cssClass="txtSearch" ID="txtSearch" runat="server" style="height:100%;"  ></asp:TextBox>
    </div>
    <div class ="search_result_container">
        <h1 style="font-size:1.8em; font-weight:bold">수업 검색 결과</h1>
        <!-- 수업요일 수업시간 수업내용 강사이름 수업장소 -->
        <br /><br />
        <asp:Button ID="Button1" runat="server" Text="가상 검색 테스트" OnClick="Button1_Click" />
        <br /><br />
        <asp:DataList ID="dlstSearch" runat="server" style="width:100%;"  >
            <HeaderTemplate>
                <tr class ="result_search_header">
                    <th style="padding:8px;"><asp:Label ID="txtDay" runat="server" Text="수업요일"></asp:Label></th>
                    <th style="padding:8px;"><asp:Label ID="txtTime" runat="server" Text="수업시간"></asp:Label></th>
                    <th style="padding:8px;"><asp:Label ID="txtContent" runat="server" Text="수업내용"></asp:Label></th>
                    <th style="padding:8px;"><asp:Label ID="txtName" runat="server" Text="강사이름"></asp:Label></th>
                    <th style="padding:8px;"><asp:Label ID="txtRoom" runat="server" Text="수업장소"></asp:Label></th>
                </tr>  
            </HeaderTemplate>
            <ItemTemplate>
                <tr>
                    <td class="result_search_body"><asp:Label ID="searchResDay" runat="server" Text='<%# Eval("day") %>'></asp:Label></td>
                    <td class="result_search_body"><asp:Label ID="searchResTime" runat="server" Text='<%# Eval("time") %>'></asp:Label></td>
                    <td class="result_search_body" style="text-align:left;"><asp:LinkButton ID="searchResContent" runat="server" Text='<%# Eval("content") %>'></asp:LinkButton></td>
                    <td class="result_search_body"><asp:Label ID="searchResName" runat="server" Text='<%# Eval("name") %>'></asp:Label></td>
                    <td class="result_search_body"><asp:Label ID="searchResRoom" runat="server" Text='<%# Eval("room") %>'></asp:Label></td>
                </tr>
            </ItemTemplate>

            <SelectedItemTemplate>
            </SelectedItemTemplate>
        </asp:DataList>
        <br /><br />

        

            
     </div>
  </div>



</asp:Content>

