using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Projekat.Admin
{
    public partial class Changechallenges : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(@"Data Source=DESKTOP-HM6IAOL\EDSQL;Initial Catalog=Autici;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text.Trim();
            string desc = TextBox2.Text.Trim();
            string location = TextBox3.Text.Trim();
            int Bounty = int.Parse(TextBox4.Text.Trim());
            insertchl(connection, name, desc, location,Bounty);
            Response.Redirect("~/Admin/Changechallenges.aspx", false);

        }

        private void insertchl(SqlConnection connection, string name, string desc, string location, int bounty)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Name";
                p1.Value = name;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Desc";
                p2.Value = desc;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Location";
                p3.Value = location;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@Bounty";
                p4.Value = bounty;
                connection.Open();
                string query = "Insert into Challenges(ChallengeName,Description,Location,BountyReward) values(@Name,@Desc,@Location,@Bounty)";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);
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
                string desc = TextBox2.Text.Trim();
                string location = TextBox3.Text.Trim();
                int Bounty = int.Parse(TextBox4.Text.Trim());
                int id = int.Parse(TextBox11.Text.Trim());
                updatechl(connection, name, desc,location, Bounty,id);
                Response.Redirect("~/Admin/Changechallenges.aspx", false);
            }
            else
            {
                Label15.Text = "You have to insert ID!";
            }

        }

        private void updatechl(SqlConnection connection, string name, string desc, string location, int bounty,int id)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Name";
                p1.Value = name;
                SqlParameter p2 = new SqlParameter();
                p2.ParameterName = "@Desc";
                p2.Value = desc;
                SqlParameter p3 = new SqlParameter();
                p3.ParameterName = "@Location";
                p3.Value = location;
                SqlParameter p4 = new SqlParameter();
                p4.ParameterName = "@Bounty";
                p4.Value = bounty;
                SqlParameter p5 = new SqlParameter();
                p5.ParameterName = "@Id";
                p5.Value = id;
                connection.Open();
                string query = "Update Challenges set ChallengeName=@Name,Description=@Desc,Location=@Location,BountyReward=@Bounty where ChallengeID=@Id";
                SqlCommand cmd = new SqlCommand(query, connection);
                cmd.Parameters.Add(p1);
                cmd.Parameters.Add(p2);
                cmd.Parameters.Add(p3);
                cmd.Parameters.Add(p4);
                cmd.Parameters.Add(p5);
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
                deletechl(connection, id);
                Response.Redirect("~/Admin/Changechallenges.aspx", false);
            }
            else
            {
                Label16.Text = "You have to insert ID!";
            }

        }

        private void deletechl(SqlConnection connection, int id)
        {
            try
            {
                SqlParameter p1 = new SqlParameter();
                p1.ParameterName = "@Id";
                p1.Value = id;
                connection.Open();
                string query = "delete from Challenges where ChallengeID=@Id";
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