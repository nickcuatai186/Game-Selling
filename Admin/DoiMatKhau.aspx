<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DoiMatKhau.aspx.cs" Inherits="DoanWeb.DoiMatKhau" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ChangePassword ID="ChangePassword1" runat="server" CancelDestinationPageUrl="~/Trangchu.aspx" ContinueDestinationPageUrl="~/Trangchu.aspx" DisplayUserName="True" ChangePasswordButtonText="Thay đổi mật khẩu" ChangePasswordFailureText="Mật khẩu phải có ít nhất 7 kí tự và 1 kí tự đặc biệt" ChangePasswordTitleText="Thay đổi mật khẩu của bạn" ConfirmNewPasswordLabelText="Xác nhận mật khẩu mới" ConfirmPasswordCompareErrorMessage="Mật khẩu bạn nhập phải trùng khớp với mật khẩu mới" ContinueButtonText="Tiếp tục" NewPasswordLabelText="Mật khẩu mới" PasswordLabelText="Mật khẩu:" SuccessText="Mật khẩu của bạn đã được thay đổi" SuccessTitleText="Thay đổi mật khẩu thành công" UserNameLabelText="Tên đăng nhập:">
    <MailDefinition BodyFileName="~/ChangePassword.txt" From="bpush4321@gmail.com" Subject="Thay đổi mật khẩu!">
    </MailDefinition>
</asp:ChangePassword>
</asp:Content>
