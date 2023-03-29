using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using m = Lybrary.Models.UserAthentication;
using c = Lybrary.Controllers;


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

                m.LoginResponsePayload session = (m.LoginResponsePayload)Session["loginInfo"];

                c.Book bookController = new c.Book();

                repMyShoppingCart.DataSource = bookController.GetMyShoppingCart(session);
                repMyShoppingCart.DataBind();
            }
        }
    }
}