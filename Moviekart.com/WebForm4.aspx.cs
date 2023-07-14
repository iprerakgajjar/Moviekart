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
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\#vsproject\Moviekart.com\Moviekart.com\App_Data\Database1.mdf;Integrated Security=True"); 
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            String query = "INSERT INTO collection VALUES(@movie_name,@rating,@type,@desc,@cast,@img_path)";
            SqlCommand cmd = new SqlCommand(query, con);
            
            cmd.Parameters.AddWithValue("@movie_name", TextBox1.Text);
            cmd.Parameters.AddWithValue("@rating", TextBox3.Text);
            cmd.Parameters.AddWithValue("@type",DropDownList1.Text);
            cmd.Parameters.AddWithValue("@desc", TextBox4.Text);
            cmd.Parameters.AddWithValue("@cast", TextBox5.Text);
            cmd.Parameters.AddWithValue("@img_path", TextBox2.Text);
            con.Open();
            cmd.ExecuteNonQuery();
            Response.Write("Records has been successfully inserted...");
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            
        }
    }
}