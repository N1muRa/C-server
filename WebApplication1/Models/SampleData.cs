using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class SampleData
    {
        public int id { get; set; }
        public DateTime date { get; set; }
        public double open { get; set; }
        public double close { get; set; }
        public double lowest { get; set; }
        public double highest { get; set; }
    }
}