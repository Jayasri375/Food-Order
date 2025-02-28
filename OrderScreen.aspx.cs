using System;
using System.Configuration;
using System.Data.SqlClient;
using System.Web.UI;

namespace Foodorders
{
    public partial class OrderScreen : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                lblMessage.Text = ""; // Clear message on page load
            }
        }

        protected void Food_Entry(object sender, EventArgs e)
        {
            try
            {
                // Get user input values from textboxes
                string restaurant = txtRestaurantName.Text.Trim();
                string food = txtFoodName.Text.Trim();
                int quantity = int.Parse(txtQuantity.Text.Trim());
                decimal price = decimal.Parse(txtPrice.Text.Trim());

                // Fetch connection string from Web.config
                string connectionString = ConfigurationManager.ConnectionStrings["FoodDBConnectionString"].ConnectionString;

                using (SqlConnection cnn = new SqlConnection(connectionString))
                {
                    cnn.Open(); // Ensure connection is open

                    using (SqlCommand sqlCommand = new SqlCommand("Food.EntryDetails", cnn))
                    {
                        sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                        // Add parameters for stored procedure
                        sqlCommand.Parameters.AddWithValue("@RestaurantName", restaurant);
                        sqlCommand.Parameters.AddWithValue("@Food", food);
                        sqlCommand.Parameters.AddWithValue("@Quantity", quantity);
                        sqlCommand.Parameters.AddWithValue("@Price", price);

                        sqlCommand.ExecuteNonQuery(); // Execute stored procedure
                    }
                }

                // Show success message
                lblMessage.Text = "Data Inserted: " + restaurant + " - " + food + " - " + quantity + " - " + price;
                lblMessage.ForeColor = System.Drawing.Color.Green;
            }
            catch (Exception ex)
            {
                lblMessage.Text = "Error: " + ex.Message;
                lblMessage.ForeColor = System.Drawing.Color.Red;
            }
        }
    }
}