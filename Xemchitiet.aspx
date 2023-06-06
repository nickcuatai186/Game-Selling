<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Xemchitiet.aspx.cs" Inherits="BaiTapTongHop.Xemchitiet" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 48px;
        }
        .auto-style3 {
            margin-left: 80px;
        height: 190px;
    }
        .auto-style4 {
            font-size: large;
            height: 29px;
        }
    .auto-style5 {
        font-size: large;
    }
    .auto-style6 {
        font-size: x-large;
    }
    .auto-style7 {
        width: 557px;
    }
        .auto-style8 {
            width: 367px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <p>
        &nbsp;<table style="width:100%;">
            <tr>
                <td class="auto-style4"><strong>Thông tin sản phẩm </strong></td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <table style="width:100%;">
                        <tr>
                            <td class="auto-style8" rowspan="6">
                                <asp:Image ID="lblanhbia" runat="server" Height="150px" Width="150px" />
                            </td>
                            <td class="auto-style7"><strong>Tên sản phẩm</strong>&nbsp;&nbsp;&nbsp;&nbsp;</td>
                            <td>
                    <strong>
                    <asp:Label ID="lbltensp" runat="server" Text="Label" CssClass="auto-style6"></asp:Label>
                    </strong>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>
                                Ngày phát hành</strong></td>
                            <td>
                                <asp:Label ID="lblngayphathanh" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>
                                Đánh giá</strong></td>
                            <td>
                                <asp:Label ID="lbldanhgia" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>
                                Nhà phát triển</strong></td>
                            <td>
                                <asp:Label ID="lblnhapt" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7"><strong>
                                Tình trạng</strong> &nbsp;&nbsp;&nbsp;</td>
                            <td><asp:Label ID="lbltinhtrang" runat="server" Text="Label"></asp:Label>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style7">
                    <strong>Giá tiền
                    </strong>
                            </td>
                            <td><strong><asp:Label ID="lblgia" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                    </strong>
                            </td>
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm vào giỏ " BackColor="#009933" BorderStyle="Outset" ForeColor="White" Height="50px" />
                    <asp:Button ID="btnback" runat="server" PostBackUrl="~/Trangchu.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" ForeColor="White" Height="50px" Width="97px" />
                    <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal">
                        <ItemTemplate>
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "HinhChiTiet/"+Eval("Hinhanh") %>' Height="150px" Width="150px" />
                        </ItemTemplate>
                    </asp:DataList>
                    <br />
                    <asp:TextBox ID="txtSoluong" runat="server"></asp:TextBox>
&nbsp;Số lượng<br />
                    <strong><span class="auto-style5">Mô tả</span></strong><br />
                    <asp:Label ID="lblmota" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Visible="False">
                    </asp:GridView>
                </td>
            </tr>
        </table>
    </p>
</asp:Content>
