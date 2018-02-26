using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebApplication1.Models
{
    public class MacroData
    {
        public int id { get; set; }
        public string indexCode { get; set; }
        public string indexName { get; set; }
        public string tradeName { get; set; }
        public string imformationSource { get; set; }
        public string unit { get; set; }
        public double indexData { get; set; }
        public string frequency { get; set; }
        public DateTime relaseDate { get; set; }
    }
}