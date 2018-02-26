using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MySql.Data.MySqlClient;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class UserController : ApiController
    {

        public IEnumerable<User> getAll()
        {
            //return newss;
            List<User> listUser = new List<User>();

            MySqlConnection conn = MysqlConnect.Conn();
            MySqlCommand command = MysqlConnect.getSqlCommand("select * from user", conn);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        User user = new User { id = reader.GetInt32(0), name = reader.GetString(1), age = reader.GetInt32(2), column1 = reader.GetString(3), column2 = reader.GetString(4), column3 = reader.GetString(5) };
                        listUser.Add(user);
                    }
                }
            }
            catch (Exception e)
            {
                Console.WriteLine(e);
            }
            finally
            {
                reader.Close();
            }

            conn.Close();

            return listUser;
        }
    }
}
