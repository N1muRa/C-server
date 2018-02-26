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
    public class MacroDataController : ApiController
    {
        public IEnumerable<MacroData> getAll()
        {
            //return newss;
            List<MacroData> listData = new List<MacroData>();

            MySqlConnection conn = MysqlConnect.Conn();
            MySqlCommand command = MysqlConnect.getSqlCommand("select * from tb_sample_macrodata", conn);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        MacroData data = new MacroData { id = reader.GetInt32(0), indexCode = reader.GetString(1), indexName = reader.GetString(2), tradeName = reader.GetString(3), imformationSource = reader.GetString(4), unit = reader.GetString(5), indexData = reader.GetDouble(6), frequency = reader.GetString(7), relaseDate = reader.GetDateTime(8) };
                        listData.Add(data);
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
