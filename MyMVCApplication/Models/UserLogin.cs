using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyMVCApplication.Models
{
    public class UserLogin
    {
        public string EmailId { get; set; }
        public string Password { get; set; }
        public bool RememberMe { get; set; }
    }
}