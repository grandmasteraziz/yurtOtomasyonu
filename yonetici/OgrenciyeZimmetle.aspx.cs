using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class yonetici_OgrenciyeZimmetle : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Yonetici"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Yonetici"]);
        }
        else
        {
            Response.Redirect("../OgrenciLogin.aspx");
        }
        if (Session == Session["Ogrenci"])
        {
            Response.Write("<font color=red> Bu sayfayı görüntülemeye yetkiniz yok!</font>");
            Response.Write("<font color=red>Yönlendiriliyorsunuz!</font>");
            Response.Redirect("../Default.aspx");
        }
    }
    protected void Zimmetle_Click(object sender, EventArgs e)
    {
        String urunuAlan = TextBox1.Text;
        String urunAdi = DropDownList1.SelectedValue;
        String urunAdedi = DropDownList1.SelectedValue;

        OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("..\\App_data\\otomasyon.accdb"));
        baglan.Open();

        //  OleDbCommand db_komut = new OleDbCommand("Insert INTO ogrenci ( OgrNo,Ad,Soyad,Vize,Final  ) Values( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+TextBox5.Text+ "')"
        OleDbCommand zimmet = new OleDbCommand("INSERT INTO Zimmet(UrunuAlan,UrunAdi,UrunAdedi) VALUES('" + urunuAlan + "','" + urunAdi + "', +'" + urunAdedi+ "')", baglan);
        int durum = zimmet.ExecuteNonQuery();
        if (durum > 0)
        {
            Label1.Text = "<font color=green>kayıt eklenmiştir. </font>";
            TextBox1.Text = null;
        }
        else
        {
            Label1.Text = "<font color=red>kayıt yapılamadı. </font>";

        }

        baglan.Close();
        baglan.Dispose();
    
    }
}