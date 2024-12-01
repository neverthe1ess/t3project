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
  
            
           <td colspan="3" style="text-align: center;"> <!-- DataList를 가운데 정렬 -->
                <div style="display: inline-block; text-align: left;"> <!-- DataList 크기 고정 및 중앙 배치 -->
                    <asp:DataList ID="dlstMemo" runat="server" CellPadding="3" 
                        ondeletecommand="dlstMemo_DeleteCommand" BackColor="White" 
                        BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellSpacing="1">
                        <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                        <ItemStyle BackColor="#DEDFDE" ForeColor="Black" />
                        <SelectedItemStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />

                        <HeaderTemplate>
                            <center><h3>웹 메모</h3><hr width="600"></center>
                        </HeaderTemplate>
                        <ItemTemplate>
                            제목 : <%# Eval("Title") %>&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="btnDelete" runat="server" Text="×" CommandName="Delete" /><br />
                            <b>
                                <asp:Label ID="lblContent" runat="server" Text='<%# Eval("Content") %>' Width="600px" />
                            </b><br />
                            작성일 : <%# Eval("Written") %>
                            <asp:HiddenField ID="hdnFileName" runat="server" Value='<%# Eval("FileName") %>' />
                        </ItemTemplate>
                    </asp:DataList>
                </div>
            </td>
        <table style="margin: 0 auto; padding: 10px; width: 600px;">
            <tr>
                <td style="width: 70px">
                    제목</td>
                <td style="width: 1px">
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtTitle" runat="server" Width="500px"></asp:TextBox>
                </td>
                <td style="width: 10px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    메모</td>
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="txtContent" runat="server" Height="100px" Width="500px" 
                        TextMode="MultiLine"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
                <td>
                    &nbsp;</td>
                <td style="text-align: right">
                    <asp:Button ID="btnSubmit" runat="server" onclick="btnSubmit_Click" 
                        Text="메모 작성" />
                </td>
                <td style="text-align: right">
                    &nbsp;</td>
            </tr>
        </table>


            <td>
                 

                <div style="text-align: center;">

            <asp:GridView ID="gvList" runat="server" AutoGenerateColumns="false" CellPadding="4" ForeColor="#333333" AllowPaging="true" GridLines="None" PageSize="10">
                <RowStyle BackColor="#EFF3FB" />
                <AlternatingRowStyle BackColor="White" />

                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#FFFFFF" HorizontalAlign="Left" />
                
                <FooterStyle BackColor="#507CD1" Font-Bold="true" ForeColor="White"/>
                <EmptyDataTemplate>등록된 게시물이 없습니다.</EmptyDataTemplate>
                
                <Columns>
            
                    <asp:BoundField DataField="serial_no" HeaderText="번호">
                        <HeaderStyle Width="60px" />
                        <ItemStyle HorizontalAlign="Center"/>
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

