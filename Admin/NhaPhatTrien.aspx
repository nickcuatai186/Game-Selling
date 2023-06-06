<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NhaPhatTrien.aspx.cs" Inherits="DoanWeb.NhaPhatTrien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
        font-size: x-large;
    }
    .auto-style6 {
        font-size: medium;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style5"><strong>Nhà phát triển</strong></td>
        </tr>
        <tr>
            <td class="auto-style4">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemNhaPhatTrien.aspx" BackColor="#0099CC" BorderStyle="Outset" CssClass="auto-style6" ForeColor="White">Thêm nhà phát triển</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNPT" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaNPT" HeaderText="MaNPT" ReadOnly="True" SortExpression="MaNPT" />
                        <asp:BoundField DataField="TenNPT" HeaderText="TenNPT" SortExpression="TenNPT" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebLmao %>" DeleteCommand="delete from NhaPhatTrien where MaNPT = @MaNPT" SelectCommand="SELECT * FROM [NhaPhatTrien]" UpdateCommand="update NhaPhatTrien set TenNPT = @TenNPT where MaNPT = @MaNPT">
                    <DeleteParameters>
                        <asp:Parameter Name="MaNPT" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="MaNPT" />
                        <asp:Parameter Name="TenNPT" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
