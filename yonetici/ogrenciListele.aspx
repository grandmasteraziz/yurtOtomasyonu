<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ogrenciListele.aspx.cs" Inherits="yonetici_ogrenciListele" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>Ögrenci listesi</p>
     <p>&nbsp;</p>
     <p>
         <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataKeyNames="Kimlik" DataSourceID="SqlDataSource1" GridLines="Vertical">
             <AlternatingRowStyle BackColor="#DCDCDC" />
             <Columns>
                 <asp:CommandField ShowSelectButton="True" />
                 <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
                 <asp:BoundField DataField="OgrenciAdi" HeaderText="OgrenciAdi" SortExpression="OgrenciAdi" />
                 <asp:BoundField DataField="OgrenciDT" HeaderText="OgrenciDT" SortExpression="OgrenciDT" />
                 <asp:BoundField DataField="OgrenciTC" HeaderText="OgrenciTC" SortExpression="OgrenciTC" />
                 <asp:BoundField DataField="OgrenciAna" HeaderText="OgrenciAna" SortExpression="OgrenciAna" />
                 <asp:BoundField DataField="OgrenciBaba" HeaderText="OgrenciBaba" SortExpression="OgrenciBaba" />
                 <asp:BoundField DataField="OgrenciFakulte" HeaderText="OgrenciFakulte" SortExpression="OgrenciFakulte" />
                 <asp:BoundField DataField="OgrenciOdaNo" HeaderText="OgrenciOdaNo" SortExpression="OgrenciOdaNo" />
                 <asp:BoundField DataField="Sifre" HeaderText="Sifre" SortExpression="Sifre" />
             </Columns>
             <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
             <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
             <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
             <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
             <SortedAscendingCellStyle BackColor="#F1F1F1" />
             <SortedAscendingHeaderStyle BackColor="#0000A9" />
             <SortedDescendingCellStyle BackColor="#CAC9C9" />
             <SortedDescendingHeaderStyle BackColor="#000065" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [OgrenciBilgi]"></asp:SqlDataSource>
     </p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
</asp:Content>

