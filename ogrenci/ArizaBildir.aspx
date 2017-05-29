<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="ArizaBildir.aspx.cs" Inherits="ArizaBildir" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style8 {
            width: 100%;
        }
        .auto-style9 {
            width: 181px;
        }
    .auto-style10 {
        margin-top: 11px;
    }
    .auto-style11 {
        width: 100%;
        height: 56px;
        margin-top: 0px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <p>Oda Arızası Bildir</p>
     <table class="auto-style8">
         <tr>
             <td class="auto-style9">Arıza Türü</td>
             <td>
                 <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="33px" Width="185px">
                     <asp:ListItem>lamba</asp:ListItem>
                     <asp:ListItem>Buzdolabı</asp:ListItem>
                     <asp:ListItem>musluk</asp:ListItem>
                     <asp:ListItem>diğer</asp:ListItem>
                 </asp:DropDownList>
             </td>
         </tr>
         <tr>
             <td class="auto-style9">Arıza Bilgisi</td>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server" Width="180px" CssClass="auto-style10" Height="25px"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="Lütfen Arıza Bilgisini Girin!" ForeColor="#FF3300"></asp:RequiredFieldValidator>
             </td>
         </tr>
     </table>
     <table class="auto-style11">
         <tr>
             <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="BtnArizaBildir" runat="server" OnClick="Button1_Click" Text="Arıza Bildir" Width="179px" CssClass="col-xs-offset-0" />
&nbsp;&nbsp;&nbsp; &nbsp;</td>
         </tr>
     </table>
     <p>
         <asp:Label ID="Label1" runat="server"></asp:Label>
     </p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
     <p>&nbsp;</p>
</asp:Content>

