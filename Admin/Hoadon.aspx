<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Hoadon.aspx.cs" Inherits="DoanWeb.Hoadon" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            height: 26px;
        width: 680px;
    }
        .auto-style5 {
            width: 680px;
            height: 29px;
        }
        .auto-style7 {
        font-size: x-large;
        width: 680px;
    }
    .auto-style8 {
        width: 680px;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td class="auto-style7"><strong>Hóa đơn</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemHoadon.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Thêm hóa đơn</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td class="auto-style8">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaHD" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" ReadOnly="True" SortExpression="MaHD" />
                        <asp:BoundField DataField="NgayLapHD" HeaderText="NgayLapHD" SortExpression="NgayLapHD" />
                        <asp:BoundField DataField="NgayGiaoHang" HeaderText="NgayGiaoHang" SortExpression="NgayGiaoHang" />
                        <asp:TemplateField>
                            <EditItemTemplate>
                                <asp:Button ID="Button6" runat="server" CommandName="Update" Text="Cập nhật" />
                                <asp:Button ID="Button7" runat="server" CommandName="Cancel" Text="Huỷ" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebLmao %>" SelectCommand="SELECT * FROM [HoaDon]" DeleteCommand="detele from HoaDon where MaHD = @MaHD" UpdateCommand="update HoaDon set NgayLapHD = @NgayLapHD, NgayGiaoHang = @NgayGiaoHang where MaHD = @MaHD">
                    <DeleteParameters>
                        <asp:Parameter Name="MaHD" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="NgayLapHD" />
                        <asp:Parameter Name="NgayGiaoHang" />
                        <asp:Parameter Name="MaHD" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
