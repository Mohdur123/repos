using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MyMVCApplication
{
    public static class Crypto
    {
        public static string Hashing(string value)
        {
            return Convert.ToBase64String(System.Security.Cryptography.SHA256.Create().ComputeHash(System.Text.Encoding.UTF8.GetBytes(value)));
        }
    }
}