using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Lybrary.Models.UserAthentication;

namespace Lybrary.Models
{
    public class Cart
    {
        public string ISBN { get; set; }
        public LoginResponsePayload session { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public string ReleaseDate { get; set; }
        public decimal Price { get; set; }
        public string Photo { get; set; }
    }
}