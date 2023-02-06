using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat.Admin
{
    public partial class changerapsheet : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-HM6IAOL\EDSQL;Initial Catalog=Autici;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            int cts = int.Parse(TextBox2.Text.Trim());
            int ci = int.Parse(TextBox3.Text.Trim());
            int cm = int.Parse(TextBox4.Text.Trim());
            int bounty = int.Parse(TextBox5.Text.Trim());
            int fd = int.Parse(TextBox6.Text.Trim());
            int pe = int.Parse(TextBox7.Text.Trim());
            string tb = TextBox8.Text.Trim();
            insertrap(connection, name, cts, ci, cm, bounty, fd, pe, tb);
            Response.Redirect("~/Admin/changerapsheet.aspx", false);

        }

        private void insertrap(SqlConnection connection, string name, int cts, int ci, int cm, int bounty, int fd, int pe, string tb)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Name";
                p1.Value = name;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Cost";
                p2.Value = cts;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Impound";
                p3.Value = ci;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@Monitored";
                p4.Value = cm;
                SqlParameter p5 = new SqlParameter();
                p5.ParameterName = "@Bounty";
                p5.Value = bounty;
                SqlParameter p6 = new SqlParameter();
                p6.ParameterName = "@Fines";
                p6.Value = fd;
                SqlParameter p7 = new SqlParameter();
                p7.ParameterName = "@Evasion";
                p7.Value = pe;
                SqlParameter p8 = new SqlParameter();
                p8.ParameterName = "@Bust";
                p8.Value = tb;
                connection.Open();
                string query = "Insert into RapSheet(Name,CostToState,CarsImpounded,CarsMonitored,Bounty,FinesDue,PursuitsEvaded,TimesBusted) values(@Name,@Cost,@Impound,@Monitored,@Bounty,@Fines,@Evasion,@Bust)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);
                cmd.Parameters.Add(p5);
                cmd.Parameters.Add(p6);
                cmd.Parameters.Add(p7);
                cmd.Parameters.Add(p8);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label13.Text = "SERVER ERROR!";
                Label13.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text != "")
            {
                string name = TextBox1.Text.Trim();
                int cts = int.Parse(TextBox2.Text.Trim());
                int ci = int.Parse(TextBox3.Text.Trim());
                int cm = int.Parse(TextBox4.Text.Trim());
                int bounty = int.Parse(TextBox5.Text.Trim());
                int fd = int.Parse(TextBox6.Text.Trim());
                int pe = int.Parse(TextBox7.Text.Trim());
                string tb = TextBox8.Text.Trim();
                int id=int.Parse(TextBox11.Text.Trim());
                updaterap(connection, name, cts, ci, cm, bounty, fd, pe, tb,id);
                Response.Redirect("~/Admin/changerapsheet.aspx", false);

            }
            else
            {
                Label15.Text = "You have to insert ID!";
            }

        }

        private void updaterap(SqlConnection connection, string name, int cts, int ci, int cm, int bounty, int fd, int pe, string tb,int id)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Name";
                p1.Value = name;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Cost";
                p2.Value = cts;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Impound";
                p3.Value = ci;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@Monitored";
                p4.Value = cm;
                SqlParameter p5 = new SqlParameter();
                p5.ParameterName = "@Bounty";
                p5.Value = bounty;
                SqlParameter p6 = new SqlParameter();
                p6.ParameterName = "@Fines";
                p6.Value = fd;
                SqlParameter p7 = new SqlParameter();
                p7.ParameterName = "@Evasion";
                p7.Value = pe;
                SqlParameter p8 = new SqlParameter();
                p8.ParameterName = "@Bust";
                p8.Value = tb;
                SqlParameter p9 = new SqlParameter();
                p9.ParameterName = "@id";
                p9.Value = id;
                connection.Open();
                string query = "Update RapSheet set Name=@Name,CostToState=@Cost,CarsImpounded=@Impound,CarsMonitored=@Monitored,Bounty=@Bounty,FinesDue=@Fines,PursuitsEvaded=@Evasion,TimesBusted=@Bust where RapSheetId=@id";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);
                cmd.Parameters.Add(p5);
                cmd.Parameters.Add(p6);
                cmd.Parameters.Add(p7);
                cmd.Parameters.Add(p8);
                cmd.Parameters.Add(p9);
                cmd.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label13.Text = "SERVER ERROR!";
                Label13.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (TextBox10.Text != "")
            {
                int id = int.Parse(TextBox10.Text.Trim());
                deleterap(connection, id);
                Response.Redirect("~/Admin/changerapsheet.aspx", false);
            }
            else
            {
                Label16.Text = "You have to insert ID!";
            }

        }

        private void deleterap(SqlConnection connection, int id)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Id";
                p1.Value = id;
                connection.Open();
                string query = "delete from RapSheet where RapSheetId=@Id";
                SqlCommand command = new SqlCommand(query, connection);
                command.Parameters.Add(p1);
                command.ExecuteNonQuery();
                connection.Close();
            }
            catch (Exception ex)
            {
                Label13.Text = "SERVER ERROR!";
                Label13.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }
        }
    }
}