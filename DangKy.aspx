<%@ Page Title="" Language="C#" MasterPageFile="~/Home.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="GroupProject_K4T.DangKy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <h2 style="display: flex; justify-content: center; align-items: center; min-height:50px">ĐĂNG KÝ</h2>
        <table style="width: 100%;">
            <tr style="width: 100%">
                <td>Tên đăng nhập:</td>
                <td>
                    <asp:TextBox ID="txtTDN" runat="server"></asp:TextBox>
                    <asp:Label ID="lbtbTDN" runat="server" Text=""></asp:Label><br />
                    <asp:Label ID="lbtbNhapTDN" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMK" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:Label ID="lbtbMK" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Nhập lại mật khẩu:</td>
                <td>
                    <asp:TextBox ID="txtMK1" runat="server" TextMode="Password"></asp:TextBox><br />
                    <asp:CompareValidator ID="CompareValidator1" runat="server"
                        ErrorMessage="2 mật khẩu phải giống nhau"
                        ControlToValidate="txtMK1"
                        ControlToCompare="txtMK"
                        Display="Dynamic"
                        Operator="Equal"
                        Type="String">
                    </asp:CompareValidator>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Họ và tên:</td>
                <td>
                    <asp:TextBox ID="txtTen" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbtbNhapTen" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Tuổi:</td>
                <td>
                    <asp:TextBox ID="txtTuoi" runat="server" TextMode="Number"></asp:TextBox></td>
            </tr>
            <tr style="width: 100%">
                <td>Giới tính:</td>
                <td>
                    <asp:RadioButtonList ID="rblGT" runat="server" RepeatDirection="Horizontal" Style="margin-top: 0px">
                        <asp:ListItem Text="Nam"></asp:ListItem>
                        <asp:ListItem Text="Nữ"></asp:ListItem>
                        <asp:ListItem Text="Khác" Selected="True"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>Địa chỉ:</td>
                <td>
                    <asp:TextBox ID="txtDC" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>SĐT:</td>
                <td>
                    <asp:TextBox ID="txtSDT" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbtbSDT" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td>CCCD:</td>
                <td>
                    <asp:TextBox ID="txtCCCD" runat="server"></asp:TextBox><br />
                    <asp:Label ID="lbtbNhapCCCD" runat="server" Text=""></asp:Label>
                </td>
            </tr>
            <tr style="width: 100%">
                <td></td>
                <td>
                    <asp:Button ID="btDangKy" runat="server" Text="Đăng ký" OnClick="btDangKy_Click" />
                    <asp:Label ID="lbthongbao" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
