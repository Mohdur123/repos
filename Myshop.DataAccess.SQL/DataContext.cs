using Myshop.Core.Models;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Myshop.DataAccess.SQL
{
    class DataContext : DbContext
    {
        public DataContext() : base("DefaultConnection")
        {

        }

        public DbSet<Product> Products { set; get; }
        public DbSet<ProductCategory> ProductsCategory { set; get; }
    }
}
