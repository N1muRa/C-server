using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace WebApplication1.Models
{
    public class MysqlConnect
    {
        private const string host = "localhost";
        private const string user = "root";
        private const string password = "961922";
        private const string database = "vue_test";
        private const string port = "3306";

        public static MySqlConnection Conn()
        {
            string constr = "server=" + host + ";User Id=" + user + ";password=" + password + ";Database=" + database;
            MySqlConnection mycon = new MySqlConnection(constr);
            return mycon;
        }

        public static MySqlCommand getSqlCommand(string sql, MySqlConnection conn)
        {
            MySqlCommand mySqlCommand = new MySqlCommand(sql, conn);
            return mySqlCommand;
        }
    }
}