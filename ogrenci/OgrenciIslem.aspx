<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OgrenciIslem.aspx.cs" Inherits="ogrenci_OgenciIslem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
<asp:Menu ID="Menu2" runat="server">
    <Items>
        <asp:MenuItem NavigateUrl="~/ogrenci/ArizaBildir.aspx" Text="Arıza Bildir" Value="Arıza Bildir"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/ogrenci/SikayetEt.aspx" Text="Şikayet Et" Value="Şikayet Et"></asp:MenuItem>
        <asp:MenuItem NavigateUrl="~/ogrenci/YemekListesi.aspx" Text="Yemek Listesi" Value="Yemek Listesi"></asp:MenuItem>
    </Items>
</asp:Menu>
    <p>
        &nbsp;<p>
        <asp:Button ID="oturumuKapat" runat="server" OnClick="oturumuKapat_Click" Text="oturumu kapat" />
    <p>
        &nbsp;<br />
&nbsp;</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>

