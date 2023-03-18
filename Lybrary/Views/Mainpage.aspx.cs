using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lybrary.Models.UserAthentication;
using c = Lybrary.Controllers;

namespace Lybrary.Views
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string session = Request.QueryString["session"];

                if (session == "false")
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showModal('Login','You must login to access this page')", true);
                }

                c.Book bookController = new c.Book();

                repBooks.DataSource = bookController.GetBooks();
                repBooks.DataBind();
            }
        }

        protected void btnLogin_ServerClick(object sender, EventArgs e)
        {
            string msg = string.Empty;
            c.Login loginController = new c.Login();

            LoginResponsePayload loginInfo = loginController.SignInWithPassword(new Models.UserAthentication.LoginResponsePayload
            {
                email = txtEmail.Value,
                password = txtPassword.Value
            });

            if (loginInfo != null && loginInfo.registered)
            {
                Session["loginInfo"] = loginInfo;
                msg = "Welcome " + txtEmail.Value;
                
            }
            else
            {
                msg = "Incorrect credentials";
            }

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showModal('Login','" + msg + "')", true);
        }
        
    }
}
