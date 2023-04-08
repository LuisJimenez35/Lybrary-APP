using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using static Lybrary.Models.UserAthentication;
using Lybrary.Controllers;

namespace Lybrary.Models

{
    //Book Variables
    public class Book
    {
        public string ISBN { get; set; }
        public LoginResponsePayload session { get; set; }
        public string Title { get; set; }
        public string Description { get; set; }
        public string Author { get; set; }
        public DateTime ReleaseDate { get; set; }
        public decimal Price { get; set; }
        public string Photo { get; set; }
    }
}