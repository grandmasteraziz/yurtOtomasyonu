using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class yonetici_odemeBilgisi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Yonetici"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Yonetici"]);
        }
        else
        {
            Response.Redirect("../YoneticiLogin.aspx");
        }
        if (Session == Session["Ogrenci"])
        {
            Response.Write("<font color=red> Bu sayfayı görüntülemeye yetkiniz yok!</font>");
            Response.Write("<font color=red>Yönlendiriliyorsunuz!</font>");
            Response.Redirect("../Default.aspx");
        }
    }
    protected void odemeKaydet_Click(object sender, EventArgs e)
    {
        String ogrenciAd = TextBox1.Text;
        String ay = DropDownList1.SelectedValue;
         
        Byte odendi=Convert.ToByte(CheckBox1.Checked);

        OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("..\\App_data\\otomasyon.accdb"));
        baglan.Open();
        OleDbCommand odemeEkle = new OleDbCommand("INSERT INTO OdemeBilgisi(Adi,Ay,OdemeYapti)  VALUES('" + ogrenciAd + "', +'" + ay + "', +'" + odendi + "')", baglan);
        int durum2 = odemeEkle.ExecuteNonQuery();
        if (durum2 > 0)
        {
            Label1.Text += "<br/>" + " <font color=green>   Öğrencinin yurt ücreti ödenmiştir. </font> ";
        }
        baglan.Close();
        baglan.Dispose();
        TextBox1.Text = null;
        CheckBox1.Checked = false;

        
    }
    protected void Temizle_Click(object sender, EventArgs e)
    {
        TextBox1.Text = null;
        CheckBox1.Checked = false;
        DropDownList1.SelectedIndex=1;
    }
}