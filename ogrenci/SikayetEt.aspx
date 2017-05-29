<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SikayetEt.aspx.cs" Inherits="SikayetEt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>ogrenci işlem - şikayet et</p>
     <table class="nav-justified">
         <tr>
             <td class="auto-style1">şikayetiniz </td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server" Height="85px" Width="474px"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">&nbsp;</td>
             <td>
                 <asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click" Text="Kaydet" />
                 <asp:Button ID="temizle" runat="server" OnClick="temizle_Click" Text="Temizle" />
             </td>
         </tr>
         <tr>
             <td colspan="2">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
         </tr>
     </table>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>

</asp:Content>

