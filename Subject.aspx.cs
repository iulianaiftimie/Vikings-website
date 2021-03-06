﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Subject : System.Web.UI.Page
{
    SubjectsFac objSub = new SubjectsFac();
    DataTable dt = new DataTable();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (!string.IsNullOrEmpty(Request.QueryString["subid"]))
            {
                objSub._id = Convert.ToInt32(Request.QueryString["subid"]);

                DataTable dt = new DataTable();
                dt = objSub.GetSubjectFromID();

                foreach (DataRow sub in dt.Rows)
	            {
                    litResult.Text += "<div id='subjectbox'>";
                    litResult.Text += "<img src='img/" + sub["fldImage"] + "'/></div><br /><div id='velkommen'><div id='subvelkommen'><h2>" + sub["fldTitle"] + "</h2></div><br /><p>" + sub["fldText"] + "</p></div><br /><br />";
	            
                }

            }
            else
            {
                Response.Redirect("Default.aspx");
            }
        }
    }
}