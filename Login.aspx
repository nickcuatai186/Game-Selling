<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DoanWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    &nbsp;&nbsp;&nbsp; <asp:Login ID="Login1" runat="server" CreateUserText="Đăng ký" CreateUserUrl="~/DangKy.aspx" PasswordRecoveryText="Quên mật khẩu" PasswordRecoveryUrl="~/Quenmatkhau.aspx" LoginButtonText="Đăng nhập" PasswordLabelText="Mật khẩu:" RememberMeText="Ghi nhớ lần đăng nhập sau" TitleText="Đăng nhập" UserNameLabelText="Tên người dùng:">
</asp:Login>
</asp:Content>
