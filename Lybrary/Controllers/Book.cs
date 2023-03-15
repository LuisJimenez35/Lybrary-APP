using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using m = Lybrary.Models;
using db = Lybrary.DataBaseWebHelper;

namespace Lybrary.Controllers
{
    public class Book
    {
        public List<m.Book> GetBooks()
        {
            DataBaseWebHelper.DataBase db = new DataBaseWebHelper.DataBase();

            DataTable ds = db.GetBooks();

            return ConvertDSToList(ds);
        }

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
                    ReleaseDate = row["ReleaseDate"].ToString(),
                    Price = Convert.ToInt16(row["Price"])
                });
            }
            return booksList;
        }
        
    }
}