using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ogrenci_OgenciIslem : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Ogrenci"] !=null){        
            Response.Write("Hoşgeldin,   "+ Session["Ogrenci"]);  
        }
        else{
            Response.Redirect("../OgrenciLogin.aspx");
        }

    }
    protected void oturumuKapat_Click(object sender, EventArgs e)
    {
        Session.Abandon();
         
        Response.Redirect("../Default.aspx");
    }
}