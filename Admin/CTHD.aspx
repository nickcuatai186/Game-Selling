<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="CTHD.aspx.cs" Inherits="DoanWeb.Admin.CTHD" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style6">
        <tr>
            <td>Chi tiết hóa đơn</td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemCTHD.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Dữ liệu chi tiết hóa đơn</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="MaHD">
                    <Columns>
                        <asp:BoundField DataField="MaHD" HeaderText="MaHD" SortExpression="MaHD" ReadOnly="True" />
                        <asp:BoundField DataField="NgayLapHD" HeaderText="NgayLapHD" SortExpression="NgayLapHD" />
                        <asp:BoundField DataField="NgayGiaoHang" HeaderText="NgayGiaoHang" SortExpression="NgayGiaoHang" />
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
            </td>
        </tr>
        <tr>
            <td class="auto-style5">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web %>" SelectCommand="SELECT * FROM [HoaDon]" UpdateCommand="update HoaDon set NgayLapHD = @NgayLapHD, NgayGiaoHang = @NgayGiaoHang where MaHD = @MaHD ">
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
