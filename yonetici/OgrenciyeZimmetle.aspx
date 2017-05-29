<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OgrenciyeZimmetle.aspx.cs" Inherits="yonetici_OgrenciyeZimmetle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 194px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>Öğrenciye Zimmetle</p>
     <table class="nav-justified">
         <tr>
             <td class="auto-style1">Ürünü Alan</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Ürün Adı</td>
             <td>
                 <asp:DropDownList ID="DropDownList2" runat="server">
                     <asp:ListItem>yastık</asp:ListItem>
                     <asp:ListItem>battaniye</asp:ListItem>
                     <asp:ListItem>nevresim</asp:ListItem>
                     <asp:ListItem>buzdolabı</asp:ListItem>
                     <asp:ListItem>perde</asp:ListItem>
                     <asp:ListItem>masa lambası</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Ürün Adedi</td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server" Width="126px">
                     <asp:ListItem>1</asp:ListItem>
                     <asp:ListItem>2</asp:ListItem>
                     <asp:ListItem Value="3"></asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
             <td>
                 <asp:Button ID="Zimmetle" runat="server" OnClick="Zimmetle_Click" Text="Zimmetle" />
                 <asp:Button ID="Temizle" runat="server" Text="Temizle" />
             </td>
         </tr>
     </table>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
</asp:Content>

