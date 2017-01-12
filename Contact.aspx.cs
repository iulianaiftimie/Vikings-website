using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Contact : System.Web.UI.Page
{
    InfoFac objInfo = new InfoFac();

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = objInfo.GetInfo();

        foreach (DataRow info in dt.Rows)
        {
            litResult.Text += "<div id='info'>";
            litResult.Text += "<h1 class='infotitle'>Open Hours</h1>" + "<span class='infodetails'>" + info["fldOpen"] + "</span><br /><br />" + "<h1 class='infotitle'>Address</h1>" + "<span class='infodetails'>" + info["fldAddress"] + "<br />" + info["fldZip"] + "</span><br /><br />" + "<h1 class='infotitle'>Contact us</h1>" + "<span class='infodetails'>" + info["fldPhone"] + "<br />" + info["fldEmail"] + "</span>";
            litResult.Text += "</div>";
        }
        
    }
}