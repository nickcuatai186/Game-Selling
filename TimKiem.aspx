<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TimKiem.aspx.cs" Inherits="DoanWeb.TimKiem" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="30" OnSelectedIndexChanged="DataList1_SelectedIndexChanged">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Height="200px" Width="150px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Dongia") %>'></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Xemchitiet.aspx?id=" + Eval("MaSP") %>'>Xem chi tiết</asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
<asp:Label ID="lblkq" runat="server" Text="Không tìm thấy" Visible="False"></asp:Label>
</asp:Content>
