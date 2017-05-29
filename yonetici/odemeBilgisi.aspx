<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OdemeBilgisi.aspx.cs" Inherits="yonetici_odemeBilgisi" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 168px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>ödeme bilgisi aylara göre yapılacak chechbox koy true false diye veritabanına gönder</p>
     <table class="nav-justified">
         <tr>
             <td class="auto-style1">Öğrenci Adı</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Ay </td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server">
                     <asp:ListItem>ocak</asp:ListItem>
                     <asp:ListItem>şubat</asp:ListItem>
                     <asp:ListItem>mart</asp:ListItem>
                     <asp:ListItem>Nisan</asp:ListItem>
                     <asp:ListItem>mayıs</asp:ListItem>
                     <asp:ListItem>haziran</asp:ListItem>
                     <asp:ListItem>temmuz</asp:ListItem>
                     <asp:ListItem>ağustos</asp:ListItem>
                     <asp:ListItem>eylül</asp:ListItem>
                     <asp:ListItem>ekim</asp:ListItem>
                     <asp:ListItem>aralık</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style1">Ödendi mi?</td>
             <td>
                 <asp:CheckBox ID="CheckBox1" runat="server" Text="evet" />
             </td>
         </tr>
         <tr>
             <td class="auto-style1">
                 <asp:Label ID="Label1" runat="server"></asp:Label>
             </td>
             <td>
                 <asp:Button ID="odemeKaydet" runat="server" OnClick="odemeKaydet_Click" Text="Kaydet" />
                 <asp:Button ID="Temizle" runat="server" OnClick="Temizle_Click" Text="Temizle" />
             </td>
         </tr>
         <tr>
             <td class="auto-style1">&nbsp;</td>
             <td>&nbsp;</td>
         </tr>
     </table>
     <p>&nbsp;</p>
     <p>
         <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False"  CellPadding="4" DataKeyNames="Kimlik" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="466px">
             <AlternatingRowStyle BackColor="White" />
             <Columns>
                 <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
                 <asp:BoundField DataField="Adi" HeaderText="Adi" SortExpression="Adi" />
                 <asp:BoundField DataField="Ay" HeaderText="Ay" SortExpression="Ay" />
                 <asp:CheckBoxField DataField="OdemeYapti" HeaderText="OdemeYapti" SortExpression="OdemeYapti" />
             </Columns>
             <EditRowStyle BackColor="#7C6F57" />
             <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
             <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
             <RowStyle BackColor="#E3EAEB" />
             <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
             <SortedAscendingCellStyle BackColor="#F8FAFA" />
             <SortedAscendingHeaderStyle BackColor="#246B61" />
             <SortedDescendingCellStyle BackColor="#D4DFE1" />
             <SortedDescendingHeaderStyle BackColor="#15524A" />
         </asp:GridView>
         <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Kimlik], [Adi], [Ay], [OdemeYapti] FROM [OdemeBilgisi]"></asp:SqlDataSource>
     </p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
</asp:Content>

