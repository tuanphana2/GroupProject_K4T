<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="GroupProject_K4T.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h1 style="display: flex; justify-content: center;">Trang Chủ</h1>
        <h2 style="display: flex; justify-content: center;">Chào mừng bạn đến với cửa hàng bán ôtô của chúng tôi!</h2>
        <h3>Xe Hot</h3>
        <div style="display: flex; justify-content: center;">
            <asp:DataList ID="DataList2" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <table>
                        <tr style="width: 30%"></tr>
                        <tr>
                            <td style="width:200px">
                                <a href='<%# "ChiTiet.aspx?Maxe=" + Eval("MAXE") %>'>
                                    <asp:Image ID="imgXeHot" runat="server" ImageUrl='<%# "Hinhanh/" + Eval("HINH") %>' Width="175px" Height="125px" />
                                </a>
                                <br />
                                <asp:Label ID="lblTenXeHot" runat="server" Text='<%# Eval("TENXE") %>'></asp:Label><br />
                                <asp:Label ID="lblGiaXeHot" runat="server" Text='<%# Eval("GIA") + "$" %>'></asp:Label><br />
                                <asp:Button ID="btnXemChiTietXeHot" runat="server" Text="Xem Chi Tiết" CommandName="XemChiTiet" CommandArgument='<%# Eval("MAXE") %>' OnClick="btnXemChiTietXeHot_Click" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
        <h3>Xe Mới</h3>
        <div style="display: flex; justify-content: center;">
            <br />
            <asp:DataList ID="DataList1" runat="server" RepeatColumns="3">
                <ItemTemplate>
                    <table>
                        <tr>
                            <td style="width:200px">
                                <a href='<%# "ChiTiet.aspx?Maxe=" + Eval("MAXE") %>'>
                                    <asp:Image ID="imgXeMoi" runat="server" ImageUrl='<%# "Hinhanh/" + Eval("HINH") %>' Width="175px" Height="125px" />
                                </a>
                                <br />
                                <asp:Label ID="lblTenXeMoi" runat="server" Text='<%# Eval("TENXE") %>'></asp:Label><br />
                                <asp:Label ID="lblGiaXeMoi" runat="server" Text='<%# Eval("GIA") + "$" %>'></asp:Label><br />
                                <asp:Button ID="btnXemChiTietXeMoi" runat="server" Text="Xem Chi Tiết" CommandName="XemChiTiet" CommandArgument='<%# Eval("MAXE") %>' OnClick="btnXemChiTietXeMoi_Click" />
                            </td>
                        </tr>
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
    </div>
</asp:Content>
