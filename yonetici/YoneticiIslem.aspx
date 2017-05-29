<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="YoneticiIslem.aspx.cs" Inherits="yonetici_YoneticiIslem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
        <br />
    </p>
    <asp:Menu ID="Menu2" runat="server" BackColor="#E3EAEB" DynamicHorizontalOffset="2" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#666666" StaticSubMenuIndent="10px">
        <DynamicHoverStyle BackColor="#666666" ForeColor="White" />
        <DynamicMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <DynamicMenuStyle BackColor="#E3EAEB" />
        <DynamicSelectedStyle BackColor="#1C5E55" />
        <Items>
            <asp:MenuItem NavigateUrl="~/yonetici/OdemeBilgisi.aspx" Text="Ödeme Bilgisi" Value="Ödeme Bilgisi"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/yonetici/OgrenciEkle.aspx" Text="Öğrenci Ekle" Value="Öğrenci Ekle"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/yonetici/ogrenciListele.aspx" Text="Öğrenci Listele" Value="Öğrenci Listele"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/yonetici/OgrenciyeZimmetle.aspx" Text="Zimmetle" Value="Zimmetle"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/yonetici/ArizaGor.aspx" Text="Arıza Oku" Value="Arıza Oku"></asp:MenuItem>
            <asp:MenuItem NavigateUrl="~/yonetici/SikayetOku.aspx" Text="Şikayet Oku" Value="Şikayet Oku"></asp:MenuItem>
        </Items>
        <StaticHoverStyle BackColor="#666666" ForeColor="White" />
        <StaticMenuItemStyle HorizontalPadding="5px" VerticalPadding="2px" />
        <StaticSelectedStyle BackColor="#1C5E55" />
    </asp:Menu>
    <p>
        <asp:Button ID="oturumuKapat" runat="server" OnClick="oturumuKapat_Click1" Text="Oturumu Kapat" />
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

