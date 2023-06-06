<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="TheLoai.aspx.cs" Inherits="DoanWeb.TheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    .auto-style2 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width: 100%;">
        <tr>
            <td class="auto-style3"><strong>Danh mục thể loại</strong></td>
        </tr>
        <tr>
            <td class="auto-style1">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemTheLoai.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Thêm thể loại</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaTL" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaTL" HeaderText="MaTL" ReadOnly="True" SortExpression="MaTL" />
                        <asp:BoundField DataField="TenTL" HeaderText="TenTL" SortExpression="TenTL" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Web %>" DeleteCommand="delete from TheLoai where  MaTL = @MaTL" SelectCommand="SELECT * FROM [TheLoai]" UpdateCommand="update TheLoai set TenTL = @TenTL  where MaTL=@MaTL">
                    <DeleteParameters>
                        <asp:Parameter Name="MaTL" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenTL" />
                        <asp:Parameter Name="MaTL" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>
