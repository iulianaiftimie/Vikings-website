using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    SubjectsFac objSub = new SubjectsFac();

    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        dt = objSub.GetLatestSubject();

        foreach (DataRow sub in dt.Rows)
        {
            litResult.Text += "<div id='subjectbox'>";
            litResult.Text += "<a href='Subject.aspx?subid=" + sub["fldSubID"] + "'><img src='img/" + sub["fldImage"] + "'/></a><br /><div class='subTitle'>" + sub["fldTitle"] + "</div><br /><br />";
            litResult.Text += "</div>";

            
        
        }
    }
}