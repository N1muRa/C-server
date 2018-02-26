using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Data;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class NewsController : ApiController
    {
        News[] newss = new News[]
        {
            new News{ID = 1, NewsTitle = "ss", NaviContent = "ssssss", Content = "sssss", Author = "开利财经", Date = DateTime.Now},
            new News{ID = 2, NewsTitle = "ssss", NaviContent = "sss是少时诵诗书少时诵诗书是是是是是是是是是是是是是", Content = "是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是是谁", Author = "开利财经", Date = DateTime.Now}
        };

        public IEnumerable<News> getAllNews()
        {
            //return newss;
            List<News> listNews = new List<News>();

            MySqlConnection conn = MysqlConnect.Conn();
            MySqlCommand command = MysqlConnect.getSqlCommand("select * from tb_news", conn);
            conn.Open();
            MySqlDataReader reader = command.ExecuteReader();

            try
            {
                while (reader.Read())
                {
                    if (reader.HasRows)
                    {
                        News news = new News { ID = reader.GetInt32(0), NewsTitle = reader.GetString(1), NaviContent = reader.GetString(2), Content = reader.GetString(3), Author = reader.GetString(4), Date = reader.GetDateTime(5) };
                        listNews.Add(news);
                    }
                }
            }
            catch(Exception e)
            {
                Console.WriteLine(e);
            }
            finally
            {
                reader.Close();
            }

            conn.Close();

            return listNews;
        }

        public IHttpActionResult getNewsByID(int id)
        {
            var news = newss.FirstOrDefault((p) => p.ID == id);
            if (news == null)
            {
                return NotFound();
            }
            else
            {
                return Ok(news);
            }
        }
    }
}
