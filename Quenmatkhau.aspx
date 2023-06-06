<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Quenmatkhau.aspx.cs" Inherits="DoanWeb.Quenmatkhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" SubmitButtonText="Xác nhận" UserNameInstructionText="Nhập tên đăng nhập để lấy lại mật khẩu của bạn" UserNameLabelText="Tên đăng nhập" UserNameTitleText="Quên mật khẩu của bạn">
        <MailDefinition BodyFileName="~/ForgotPassword.txt" From="bpush4321@gmail.com" Subject="Quên mật khẩu!">
        </MailDefinition>
</asp:PasswordRecovery>
</asp:Content>
