<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SikayetOku.aspx.cs" Inherits="yonetici_SikayetOku" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p> Şikayet Oku:</p>
    <p> 
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Kimlik" DataSourceID="SqlDataSource1" Width="391px">
            <Columns>
                <asp:BoundField DataField="Kimlik" HeaderText="Kimlik" InsertVisible="False" ReadOnly="True" SortExpression="Kimlik" />
                <asp:BoundField DataField="SikayetEden" HeaderText="SikayetEden" SortExpression="SikayetEden" />
                <asp:BoundField DataField="Konu" HeaderText="Konu" SortExpression="Konu" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [Kimlik], [SikayetEden], [Konu] FROM [Sikayet]"></asp:SqlDataSource>
    </p>
</asp:Content>

