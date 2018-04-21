using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Gunnu_Bhavin
{
    public partial class ContactUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\Documents\\Employees.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection connect = new SqlConnection(constring);
            SqlCommand command = new SqlCommand("Insert into contact values(@name,@date,@cname)", connect);
            command.Parameters.AddWithValue("@name", TextBox1.Text);
            command.Parameters.AddWithValue("@date", TextBox2.Text);
            if (dolu.Checked == true)
            {
                command.Parameters.AddWithValue("@cname", Label5.Text);
            }
            else
            {
                command.Parameters.AddWithValue("@cname", Label4.Text);
            }

            connect.Open();
            command.ExecuteNonQuery();
            connect.Close();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Appointment Has been Confirmed In A2-03!')</script>");
        
            }
    }
}