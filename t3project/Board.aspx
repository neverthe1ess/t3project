<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Board.aspx.cs" Inherits="Board" %>

<asp:Content ID="Content1" ContentPlaceHolderID="maincontent" Runat="Server">
   <div class ="function_title">
         <asp:Label ID="lbltable_title" runat="server" Text="게시판"></asp:Label>
   </div>
    <table style="width: 100%;">
        <tr>
            <td colspan="3" style="text-align:left">글 목록</td>
        </tr>
        <tr>
            <td>
                <asp:SqlDataSource ID="dSource" runat="server"></asp:SqlDataSource>
                
                <asp:GridView ID="gvList" runat="server" DataSourceID="dSource" AutoGenerateColumns="false" CellPadding ="4" ForeColor="#333333" AllowPaging="true" GridLines="None" PageSize="10">
                    <RowStyle BackColor ="#EFF3FB" />
                    <AlternatingRowStyle BackColor="White" />

                    <HeaderStyle BackColor="#507CD1" Font-Bold ="True" ForeColor ="White" />
                    <PagerStyle BackColor="#FFFFFF" HorizontalAlign ="Left" />
                    
                    <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor ="White"/>
                    <EmptyDataTemplate>
                        등록된 게시물이 없습니다.
                    </EmptyDataTemplate>

                    <Columns>
                        <asp:BoundField DataField="serial_no" HeaderText ="번호" >
                            <HeaderStyle Width="60px" />
                            <ItemStyle HorizontalAlign ="Center"/>
                        </asp:BoundField>
                        <asp:TemplateField HeaderText="제목" HeaderStyle-Width="330px">



                        </asp:TemplateField>
                    </Columns>


                </asp:GridView>
            </td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td colspan="3" style="text-align:right"><asp:Button ID="Button1" runat="server" Text="Button" /></td>
        </tr>
    </table>
    
</asp:Content>

