using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MySql.Data.MySqlClient;
using MySql.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class SampleDataController : ApiController
    {
        public IEnumerable<SampleData> getAll()
        {
            //return newss;
            List<SampleData> listData = new List<SampleData>();

            MySqlConnection conn = MysqlConnect.Conn();
            MySqlCommand command = MysqlConnect.getSqlCommand("select * from tb_sample_data", conn);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        SampleData sample = new SampleData { id = reader.GetInt32(0), date = reader.GetDateTime(1), open = reader.GetDouble(2), close = reader.GetDouble(3), lowest = reader.GetDouble(4), highest = reader.GetDouble(5) };
                        listData.Add(sample);
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

            return listData;
        }
    }
}
