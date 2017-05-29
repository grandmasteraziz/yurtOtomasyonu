using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ogrenci_YemekListesi : System.Web.UI.Page
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
}