using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Lybrary.DataBaseWebHelper
{
    public class DataBase
    {
        const string database = "Books";
        const string server = "localhost";
        SqlConnection connection = new SqlConnection($"Data Source={server};Initial Catalog={database};Integrated Security=True");

        public DataTable GetBooks()
        {
            return this.Fill("[dbo].[spGetBooks]", null);
        }
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
    }
}