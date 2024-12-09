<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="List.aspx.cs" Inherits="Board_List" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="../public/css/listBoard.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" Runat="Server">
   <div class ="function_title">
       <asp:Label ID="lbltable_title" runat="server" Text="게시판"></asp:Label>
   </div>
    <div class="lecture_infoContainer">
        <p class ="lecture_container_title">글 목록</p>
        <asp:SqlDataSource ID="dSource" runat="server" ConnectionString="<%$ ConnectionStrings:t3projectConnectionString %>" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [serial_no], [writer], [title], [ref_id], [inner_id], [depth], [read_count], [del_flag], [reg_date] FROM [board] ORDER BY [ref_id] DESC, [inner_id]"></asp:SqlDataSource>
    <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" 
            AutoGenerateColumns="False" CellPadding="4" ForeColor="#333333" 
            AllowPaging="True" GridLines="None" PagerSettings-Mode="NextPrevious" Width="100%"
            CssClass="bottom-bordered-grid">
            <RowStyle BackColor="white" CssClass="row-bottom-border"/>
            <HeaderStyle BackColor="white" Font-Size="22px" Font-Bold="True" ForeColor="black" />
            <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" CssClass="gridPager"/>
            <PagerSettings
                NextPageImageUrl="~/public/css/img/btn_next.png"
                PreviousPageImageUrl="~/public/css/img/btn_prev.png" />
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
       <div style="margin-top:30px;">
           <asp:Button CssClass ="button_function" style ="background:#6c757d; border:1px solid #6c757d;" ID="btnToList" runat="server" Text="홈으로" PostBackUrl="~/index.aspx"  />
           <asp:Button CssClass ="button_function" ID="btnContentWrite" runat="server" Text="글쓰기" PostBackUrl="~/Board/Write.aspx" />  
       </div>
    </div>


    
</asp:Content>

