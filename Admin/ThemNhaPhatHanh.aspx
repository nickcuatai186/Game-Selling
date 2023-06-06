<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="ThemNhaPhatHanh.aspx.cs" Inherits="DoanWeb.ThemNhaPhatHanh" %>
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%;">
        <tr>
            <td class="auto-style1">    <p class="auto-style8">
        <strong>Thêm Nhà Phát Hành</strong></p>
    <p>
        <table style="width:100%;">
            <tr>
                <div class="auto-style2">
                    <td class="auto-style6"><strong>Mã nhà phát hành</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txtmanph" runat="server"></asp:TextBox>
                </td>
                </tr>
                <tr>
                    <td class="auto-style6"><strong>Tên nhà phát hành</strong></td>
                    <td class="auto-style7">
                        <asp:TextBox ID="txttennph" runat="server" ></asp:TextBox>
                    </td>
                </tr>
                </table>
    </p>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btnthem" runat="server" OnClick="btnthem_Click" Text="Thêm" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style4" ForeColor="White" />
                <asp:Button ID="btnquaylai" runat="server" PostBackUrl="~/Admin/NhaPhatHanh.aspx" Text="Quay lại" BackColor="#009933" BorderStyle="Outset" CssClass="auto-style4" ForeColor="White" />
            </td>
        </tr>
    </table>
</asp:Content>
