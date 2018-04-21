using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Project_Gunnu_Bhavin
{
    public partial class Registeration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
       

        protected void Button1_Click(object sender, EventArgs e)
        {


            //SqlConnection connect = new SqlConnection(constring);
            //SqlCommand command = new SqlCommand("Insert into Customer values(@fname,@lname,@add,@age,@pass,@cpass,@email,@ph)", connect);
            //command.Parameters.AddWithValue("@fname", txtfirstname.Text);
            //command.Parameters.AddWithValue("@lname", txtlastname.Text);
            //command.Parameters.AddWithValue("@add", txtaddress.Text);
            //command.Parameters.AddWithValue("@age", TextBox3.Text);
            //command.Parameters.AddWithValue("@pass", TextBox4.Text);
            //command.Parameters.AddWithValue("@cpass", TextBox5.Text);
            //command.Parameters.AddWithValue("@email", TextBox6.Text);
            //command.Parameters.AddWithValue("@ph", TextBox7.Text);
            //connect.Open();
            //command.ExecuteNonQuery();
            //Label9.Text = "successful";
            //connect.Close();


            string user = name.Text;
            string gend = gender.Text;
            string em = EMAIL.Text;
            string pass = PASSWORD.Text;
            string cfm = CFM.Text;
            string addre = add.Text;
            string provin = PROVINCE.Text;
            string city = CITY.Text;
            string pc = POSTAL.Text;
            string constring = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\Users\\user\\Documents\\Employees.mdf;Integrated Security=True;Connect Timeout=30";
            SqlConnection cn = new SqlConnection(constring);
            SqlCommand cmd = new SqlCommand("Insert into Customers values(@user,@gend,@em,@pass,@cfm,@addre,@provin,@city,@pc)", cn);
            cmd.Parameters.AddWithValue("@user", user);
            cmd.Parameters.AddWithValue("@gend", gend);
            cmd.Parameters.AddWithValue("@em", em);
            cmd.Parameters.AddWithValue("@pass", pass);
            cmd.Parameters.AddWithValue("@cfm", cfm);
            cmd.Parameters.AddWithValue("@addre", addre);
            cmd.Parameters.AddWithValue("@provin", provin);
            cmd.Parameters.AddWithValue("@city", city);
            cmd.Parameters.AddWithValue("@pc", pc);
            cn.Open();
            cmd.ExecuteNonQuery();
            Response.Write("<script LANGUAGE='JavaScript' >alert('Registeration Successful!')</script>");
            cn.Close();
   

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            name.Text = "";
            gender.Text = "";
            EMAIL.Text = "";
            CFM.Text = "";
            add.Text = "";
            PROVINCE.Text = "";
            CITY.Text = "";
            POSTAL.Text = "";
        }
    }

}