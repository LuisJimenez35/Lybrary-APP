using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.Web;
using m = Lybrary.Models;

namespace Lybrary.DataBaseWebHelper
{
    //Connection to databases
    public class DataBase
    {
        const string database = "Books";
        const string server = "localhost";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");

        //Method to take up all books
        public DataTable GetBooks()
        {
            return this.Fill("[dbo].[spGetBooks]", null);
        }




        //Method to take up an specific book base in ISBN
        public DataTable GetBook(string ISBN)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@ISBN", ISBN)
            };

            return this.Fill("[dbo].[spGetBook]", param);
        }

        //Method to save your item in a shopping cart
        public void saveToShoppinCart(m.Cart book)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@BookISBN", book.ISBN),
                new SqlParameter("@Photo", book.Photo),
                new SqlParameter("@Title", book.Title),
                new SqlParameter("@Author", book.Author),
                new SqlParameter("@ReleaseDate", book.ReleaseDate),
                new SqlParameter("@Price", book.Price),
                new SqlParameter("BuyerEmail", book.session.email)
            };
            this.ExecuteQuery("[dbo].[spSaveToShoppingCart]", param);
        }

        //Method to find or consult any book
        public DataTable Fill(string storedProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    DataTable ds = new DataTable();
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    adapter.Fill(ds);
                    return ds;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Method to create or insert something in databeses
        public void ExecuteQuery(string storedProcedure, List<SqlParameter> param)
        {
            try
            {
                using (this.connection)
                {
                    connection.Open();
                    SqlCommand cmd = connection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = storedProcedure;

                    if (param != null)
                    {
                        foreach (SqlParameter p in param)
                        {
                            cmd.Parameters.Add(p);
                        }
                    }

                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        //Method to execute an stored procedure to get the client's shopping cart
        public DataTable GetMyShoppingCart(string email)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@Email", email),
            };

            return this.Fill("[dbo].[spGetMyShoppingCart]", param);
        }


        //Method for delete all books the Cart
        public void ClearShoppingCart(string email)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@BuyerEmail", email),
            };

            this.ExecuteQuery("[dbo].[spClearShoppingCart]", param);
        }


        //Method for delete specific book the Cart
        public void Delete_Book_Cart(string email, string isbn)
        {
            List<SqlParameter> param = new List<SqlParameter>()
            {
                new SqlParameter("@BuyerEmail", email),
                new SqlParameter("@BookISBN", isbn),
            };

            this.ExecuteQuery("[dbo].[spDeleteBookFromShoppingCart]", param);
        }
    }
}