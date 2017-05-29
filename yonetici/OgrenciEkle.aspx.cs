using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;


public partial class yonetici_OgrenciEkle : System.Web.UI.Page
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
        if (Session==Session["Ogrenci"] )
        {
            Response.Write("<font color=red> Bu sayfayı görüntülemeye yetkiniz yok!</font>");
            Response.Write("<font color=red>Yönlendiriliyorsunuz!</font>");
            Response.Redirect("../Default.aspx");
        }
    }
   
    
    protected void kaydet_Click(object sender, EventArgs e)
    {
        string ad = TextBox1.Text;
        string zaman = TextBox2.Text;
        DateTime tarih = Convert.ToDateTime(zaman).Date;
        string tckn = TextBox3.Text;
        string anaAdi = TextBox4.Text;
        string babaAdi = TextBox5.Text;
        string fakulte = TextBox6.Text;
        string odaNo = TextBox7.Text;
        string sifre = TextBox8.Text;

        OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("..\\App_data\\otomasyon.accdb"));
        baglan.Open();

        //  OleDbCommand db_komut = new OleDbCommand("Insert INTO ogrenci ( OgrNo,Ad,Soyad,Vize,Final  ) Values( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+TextBox5.Text+ "')"
        OleDbCommand ekleOgrencibilgiye = new OleDbCommand("INSERT INTO OgrenciBilgi(OgrenciAdi,OgrenciDT,OgrenciTC,OgrenciAna,OgrenciBaba,OgrenciFakulte,OgrenciOdaNo,Sifre) VALUES('" + ad + "', +'" + tarih + "', +'" + tckn + "', +'" + anaAdi + "', +'" + babaAdi + "', +'" + fakulte + "', +'" + odaNo + "', +'" + sifre + "')", baglan);
        int durum = ekleOgrencibilgiye.ExecuteNonQuery();

        if (durum > 0)
        {
            Label1.Text = "<font color=green>öğrenci kaydı yapılmıştır! </font>";
            TextBox1.Text = null;
        }
        else
        {
            Label1.Text = "<font color=red>kayıt yapılamadı. </font>";

        }
        OleDbCommand ekleOgrenciLogin = new OleDbCommand("INSERT INTO OgrenciLogin(OgrenciAdi,OgrenciParola)  VALUES('" + ad + "', +'" + sifre + "')",baglan);
        int durum2 = ekleOgrenciLogin.ExecuteNonQuery();
        if(durum2>0){
            Label1.Text += "<br/>"+ " <font color=green>   Öğrenci Sisteme giriş yapabilir! </font> ";
        }
        baglan.Close();
        baglan.Dispose();
        TextBox1.Text = null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;
        TextBox6.Text = null;
        TextBox7.Text = null;
        TextBox8.Text = null;
    }
    protected void Temizle_Click(object sender, EventArgs e)
    {
        TextBox1.Text=null;
        TextBox2.Text = null;
        TextBox3.Text = null;
        TextBox4.Text = null;
        TextBox5.Text = null;
        TextBox6.Text = null;
        TextBox7.Text = null;
        TextBox8.Text = null;
    }
}