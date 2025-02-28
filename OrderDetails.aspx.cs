using System;
using System.Web.UI;

namespace YourNamespace
{
    public partial class OrderDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtPrice.Text = "0";
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            // Retrieve user input
            string userID = txtUserID.Text.Trim();
            string restaurant = ddlRestaurants.SelectedItem.Text;
            string foodItem = ddlFoods.SelectedItem.Text;
            int quantity = Convert.ToInt32(txtQuantity.Text);
            int totalPrice = Convert.ToInt32(txtPrice.Text);

            // Store in session (or use a database)
            Session["UserID"] = userID;
            Session["Restaurant"] = restaurant;
            Session["FoodItem"] = foodItem;
            Session["Quantity"] = quantity;
            Session["TotalPrice"] = totalPrice;

            // Redirect to Order Confirmation Page
            Response.Redirect("OrderScreen.aspx");
        }
    }
}
