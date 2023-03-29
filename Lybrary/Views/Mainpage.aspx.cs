using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using static Lybrary.Models.UserAthentication;
using m = Lybrary.Models;
using c = Lybrary.Controllers;
using System.Web.UI.HtmlControls;

namespace Lybrary.Views
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        //Load all books saved in database
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                IsLogOut();
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

        //Method login
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
                IsLogged();
            }
            else
            {
                msg = "Incorrect credentials";
            }

            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showModal('Login','" + msg + "')", true);
        }
       
        //Method to verify if the person is logged
        private void IsLogged()
        {
            if (Session["loginInfo"] != null)
            {
                LoginResponsePayload session = (LoginResponsePayload)Session["loginInfo"];

                //lblName.InnerText = session.email;
                RegisterPage.Attributes.Add("hidden", "hidden");
                LoginModal.Attributes.Add("hidden", "hidden");
                LogOut.Attributes.Remove("hidden");
                ShoppingCar.Attributes.Remove("hidden");
                LoveBooks.Attributes.Remove("hidden");
            }
        }

        //Method to verify if the person isnt log yet
        private void IsLogOut()
        {
            if (Session["loginInfo"] == null)
            {
                RegisterPage.Attributes.Remove("hidden");
                LoginModal.Attributes.Remove("hidden");
                LogOut.Attributes.Add("hidden", "hidden");
                ShoppingCar.Attributes.Add("hidden", "hidden");
                LoveBooks.Attributes.Add("hidden", "hidden");
            }
        }

        private void findBook(string ISBN)
        {   

            //c.Book BookController = new c.Book();
            //List<m.Book> books = BookController.GetBook(ISBN);
            //Session["books"] = books;
            //repBooks.DataSource = books;


        }

        private void chargeSesion()
        {
           
        }

        //Method to log out account
        protected void Logout_ServerClick(object sender, EventArgs e)
        {
            Session.Clear();
            IsLogOut();
            Page.ClientScript.RegisterStartupScript(this.GetType(), "CallMyFunction", "showModal('Login','Thank you for visiting International Libery.com')", true);
        }
        
        //Method to inmediatly buy
        protected void btnBuy_ServerClick(object sender, EventArgs e)
        {
            
        }

        //Method to save books in a shopping cart
        protected void btnSave_ServerClick(object sender, EventArgs e)
        {
            //var button = (HtmlButton)sender;
            //var ISBN = "";
            //c.Book BookController = new c.Book();
           //List<m.Book> books = BookController.GetBook(ISBN);
            //Session["books"] = books;
            //repBooks.DataSource = books;
            //m.Book book = (m.Book)Session["books"];
            //c.Book controllerbooks = new c.Book();
           //controllerbooks.SaveToShoppingCart(List<m.Book>books);

        }

        
    }


}
