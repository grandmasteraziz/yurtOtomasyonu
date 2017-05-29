using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

public partial class ArizaBildir : System.Web.UI.Page
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
    protected void Button1_Click(object sender, EventArgs e)
    {

        String arızaTuru = DropDownList1.SelectedValue;
        String arızaBilgi = TextBox1.Text;

      


        OleDbConnection baglan = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; Data Source=" + Server.MapPath("..\\App_data\\otomasyon.accdb"));
           baglan.Open();

           //  OleDbCommand db_komut = new OleDbCommand("Insert INTO ogrenci ( OgrNo,Ad,Soyad,Vize,Final  ) Values( '" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text +"','"+TextBox5.Text+ "')"
        OleDbCommand ekle=new OleDbCommand("INSERT INTO Arizalar(Turu,Bilgi) VALUES('"+arızaTuru+"', +'"+arızaBilgi+"')",baglan);
       int durum= ekle.ExecuteNonQuery();
       
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
    

        
       

        /* 
            OleDbConnection db_baglanti;
 
            db_baglanti = new OleDbConnection("Provider=Microsoft.ACE.OLEDB.12.0; DATA Source=" + Server.MapPath("aspnet.accdb"));
            try
            {
                db_baglanti.Open();
                OleDbCommand db_komut = new OleDbCommand("Insert INTO ogrenci ( ad, soyad, adres, ceptel ) Values( '"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')", db_baglanti);
                db_komut.ExecuteNonQuery();
                db_baglanti.Close();
                Label1.Text = "Kayıt Eklendi";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
               
            }
            catch
            {
                Response.Write("Bağlantıda sorun var !!!");
            }
         
         
         */


    }
}