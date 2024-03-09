<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="MuaXe.aspx.cs" Inherits="GroupProject_K4T.MuaXe" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h3>
            <table style="width: 100%;">
                <tr style="width: 100%">
                    <asp:Label ID="lbtbten" runat="server" Text=""></asp:Label>
                    <td>Tên đăng nhập:</td>
                    <td>
                        <asp:Label ID="lbTDN" runat="server" Text=""></asp:Label>
                        <asp:Label ID="lbtbTDN" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>Họ và tên:</td>
                    <td>
                        <asp:Label ID="lbTen" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>SĐT:</td>
                    <td>
                        <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Loại xe:</td>
                    <td>
                        <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>Giá tiền:</td>
                    <td>
                        <asp:Label ID="lbtbGia" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lbmaxe" runat="server" Text="" Visible="false"></asp:Label>
                        <asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="">
                        <asp:Button ID="btDat" runat="server" Text="Đặt mua" OnClick="btDat_Click" />
                    </td>
                </tr>
            </table>
        </h3>
    </div>
</asp:Content>
