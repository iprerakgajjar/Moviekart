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
    public partial class WebForm2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\#vsproject\Moviekart.com\Moviekart.com\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "INSERT INTO userbase VALUES(@name,@mob_no,@email_id,@password)";
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.AddWithValue("@name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@mob_no",TextBox3.Text);
            cmd.Parameters.AddWithValue("@email_id", TextBox2.Text);
            cmd.Parameters.AddWithValue("@password", TextBox5.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Record has been inserted");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
        }
    }
}