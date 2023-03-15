using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using c = Lybrary.Controllers;

namespace Lybrary
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            c.Book BookController = new c.Book();
            repBooks.DataSource = BookController.GetBooks();
            repBooks.DataBind(); 
        }
    }
}