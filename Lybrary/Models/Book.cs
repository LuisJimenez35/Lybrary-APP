using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Lybrary.Models
{
    public class Book
    {
        public string ISBN { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public string ReleaseDate { get; set; }
        public decimal Price { get; set; }
        public string Photo { get; set; }
    }
}