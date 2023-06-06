<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="NhaPhatHanh.aspx.cs" Inherits="DoanWeb.NhaPhatHanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 1163px;
        }
        .auto-style2 {
            width: 1154px;
        }
        .auto-style3 {
            width: 347px;
        }
        .auto-style4 {
            height: 26px;
        }
        .auto-style5 {
            width: 347px;
            height: 29px;
        }
        .auto-style6 {
            height: 29px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="3">Nhà phát hành</td>
        </tr>
        <tr>
            <td class="auto-style4" colspan="3">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Admin/ThemNhaPhatHanh.aspx" BackColor="#0099CC" BorderStyle="Outset" ForeColor="White">Thêm nhà phát hành</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="3">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="MaNPH" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="MaNPH" HeaderText="MaNPH" ReadOnly="True" SortExpression="MaNPH" />
                        <asp:BoundField DataField="TenNPH" HeaderText="TenNPH" SortExpression="TenNPH" />
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:WebLmao %>" SelectCommand="SELECT * FROM [NhaPhatHanh]" DeleteCommand="delete from  NhaPhatHanh where MaNPH = @MaNPH " UpdateCommand="update NhaPhatHanh set TenNPH = @TenNPH where MaNPH = @MaNPH">
                    <DeleteParameters>
                        <asp:Parameter Name="MaNPH" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="TenNPH" />
                        <asp:Parameter Name="MaNPH" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </td>
            <td class="auto-style6" colspan="2">&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style3">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
