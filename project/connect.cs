using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace bgroup9
{
    public class connect
    {
        public SqlConnection con = new SqlConnection();
        public SqlCommand cmd = new SqlCommand();
        public connect()
        {
            con.ConnectionString="Data Source=LAPTOP-T07A1AL1\\SQLEXPRESS;Initial Catalog=bgroup9;Integrated Security=True";
            con.Open();
            cmd.Connection = con;

        }

    }
}