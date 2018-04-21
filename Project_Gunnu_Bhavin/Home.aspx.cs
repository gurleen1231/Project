using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Gunnu_Bhavin
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\Documents\\Employees.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connect = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Select * from Details where username=@uname and password=@pass", connect);
            command.Parameters.AddWithValue("@uname", TextBox1.Text);
            command.Parameters.AddWithValue("@pass", TextBox2.Text);
            connect.Open();
            if (command.ExecuteScalar() != null)
            {

                Label3.Text = "Login Successfull";
                Response.Redirect("TimeTable.aspx");
            }
            else
            {
                Label3.Text = "Login Failed";
                Response.Redirect("Register.aspx");

            }
        }
    }
}