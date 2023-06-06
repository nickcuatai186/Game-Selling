<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="DangKy.aspx.cs" Inherits="DoanWeb.DangKy" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" ContinueDestinationPageUrl="~/Trangchu.aspx" AnswerLabelText="Câu hỏi bảo mật" CancelButtonText="Hủy" CompleteSuccessText="Tài khoản của bạn đã được tạo thành công" ConfirmPasswordCompareErrorMessage="Mật khẩu và xác nhận mật khẩu phải giống nhau!" ConfirmPasswordLabelText="Xác nhận mật khẩu" ContinueButtonText="Tiếp tục" CreateUserButtonText="Tạo tài khoản" OnCreatedUser="CreateUserWizard1_CreatedUser" PasswordLabelText="Mật khẩu" QuestionLabelText="Câu hỏi" UnknownErrorMessage="Tài khoản của bạn chưa được tạo. hãy thử lại" UserNameLabelText="Tên đăng nhập">
    <MailDefinition From="bpush4321@gmail.com" Subject="Thông báo đăng ký tài khoản" BodyFileName="~/Register.txt">
    </MailDefinition>
    <WizardSteps>
        <asp:CreateUserWizardStep runat="server" />
        <asp:CompleteWizardStep runat="server" />
    </WizardSteps>
</asp:CreateUserWizard>
</asp:Content>
