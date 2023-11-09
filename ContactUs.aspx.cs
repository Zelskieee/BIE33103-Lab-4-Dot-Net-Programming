using System;
using System.Web.UI;
using System.Data;
using System.Data.SqlClient;
using System.Xml.Linq;
using System.Drawing;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace Lab3.MasterPages
{
    public partial class ContactUs : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void submitForm_Click(object sender, EventArgs e)
        {
            string ID = id.Text;
            string Name = name.Text;
            string Email = email.Text;
            string Comment = comment.Text;

            SqlConnection con = new SqlConnection
                ("Data Source = LAPTOP-BM8BRT21\\SQLEXPRESS; Initial Catalog = TestDatabase; Integrated Security = True; Pooling = False");

            SqlCommand com = new SqlCommand();

            try
            {
                con.Open();

                com.Connection = con;

                //Response.Write("Successful\n");

                SqlDataAdapter cmd = new SqlDataAdapter();// Create a object of SqlDataAdapter class
                cmd.InsertCommand = new SqlCommand("INSERT INTO contactus VALUES (@id, @name, @email, @comment) ", con); //Pass the connection object to cmd

                cmd.InsertCommand.Parameters.Add("@id", SqlDbType.VarChar).Value = ID;
                cmd.InsertCommand.Parameters.Add("@name", SqlDbType.Text).Value = Name;
                cmd.InsertCommand.Parameters.Add("@email", SqlDbType.Text).Value = Email;
                cmd.InsertCommand.Parameters.Add("@comment", SqlDbType.Text).Value = Comment;
                
                cmd.InsertCommand.ExecuteNonQuery(); //to execute the SQL command
            }
            catch (Exception ex)
            {
                Response.Write("Error: " + ex.ToString());

            }
            finally
            {
                con.Close();

                id.Text = string.Empty;
                name.Text = string.Empty;
                email.Text = string.Empty;
                comment.Text = string.Empty;
            }
        }
    }
}