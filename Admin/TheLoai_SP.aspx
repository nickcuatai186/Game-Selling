<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TheLoai_SP.aspx.cs" Inherits="DoanWeb.TheLoai_SP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 347px;
            height: 29px;
        }
        .auto-style6 {
        font-size: x-large;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style6"><strong>Dữ liệu thể loại sản phẩm</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemTheLoai_SP.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Thêm thể loại sản phẩm</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
                        <asp:BoundField DataField="MaTL" HeaderText="MaTL" SortExpression="MaTL" />
                        <asp:BoundField DataField="Ghichu" HeaderText="Ghichu" SortExpression="Ghichu" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebLmao %>" SelectCommand="SELECT * FROM [TL_SP]"></asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
