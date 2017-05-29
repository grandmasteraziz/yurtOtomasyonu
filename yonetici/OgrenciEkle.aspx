<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OgrenciEkle.aspx.cs" Inherits="yonetici_OgrenciEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 111px;
        }
        .auto-style2 {
            width: 111px;
            height: 20px;
        }
        .auto-style3 {
            height: 20px;
        }
        .auto-style4 {
            width: 91%;
            margin-right: 0px;
            margin-bottom: 17px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>Öğrenci Ekle</p>
     <table class="auto-style4">
         <tr>
             <td class="auto-style1">Öğrenci Adı</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="boş geçilemez"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style2">&nbsp;Doğum Tarihi</td>
             <td class="auto-style3">
                 <asp:TextBox ID="TextBox2" runat="server" TextMode="DateTime"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Boş geçilemez!!!"></asp:RequiredFieldValidator>
             &nbsp;(gün. ay. yıl şeklinde giriniz)</td>
         </tr>
         <tr>
             <td class="auto-style1">Tc Kimlik No</td>
             <td>
                 <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="Boş geçilemez!!!" ForeColor="Red"></asp:RequiredFieldValidator>
                 <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="11 haneli girin!" MaximumValue="99999999999" MinimumValue="1000000000" Type="Double"></asp:RangeValidator>
&nbsp;</td>
         </tr>
         <tr>
             <td class="auto-style1">Ana Adı</td>
             <td>
                 <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="Boş geçilemez!!" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Baba Adı</td>
             <td>
                 <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox5" ErrorMessage="Boş geçilemez!!!" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Fakülte</td>
             <td>
                 <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox6" ErrorMessage="boş geçilemez!" ForeColor="#CC0000"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Oda NO</td>
             <td>
                 <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox7" ErrorMessage="Boş geçilemez!!" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Şifre</td>
             <td>
                 <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox8" ErrorMessage="Boş geçilemez!!" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
             <td>
                 <asp:Button ID="kaydet" runat="server" OnClick="kaydet_Click" Text="Kaydet" />
                 <asp:Button ID="Temizle" runat="server" OnClick="Temizle_Click" Text="Temizle" ValidationGroup="asdad" />
             </td>
         </tr>
     </table>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
</asp:Content>

