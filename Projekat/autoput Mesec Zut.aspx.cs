using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class autoput_Mesec_Zut : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SqlDataSource1_Selected(object sender, SqlDataSourceStatusEventArgs e)
        {
            if (e.Exception != null)
            {
                Label2.Text = "SERVER ERROR!";
                Label2.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(e.Exception.Message);
                System.Diagnostics.Debug.WriteLine(e.Exception.StackTrace);
                e.ExceptionHandled = true;
            }
        }
    }
}