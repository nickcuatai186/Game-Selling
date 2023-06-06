<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemTheLoai_SP.aspx.cs" Inherits="DoanWeb.ThemTheLoai_SP" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">


        .auto-style1 {
            height: 26px;
        }
        .auto-style8 {
            font-size: large;
        }
    .auto-style6 {
        width: 216px;
        height: 29px;
    }
    .auto-style7 {
        height: 29px;
    }
        .auto-style9 {
        font-size: medium;
    }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">
                <p class="auto-style8">
                    <strong>Thêm Thể Loại Sản Phẩm</strong></p>
                <p>
                    <table style="width:100%;">
                        <tr>
                <div class="auto-style2">
                            <td class="auto-style6"><strong>Mã sản phẩm</strong></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtmasp" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><strong>Mã thể loại</strong></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtmatl" runat="server" ></asp:TextBox>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style6"><strong>Ghi chú</strong></td>
                            <td class="auto-style7">
                                <asp:TextBox ID="txtghichu" runat="server"></asp:TextBox>
                            </td>
                        </tr>
                    </table>
                </p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style9" ForeColor="White" />
                <asp:Button ID="btnquaylai" runat="server" PostBackUrl="~/Admin/TheLoai_SP.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style9" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>
