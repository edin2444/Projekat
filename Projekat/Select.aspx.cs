using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Media;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat
{
    public partial class Select : System.Web.UI.Page
    {
        string[] files = Directory.GetFiles(@"D:\programi\Projekat\Projekat\Muzika\wav fajlovi");
        public SoundPlayer player;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                GridView1.DataSource = files;
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                Label3.Text = "SERVER ERROR!";
                Label3.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                int index = int.Parse(TextBox1.Text);
                player = new SoundPlayer(files[index]);
                player.Play();
            }
            catch (Exception ex)
            {
                Label3.Text = "SERVER ERROR!";
                Label3.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                int index = GridView1.SelectedIndex;
                TextBox1.Text = index.ToString();
            }
            catch (Exception ex)
            {
                Label3.Text = "SERVER ERROR!";
                Label3.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }
    }
}