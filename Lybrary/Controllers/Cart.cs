using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using m = Lybrary.Models;
using static Lybrary.Models.UserAthentication;
using System.Data.SqlClient;


namespace Lybrary.Controllers
{
    public class Cart
    {
        //Method comunicate with db to find a book
        public List<m.Book> GetBook(string ISBN)
        {
            DataBaseWebHelper.DataBase db = new DataBaseWebHelper.DataBase();

            DataTable ds = db.GetBook(ISBN);

            return ConvertDSCartToList(ds);
        }

        //Method convert items to list for shopping cart
        public List<m.Book> ConvertDSCartToList(DataTable ds)
        {
            List<m.Book> bookList = new List<m.Book>();

            foreach (DataRow row in ds.Rows)
            {
                bookList.Add(new m.Book
                {
                    ISBN = row["ISBN"].ToString(),
                    Photo = row["Photo"].ToString(),
                    Title = row["Title"].ToString(),
                    Description = row["Description"].ToString(),
                    Author = row["Author"].ToString(),
                    ReleaseDate = DateTime.Parse((string)row["ReleaseDate"]),
                    Price = Convert.ToInt16(row["Price"])
                    
                });
            }
            return bookList;
        }

        //Method calls an other method in DataBaseWebHelper and save the purchase
        public bool SaveToShoppingCart(m.Cart book)
        {
            try
            {
                DataBaseWebHelper.DataBase db = new DataBaseWebHelper.DataBase();

                db.saveToShoppinCart(book);

                return true;
            }
            catch
            {
                return false;
            }
        }

        //Method to get the client's shopping cart
        public List<m.Book> GetMyShoppingCart(LoginResponsePayload session)
        {
            List<m.Book> bookList = new List<m.Book>();
            DataBaseWebHelper.DataBase db = new DataBaseWebHelper.DataBase();

            DataTable ds = db.GetMyShoppingCart(session.email);

            foreach (DataRow row in ds.Rows)
            {
                bookList.Add(new m.Book
                {
                    ISBN = row["BookISBN"].ToString(),
                    Photo = row["Photo"].ToString(),
                    Title = row["Title"].ToString(),
                    Author = row["Author"].ToString(),
                    ReleaseDate = (DateTime)row["ReleaseDate"],
                    Price = Convert.ToInt16(row["Price"]),
                });
            }
            return bookList;
        }

    }
}