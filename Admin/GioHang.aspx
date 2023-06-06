<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="GioHang.aspx.cs" Inherits="BaiTapTongHop.GioHang" EnableEventValidation="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            width: 569px;
        }
        .auto-style3 {
            width: 143px;
            height: 78px;
        }
        .auto-style4 {
            width: 569px;
            height: 78px;
        }
        .auto-style5 {
            height: 78px;
        }
    .auto-style6 {
        font-size: x-large;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="3" class="auto-style6"><strong>Giỏ hàng</strong></td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:GridView ID="grdGioHang" runat="server" AutoGenerateColumns="False" onrowdeleting="grdGioHang_RowDeleting" onrowediting="grdGioHang_RowEditing" 
        onrowupdating="grdGioHang_RowUpdating" 
    onrowcancelingedit="grdGioHang_RowCancelingEdit" Height="158px" Width="407px">
                    <Columns>
                        <asp:CommandField CancelText="Hủy" DeleteText="Xóa" EditText="Chỉnh sửa" ShowDeleteButton="True" UpdateText="Cập nhật" />
                        <asp:BoundField DataField="TenSP" HeaderText="Tên hàng" />
                        <asp:BoundField DataField="Gia" DataFormatString="{0:0,000}" HeaderText="Đơn giá" />
                        <asp:BoundField DataField="SoLuong" HeaderText="Số lượng" />
                        <asp:BoundField DataField="TongTien" DataFormatString="{0:0,000}" HeaderText="Thành tiền" />
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
        <tr>
            <td class="auto-style4" rowspan="2">
                <strong>
                <asp:Label ID="lblTongtien" runat="server"></asp:Label>
                </strong>
                <br />
                <br />
                <strong>Thông tin đặt hàng:&nbsp;</strong>&nbsp; *Email:<asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style5" colspan="2">
                <strong>
                <asp:Button ID="btndathang" runat="server" OnClick="btndathang_Click" Text="Thanh toán" BackColor="#6600CC" BorderStyle="Outset" ForeColor="White" Height="50px" />
                <asp:Button ID="btntieptuc" runat="server" PostBackUrl="~/Trangchu.aspx" Text="Tiếp tục mua hàng" BackColor="#6600CC" BorderStyle="Outset" ForeColor="White" Height="50px" Width="300px" />
                </strong>
            </td>
        </tr>
        <tr>
            <td class="auto-style3">*<strong>Điện thoại:</strong></td>
            <td class="auto-style5">
                <asp:TextBox ID="txtsdt" runat="server"></asp:TextBox>
            </td>
        </tr>
    </table>
</asp:Content>
