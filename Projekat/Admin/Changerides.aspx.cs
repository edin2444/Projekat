using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat.Admin
{
    public partial class Changerides : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-HM6IAOL\EDSQL;Initial Catalog=Autici;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string manufacturer = TextBox1.Text.Trim();
                string model = TextBox2.Text.Trim();
                int heatlvl = int.Parse(TextBox3.Text.Trim());
                string ts = TextBox4.Text.Trim();
                float ac100 = float.Parse(TextBox5.Text.Trim());
                float ac200 = float.Parse(TextBox6.Text.Trim());
                string hand = TextBox7.Text.Trim();
                string dur = TextBox8.Text.Trim();
                string stre = TextBox9.Text.Trim();
                insertride(connection, manufacturer, model, heatlvl, ts, ac100, ac200, hand, dur, stre);
                Response.Redirect("~/Admin/Changerides.aspx", false);
            }
            catch (Exception ex)
            {
                Label13.Text = "SERVER ERROR!";
                Label13.ForeColor = System.Drawing.Color.Red;
                System.Diagnostics.Debug.WriteLine(ex.Message);
                System.Diagnostics.Debug.WriteLine(ex.StackTrace);
            }

        }
        void insertride(SqlConnection connection, string manufacturer, string model, int heatlvl, string ts, float ac100, float ac200, string hand, string dur, string stre)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Manufacturer";
                p1.Value = manufacturer;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Model";
                p2.Value = model;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Heatlvl";
                p3.Value = heatlvl;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@TopS";
                p4.Value = ts;
                SqlParameter p5 = new SqlParameter();
                p5.ParameterName = "@Ac100";
                p5.Value = ac100;
                SqlParameter p6 = new SqlParameter();
                p6.ParameterName = "@Ac200";
                p6.Value = ac200;
                SqlParameter p7 = new SqlParameter();
                p7.ParameterName = "@Handling";
                p7.Value = hand;
                SqlParameter p8 = new SqlParameter();
                p8.ParameterName = "@Durability";
                p8.Value = dur;
                SqlParameter p9 = new SqlParameter();
                p9.ParameterName = "@Strength";
                p9.Value = stre;
                connection.Open();
                string query = "Insert into Cars(Manufacturer,Model,Heat_Level,Top_Speed,Acceleration_to_100kmh,Acceleration_to_200kmh,Handling,Durability,Strength) values(@Manufacturer,@Model,@HeatLvl,@TopS,@Ac100,@Ac200,@Handling,@Durability,@Strength)";
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox11.Text != "")
            {
                int id = int.Parse(TextBox11.Text.Trim());
                string manufacturer = TextBox1.Text.Trim();
                string model = TextBox2.Text.Trim();
                int heatlvl = int.Parse(TextBox3.Text.Trim());
                string ts = TextBox4.Text.Trim();
                float ac100 = float.Parse(TextBox5.Text.Trim());
                float ac200 = float.Parse(TextBox6.Text.Trim());
                string hand = TextBox7.Text.Trim();
                string dur = TextBox8.Text.Trim();
                string stre = TextBox9.Text.Trim();
                updateride(connection, id, manufacturer, model, heatlvl, ts, ac100, ac200, hand, dur, stre);
                Response.Redirect("~/Admin/Changerides.aspx", false);
            }
            else
            {
                Label15.Text = "You have to insert ID!";
            }
        }

        private void updateride(SqlConnection connection, int id, string manufacturer, string model, int heatlvl, string ts, float ac100, float ac200, string hand, string dur, string stre)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Manufacturer";
                p1.Value = manufacturer;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Model";
                p2.Value = model;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Heatlvl";
                p3.Value = heatlvl;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@TopS";
                p4.Value = ts;
                SqlParameter p5 = new SqlParameter();
                p5.ParameterName = "@Ac100";
                p5.Value = ac100;
                SqlParameter p6 = new SqlParameter();
                p6.ParameterName = "@Ac200";
                p6.Value = ac200;
                SqlParameter p7 = new SqlParameter();
                p7.ParameterName = "@Handling";
                p7.Value = hand;
                SqlParameter p8 = new SqlParameter();
                p8.ParameterName = "@Durability";
                p8.Value = dur;
                SqlParameter p9 = new SqlParameter();
                p9.ParameterName = "@Strength";
                p9.Value = stre;
                SqlParameter p10 = new SqlParameter();
                p10.ParameterName = "@Id";
                p10.Value = id;
                connection.Open();
                string query = "Update Cars set Manufacturer=@Manufacturer,Model=@Model,Heat_Level=@Heatlvl,Top_Speed=@TopS,Acceleration_to_100kmh=@Ac100,Acceleration_to_200kmh=@Ac200,Handling=@Handling,Durability=@Durability,Strength=@Strength where Id=@Id";
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
                cmd.Parameters.Add(p10);
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
                deleteride(connection, id);
                Response.Redirect("~/Admin/Changerides.aspx", false);
            }
            else
            {
                Label16.Text = "You have to insert ID!";
            }
        }

        private void deleteride(SqlConnection connection, int id)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Id";
                p1.Value = id;
                connection.Open();
                string query = "delete from Cars where Id=@Id";
                SqlCommand command=new SqlCommand(query, connection);
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