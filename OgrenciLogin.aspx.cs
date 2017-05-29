using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class OgrenciLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Ogrenci"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Ogrenci"]);
            Response.Redirect("ogrenci/OgrenciIslem.aspx");
        }
     
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("App_data\\otomasyon.accdb"));
        baglanti.Open();

        String OgrAd = TextBox1.Text;
        String OgrParola = TextBox2.Text;

        OleDbCommand veriCek = new OleDbCommand("SELECT * FROM OgrenciLogin where OgrenciAdi='"+OgrAd+"' and OgrenciParola='"+OgrParola+"' ",baglanti);

        OleDbDataReader oku = veriCek.ExecuteReader();
        if (oku.Read())
        {
            Session.Add("Ogrenci", OgrAd);
            Response.Redirect("ogrenci/OgrenciIslem.aspx");
        }
        else{
            Label1.Text="Giriş başarısız!";
        }
            


    }
}