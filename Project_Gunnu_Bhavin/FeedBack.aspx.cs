using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Gunnu_Bhavin
{
    public partial class AboutUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\Documents\\Employees.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connect = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Insert into Feedback values(@name,@fback)", connect);
            command.Parameters.AddWithValue("@name", TextBox3.Text);
            command.Parameters.AddWithValue("@fback", TextBox4.Text);
            connect.Open();
            command.ExecuteNonQuery();
            Label4.Text = "Thankyou for your feedback";
            connect.Close();

            TextBox3.Text = "";
            TextBox4.Text = "";
        }
    }
}