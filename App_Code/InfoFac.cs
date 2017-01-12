using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for InfoFac
/// </summary>
public class InfoFac
{
    DataAccess DA = new DataAccess();

    public DataTable GetInfo()
    {
        string SQL = @"SELECT * FROM tblInfo";

        SqlCommand CMD = new SqlCommand(SQL);
        return DA.GetData(CMD);
    }

}
