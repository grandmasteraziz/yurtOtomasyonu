using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class yonetici_YoneticiIslem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Yonetici"] != null)
        {
            Response.Write("Hoşgeldin,   " + Session["Yonetici"]);
        }
     
        if (Session==Session["Ogrenci"] )
        {
            Response.Write("<font color=red> Bu sayfayı görüntülemeye yetkiniz yok!</font>");
            Response.Write("<font color=red>Yönlendiriliyorsunuz!</font>");
            Response.Redirect("../Default.aspx");
        }
    }
     
    protected void oturumuKapat_Click1(object sender, EventArgs e)
    {
        Session.Abandon();

        Response.Redirect("../Default.aspx");
    }
}