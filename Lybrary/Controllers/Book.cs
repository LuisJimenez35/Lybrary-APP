using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using static Lybrary.Models.UserAthentication;
using m = Lybrary.Models;


namespace Lybrary.Controllers
{
    public class Book : System.Web.UI.Page
    {
        //Method return books 
        public List<m.Book> GetBooks()
        {
            DataBaseWebHelper.DataBase db = new DataBaseWebHelper.DataBase();

            DataTable ds = db.GetBooks();

            return ConvertDSToList(ds);
        }

        //Method convert items to a list an add them, then, this show it in MainPage.aspx
        public List<m.Book> ConvertDSToList(DataTable ds)
        {
            List<m.Book> booksList = new List<m.Book>();

            foreach (DataRow row in ds.Rows)
            {
                booksList.Add(new m.Book
                {
                    ISBN = row["ISBN"].ToString(),
                    Photo = row["Photo"].ToString(),
                    Title = row["Title"].ToString(),
                    Author = row["Author"].ToString(),
                    ReleaseDate = DateTime.Parse((string)row["ReleaseDate"]),
                    Description = row["Description"].ToString(),
                    Price = Convert.ToInt16(row["Price"])
                });
            }
            return booksList;
        }
    }

}