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
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\#vsproject\Moviekart.com\Moviekart.com\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                String query = "SELECT * FROM collection";
                SqlCommand cmd = new SqlCommand(query, con);
                con.Open();
                DataTable dt = new DataTable();
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                da.Fill(dt);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                con.Close();
            }
            
            
        }

      
        protected void ImageButton1_Click(object sender, EventArgs e)
        {
            Response.Write("This works");
        }

        protected void show_movie_Command(object sender, CommandEventArgs e)
        {
            Response.Write(e.CommandArgument);
            Int32 n1 = Convert.ToInt32(e.CommandArgument);
            HttpCookie cookie = new HttpCookie("movie");
            cookie["movie_id"] = Convert.ToString(n1);
            cookie.Expires = DateTime.Now.AddSeconds(20);
            Response.Cookies.Add(cookie);
            Response.Redirect("WebForm5.aspx");
        }
    }
}