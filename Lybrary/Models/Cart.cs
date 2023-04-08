using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml.Schema;
using static Lybrary.Models.UserAthentication;

namespace Lybrary.Models
{
    public class Cart
    {
        // Cart variables
        public string ISBN { get; set; }
        public LoginResponsePayload session { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public DateTime ReleaseDate { get; set; }
        public decimal Price { get; set; }
        public string Photo { get; set; }

        public decimal getcost()
        {
            decimal total = Price + Price;
            return total;
        }
    }

    


}   

    