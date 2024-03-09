<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="ChiTiet.aspx.cs" Inherits="GroupProject_K4T.ChiTiet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="dl_chitiet" runat="server">
        <ItemTemplate>
            <table style="width: 100%;">
                <tr>
                    <td rowspan="4">
                        <asp:Image ID="Image1" Width="800px" runat="server" ImageUrl='<%# "Hinhanh/"+Eval("HINH") %>' />
                    </td>
                    <td>
                        <h3>
                            <asp:Label ID="Label6" runat="server" Text="Hãng xe: "></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENHANG") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label7" runat="server" Text="Dòng xe: "></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENXE") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label8" runat="server" Text="Màu xe: "></asp:Label>
                            <asp:Label ID="Label3" runat="server" Text='<%# Eval("MAU") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label9" runat="server" Text="Mô tả: "></asp:Label>
                            <asp:Label ID="Label4" runat="server" Text='<%# Eval("MOTA") %>' ></asp:Label><br /><br />
                            <asp:Label ID="Label10" runat="server" Text="Giá xe: "></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("GIA") %>'></asp:Label><br /><br />
                            <asp:Button ID="Button1" runat="server" Text="Đặt trước" OnClick="Button1_Click" CommandArgument='<%# Eval("MAXE") %>' />
                        </h3>
                    </td>
                </tr>
            </table>
        </ItemTemplate>
    </asp:DataList>
    <asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label>
</asp:Content>
