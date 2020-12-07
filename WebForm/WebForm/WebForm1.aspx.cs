using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace WebForm
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection webformdb = new SqlConnection("Server=tcp:godinho-sql.database.windows.net,1433;Initial Catalog=webform;Persist Security Info=False;User ID=godinho;Password=Joao100580200213;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;");
            {
                SqlCommand insert = new SqlCommand("EXEC dbo.insertFullname @Fullname", webformdb);
                insert.Parameters.AddWithValue("@fullname", TextBox1.Text);

                webformdb.Open();
                insert.ExecuteNonQuery();
                webformdb.Close();

                if (IsPostBack)
                {
                    TextBox1.Text = "Data was inserted!"; 
                }
            }
        }
    }
}