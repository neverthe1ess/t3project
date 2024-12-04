<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Board_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/listBoard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
   <div class ="function_title">
       <asp:Label ID="lbltable_title" runat="server" Text="게시판"></asp:Label>
   </div>
    <div class="lecture_infoContainer">
        <br /><br />
        <asp:SqlDataSource ID="dSource" runat="server" ConnectionString="<%$ ConnectionStrings:ASPNET_ConnectionString %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [serial_no], [writer], [title], [ref_id], [inner_id], [depth], [read_count], [del_flag], [reg_date] FROM [board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
    <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" Width="100%"
            CssClass="bottom-bordered-grid">
            <RowStyle BackColor="white" CssClass="row-bottom-border"/>
            <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
            <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" />
            <PagerSettings 
                NextPageImageUrl="/WebEx/13/images/btn_next.gif"
                PreviousPageImageUrl="/WebEx/13/images/btn_prev.gif" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <EmptyDataTemplate>
                등록된 게시물이 없습니다.
            </EmptyDataTemplate>
            <Columns>
                <asp:BoundField DataField="serial_no" HeaderText="번호">
                    <HeaderStyle Width="60px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="제목" HeaderStyle-Width="330px">
                    <ItemTemplate>
                        <%# ShowDepth((int)Eval("depth")) %>
                        <%# ShowReplyIcon((int)Eval("inner_id")) %>
                        <%# ShowTitle(
                            Eval("serial_no").ToString(), Eval("title").ToString(),
                            Eval("del_flag").ToString()) %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="writer" HeaderText="작성자">
                    <HeaderStyle Width="70px" />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:TemplateField HeaderText="날짜" HeaderStyle-Width="70px">
                    <ItemTemplate>
                        <%# ShowDate((DateTime)Eval("reg_date")) %>
                    </ItemTemplate>
                    <ItemStyle HorizontalAlign="Center" />
                </asp:TemplateField>
                <asp:BoundField DataField="read_count" HeaderText="조회">
                    <HeaderStyle Width="40px"  />
                    <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
            </Columns>
        </asp:GridView>
       <div style="margin-top:15px">
           <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="목록으로" PostBackUrl="~/Admin/ManageTeacher.aspx"  />
           <asp:Button CssClass ="button_function" style ="background:#dc3545; border:1px solid #dc3545;" ID="btnLectureRemove" runat="server" Text="글쓰기" />  
       </div>
    </div>


    
</asp:Content>

