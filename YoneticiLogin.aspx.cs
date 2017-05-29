using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class YoneticiLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Yonetici"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Yonetici"]);
            Response.Redirect("yonetici/YoneticiIslem.aspx");
        }
       
        
        if (Session == Session["Ogrenci"])
        {
            Response.Write("<font color=red> Bu sayfayı görüntülemeye yetkiniz yok!</font>");
            Response.Write("<font color=red>Yönlendiriliyorsunuz!</font>");
            Response.Redirect("../Default.aspx");
        }
    }
    protected void Kaydet_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_data\\otomasyon.accdb"));
        baglanti.Open();

        String yoneticiAd = TextBox1.Text;
        String yoneticiParola = TextBox2.Text;

        OleDbCommand veriCek = new OleDbCommand("SELECT * FROM YoneticiLogin where YoneticiAdi='" + yoneticiAd + "' and YoneticiParola='" + yoneticiParola + "' ", baglanti);

        OleDbDataReader oku = veriCek.ExecuteReader();
        if (oku.Read())
        {
            Session.Add("Yonetici", yoneticiAd);
            Response.Redirect("yonetici/YoneticiIslem.aspx");
        }
        else
        {
            Label1.Text = "Giriş başarısız!";
        }
    }
}