using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace FoodOrders
{
	public partial class UserDetails : System.Web.UI.Page
	{
        protected void Submit_Click(object sender, EventArgs e)
        {


            string UserID = txtUserID.Text;
            string Name = txtName.Text;
            string Email = txtEmail.Text;
            string Phone = txtPhone.Text;

            string connectionString = @"Data Source=localhost\SQLEXPRESS;Initial Catalog=FoodDB;Integrated Security=True";

            using (SqlConnection cnn = new SqlConnection(connectionString))
            {
                SqlCommand sqlCommand = new SqlCommand("Food_Order", cnn);
                sqlCommand.CommandType = System.Data.CommandType.StoredProcedure;

                sqlCommand.Parameters.AddWithValue("@Type", "INSERT");
                sqlCommand.Parameters.AddWithValue("@UserId", UserID);
                sqlCommand.Parameters.AddWithValue("@Name", Name);
                sqlCommand.Parameters.AddWithValue("@Phone", Phone);
                sqlCommand.Parameters.AddWithValue("@Email", Email);

                cnn.Open();
                sqlCommand.ExecuteNonQuery();
                cnn.Close();
            }

            Response.Redirect("OrderDetails.aspx");
        }
    }
}




  
    
     