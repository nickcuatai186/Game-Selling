<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemTheLoai.aspx.cs" Inherits="DoanWeb.ThemTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
        .auto-style2 {
            height: 26px;
            width: 1024px;
        }
        .auto-style3 {
            width: 402px;
        }
        .auto-style4 {
            height: 26px;
            width: 402px;
        }
    .auto-style5 {
        font-size: medium;
    }
        .auto-style6 {
            height: 26px;
            font-size: large;
            text-align: left;
        }
        .auto-style7 {
            width: 402px;
            font-size: medium;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td colspan="2" class="auto-style6"><strong>Thêm thể loại</strong></td>
        </tr>
        <tr>
            <td class="auto-style4"><strong>Mã thể loại</strong></td>
            <td class="auto-style1">
                <asp:TextBox ID="txtmatl" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="auto-style7"><strong>Tên thể loại</strong></td>
            <td>
                <asp:TextBox ID="txttentl" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style5" ForeColor="White" />
                <asp:Button ID="btnquaylai" runat="server" PostBackUrl="~/Admin/TheLoai.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style5" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>
