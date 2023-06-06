<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Trangchu.aspx.cs" Inherits="BaiTapTongHop.Trangchu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style2">
        &nbsp;&nbsp;&nbsp;
        <asp:DataList ID="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="4" RepeatDirection="Horizontal" CellPadding="30">
    <ItemTemplate>
        <asp:Label ID="Label1" runat="server" Text='<%# Eval("TenSP") %>'></asp:Label>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl='<%# "AnhBia/" + Eval("AnhBia") %>' Height="250px" Width="200px" />
        <br />
        <asp:Label ID="Label2" runat="server" Text='<%# Eval("Dongia") %>'></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "Xemchitiet.aspx?id=" + Eval("MaSP") %>'>Xem chi tiết</asp:HyperLink>
    </ItemTemplate>
</asp:DataList>
    </div>
<p>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web %>" SelectCommand="SELECT * FROM [SanPham]"></asp:SqlDataSource>
</p>
</asp:Content>
