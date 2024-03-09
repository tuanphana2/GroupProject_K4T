<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DangNhap.aspx.cs" Inherits="GroupProject_K4T.DangNhap" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 style="display: flex; justify-content: center; align-items: center; min-height: 50px">ĐĂNG NHẬP</h2>
        <table style="width: 100%;">
            <tr style="width: 100%">
                <td>Tên đăng nhập:</td>
                <td>
                    <asp:TextBox ID="txtTDN" runat="server" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lbtbNhapTDN" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMK" runat="server" TextMode="Password" Height="20px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Label ID="lbtbMK" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <asp:Button ID="btDangNhap" runat="server" Text="Đăng nhập" OnClick="btDangNhap_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
