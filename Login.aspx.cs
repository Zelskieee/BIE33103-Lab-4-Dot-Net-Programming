using System;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Web.UI;

namespace Lab3.MasterPages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            lblStatus.Visible = false; // Initially hide the status label.
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string ID = id.Text;
            string Password = pw.Text;

            string connectionString = "Data Source=LAPTOP-BM8BRT21\\SQLEXPRESS; Initial Catalog=TestDatabase; Integrated Security=True; Pooling=False";

            try
            {
                using (SqlConnection con = new SqlConnection(connectionString))
                {
                    con.Open();

                    using (SqlCommand cmd = new SqlCommand("SELECT id, pw FROM login WHERE id = @id AND pw = @pw", con))
                    {
                        cmd.Parameters.AddWithValue("@id", ID);
                        cmd.Parameters.AddWithValue("@pw", Password);

                        SqlDataReader reader = cmd.ExecuteReader();

                        if (reader.Read())
                        {
                            Response.Redirect("default.aspx");
                        }
                        else
                        {
                            lblStatus.Visible = true;
                            lblStatus.Text = "Invalid ID or password";
                        }
                        reader.Close();
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("An error occurred: " + ex.Message);
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            // Clear the text inside ID and Password TextBoxes.
            id.Text = string.Empty;
            pw.Text = string.Empty;
            lblStatus.Visible = false; // Hide the status label.
        }
    }
}