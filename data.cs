using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace laundry
{
    public class data
    {
         SqlDataReader rdr;
        SqlCommand cmd;
        SqlDataAdapter adapter;

      public SqlConnection Conn()
        {
           SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"C:\\Users\\misha\\Desktop\\project k\\laundry\\laundry\\App_Data\\laundry.mdf\";Integrated Security=True");
            con.Open();
            return con;
        }
        public void insupdel(string sql)
        {
            SqlCommand cmd = new SqlCommand(sql, Conn());
            cmd.ExecuteNonQuery();                                  


        }
        public SqlDataReader getsql(string sql)
        {
           SqlCommand cmd=new SqlCommand(sql, Conn());
            SqlDataReader reader = cmd.ExecuteReader();
            return reader;

        }
        public DataTable gettable(string sql)
        {
            SqlDataAdapter adapter = new SqlDataAdapter(sql,Conn());
            DataTable dt = new DataTable();
            adapter.Fill(dt);
            return dt;


        }
    }
}