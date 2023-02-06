using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Media;
using System.IO;

namespace Projekat
{
    public partial class Random : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                string filess = Server.MapPath("~/Muzika/wav fajlovi");
                string[] files = Directory.GetFiles(filess);
                /*Random random = new Random();
                int index = random.Next(1, files.Count());
                SoundPlayer player = new SoundPlayer(files[index]);
                Label1.Text = "The song with index" + index + "was selected!";
                player.Play();*/
            }
            catch (Exception ex)
            {
                Label2.Text = "SERVER ERROR!";
                Label2.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }
    }
}