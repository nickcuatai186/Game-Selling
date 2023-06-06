<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="BaiTapTongHop.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            font-size: large;
        }
    .auto-style2 {
        font-size: medium;
    }
    .auto-style3 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <strong><span class="auto-style3">Danh mục sản phẩm</span></strong><br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemSanPham.aspx" BackColor="#0099CC" BorderStyle="Outset" CssClass="auto-style4" ForeColor="White">Thêm sản phẩm</asp:HyperLink>
        <br />
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaSP" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="DonViTinh" HeaderText="DonViTinh" SortExpression="DonViTinh" />
                <asp:BoundField DataField="DonGia" HeaderText="DonGia" SortExpression="DonGia" />
                <asp:BoundField DataField="Tinhtrang" HeaderText="Tinhtrang" SortExpression="Tinhtrang" />
                <asp:BoundField DataField="Mota" HeaderText="Mota" SortExpression="Mota" />
                <asp:BoundField DataField="Danhgia" HeaderText="Danhgia" SortExpression="Danhgia" />
                <asp:BoundField DataField="AnhBia" HeaderText="AnhBia" SortExpression="AnhBia" />
                <asp:BoundField DataField="Ngayphathanh" HeaderText="Ngayphathanh" SortExpression="Ngayphathanh" />
                <asp:TemplateField>
                    <EditItemTemplate>
                        <asp:Button ID="Button6" runat="server" CommandName="Update" Text="Cập nhật" />
                        <asp:Button ID="Button7" runat="server" CommandName="Cancel" Text="Hủy" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="Button4" runat="server" CommandName="Edit" Text="Sửa" />
                        <asp:Button ID="Button5" runat="server" CommandName="Delete" Text="Xóa" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web %>" DeleteCommand="delete from SanPham where MaSP = @MaSP" SelectCommand="SELECT [MaSP], [TenSP], [DonViTinh], [DonGia], [Tinhtrang], [Mota], [Danhgia], [AnhBia], [Ngayphathanh] FROM [SanPham]" UpdateCommand="update SanPham set TenSP = @TenSP, DonViTinh = @DonViTinh, DonGia = @DonGia, Tinhtrang = @Tinhtrang, Mota = @Mota, Danhgia = @Danhgia, AnhBia = @AnhBia, Ngayphathanh = @Ngayphathanh where MaSP = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenSP" />
                <asp:Parameter Name="DonViTinh" />
                <asp:Parameter Name="DonGia" />
                <asp:Parameter Name="Tinhtrang" />
                <asp:Parameter Name="Mota" />
                <asp:Parameter Name="Danhgia" />
                <asp:Parameter Name="AnhBia" />
                <asp:Parameter Name="Ngayphathanh" />
                <asp:Parameter Name="MaSP" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </asp:Content>
