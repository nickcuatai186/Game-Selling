<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="SanPham_NPT.aspx.cs" Inherits="DoanWeb.Admin.SanPham_NPT" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style6 {
            width: 100%;
        }

        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 347px;
            height: 29px;
        }
        .auto-style7 {
        font-size: x-large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7"><strong>Nhà phát triển sản phẩm</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemSanPham_NPT.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Thêm nhà phát triển sản phẩm</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                        <asp:BoundField DataField="MaNPT" HeaderText="MaNPT" SortExpression="MaNPT" />
                        <asp:BoundField DataField="Ghichu" HeaderText="Ghichu" SortExpression="Ghichu" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:Button ID="Button6" runat="server" Text="Cập nhật" />
                                <asp:Button ID="Button7" runat="server" CommandName="Cancel" Text="Hủy" />
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:Button ID="Button4" runat="server" CommandName="Edit" Text="Sửa" />
                                <asp:Button ID="Button5" runat="server" CommandName="Delete" Text="Xóa" />
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebLmao %>" SelectCommand="SELECT * FROM [SP_NPT]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
