<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DongXe.aspx.cs" Inherits="GroupProject_K4T.DongXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:DataList ID="dl_muaxe" runat="server">
            <ItemTemplate>
                </table>
            <table style="width: 100%;">
                <tr style="width: 100%">
                    <td rowspan="4" style="width: 45%">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "Hinhanh/"+Eval("HINH") %>' Style="width: 600px" />
                    </td>
                    <td>
                        <h2>
                            <asp:Label ID="Label3" runat="server" Text="Hãng xe: "></asp:Label>
                            <asp:Label ID="Label1" runat="server" Text='<%# Eval("TENHANG") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label4" runat="server" Text="Dòng xe: "></asp:Label>
                            <asp:Label ID="Label2" runat="server" Text='<%# Eval("TENXE") %>'></asp:Label><br /><br />
                            <asp:Label ID="Label6" runat="server" Text="Giá xe: "></asp:Label>
                            <asp:Label ID="Label5" runat="server" Text='<%# Eval("GIA") %>'></asp:Label>$<br /><br />
                            <asp:Button ID="Button2" runat="server" Text="Chi tiết" OnClick="Button2_Click" CommandArgument='<%# Eval("MAXE") %>' />
                            <asp:Button ID="Button1" runat="server" Text="Đặt trước" OnClick="Button1_Click" CommandArgument='<%# Eval("MAXE") %>' />
                        </h2>
                    </td>
                </tr>
            </table>
            </ItemTemplate>
        </asp:DataList>
    </div>
</asp:Content>
