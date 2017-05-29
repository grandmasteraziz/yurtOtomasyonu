using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class SikayetEt : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Ogrenci"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Ogrenci"]);
        }
        else
        {
            Response.Redirect("../OgrenciLogin.aspx");
        }
    }
    protected void temizle_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
    }
    protected void kaydet_Click(object sender, EventArgs e)
    {
        String sikayetEden = Session["Ogrenci"].ToString();
        String sikayetKonusu = TextBox1.Text;
        OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("..\\App_data\\otomasyon.accdb"));
        baglan.Open();

        //  OleDbCommand db_komut = new OleDbCommand("Insert INTO ogrenci ( OgrNo,Ad,Soyad,Vize,Final  ) Values( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+TextBox5.Text+ "')"
        OleDbCommand ekle = new OleDbCommand("INSERT INTO Sikayet(SikayetEden,Konu) VALUES('" + sikayetEden + "', +'" + sikayetKonusu + "')", baglan);
        int durum = ekle.ExecuteNonQuery();
         

        if (durum > 0)
        {
            Label1.Text = "<font color=green>Şikayetiniz iletilmiştir. </font>";
            TextBox1.Text = null;
        }
        else
        {
            Label1.Text = "<font color=red>Üzgünüz! Şu anda hizmet veremiyoruz! </font>";

        }

        baglan.Close();
        baglan.Dispose();
    
       
    }
}