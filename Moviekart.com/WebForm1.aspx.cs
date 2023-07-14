using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
namespace Moviekart.com
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\#vsproject\Moviekart.com\Moviekart.com\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String pass1 = "";
            String query = "SELECT password FROM userbase WHERE email_id='" + TextBox1.Text + "'";
            SqlCommand cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            while(dr.Read())
                pass1 = dr["password"].ToString();
            if (TextBox2.Text == pass1)
            {
                Label1.ForeColor = System.Drawing.Color.Green;
                Label1.Text = "Login Successful ";
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Username of Password is invalid ";
            }
        }
    }
}