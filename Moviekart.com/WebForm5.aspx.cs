using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Data.SqlClient;
using System.Data;
namespace Moviekart.com
{
    public partial class WebForm5 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\#vsproject\Moviekart.com\Moviekart.com\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie cookie = Request.Cookies["movie"];
            if (cookie != null)
            {
                String query = "SELECT * FROM collection where movie_id=" + cookie["movie_id"];
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["img_path"].ToString();
                    Label1.Text = dr["movie_name"].ToString();
                    Label2.Text = dr["desc"].ToString();
                    Label3.Text = dr["rating"].ToString();
                    Label4.Text = dr["type"].ToString();
                    Label5.Text = dr["cast"].ToString();
                }
            }
        }
    }
}