using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lybrary.Models.UserAthentication;
using m = Lybrary.Models;
using c = Lybrary.Controllers;
using System.Security.Cryptography.X509Certificates;
using System.EnterpriseServices;

namespace Lybrary
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        //Method load the books saved before 
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["loginInfo"] == null)
                {
                    Response.Redirect("Booking.aspx?session=false");
                }

                LoginResponsePayload session = (LoginResponsePayload)Session["loginInfo"];

                c.Cart bookController = new c.Cart();             
                repMyShoppingCart.DataSource = bookController.GetMyShoppingCart(session);
                repMyShoppingCart.DataBind();

                calculateCost();
            }
        }


        //It should calculete cost but need a fix
        private void calculateCost()
        {
            decimal total = 0;
            foreach (RepeaterItem item in repMyShoppingCart.Items)
            {
                Label lblPrice = (Label)item.FindControl("lblPrice");
                decimal price = decimal.Parse(lblPrice.Text);
                total += price;
            }

            // Muestra el total en la etiqueta lblTotal
            lblTotal.Text = total.ToString("N2");
        }

    }
}