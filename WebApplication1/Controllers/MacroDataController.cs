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
        public IEnumerable<MacroData> GetAll()
        {
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
                        MacroData data = new MacroData { id = reader.GetInt32(0), indexCode = reader.GetString(1), indexName = reader.GetString(2), tradeName = reader.GetString(3), informationSource = reader.GetString(4), unit = reader.GetString(5), indexData = reader.GetDouble(6), frequency = reader.GetString(7), relaseDate = reader.GetDateTime(8) };
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

        // POST api/macroData
        public HttpResponseMessage Post(dynamic obj)
        {
            string indexCode = Convert.ToString(obj.indexCode);
            string indexName = Convert.ToString(obj.indexName);
            string tradeName = Convert.ToString(obj.tradeName);
            string informationSource = Convert.ToString(obj.informationSource);
            string unit = Convert.ToString(obj.unit);
            double indexData = Convert.ToDouble(obj.indexData);
            string frequency = Convert.ToString(obj.frequency);
            DateTime relaseDate = DateTime.Now;

            MySqlConnection conn = MysqlConnect.Conn();
            MySqlCommand command = MysqlConnect.getSqlCommand("insert into tb_sample_macrodata(indexCode, indexName, tradeName, informationSource, unit, indexData, frequency, relaseDate) values('"+indexCode+"',"+indexName+", '"+tradeName+"', '"+informationSource+"', '"+unit+"', '"+indexData+"', '"+frequency+"', '"+relaseDate+"')", conn);
            conn.Open();

            string msg = "success";

            try
            {
                command.ExecuteNonQuery();
            }
            catch (Exception e)
            {
                msg = e.Message;
            }

            if(msg == "success")
            {
                var response = Request.CreateResponse(HttpStatusCode.OK);
                response.StatusCode = HttpStatusCode.OK;
                response.Content = new StringContent(msg);
                return response;
            }
            else
            {
                var response = Request.CreateResponse(HttpStatusCode.Forbidden);
                response.StatusCode = HttpStatusCode.Forbidden;
                response.Content = new StringContent(msg);
                return response;
            }
        }
    }
}
