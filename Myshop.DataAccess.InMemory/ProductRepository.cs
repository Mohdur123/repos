using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Runtime.Caching;
using Myshop.Core.Models;

namespace Myshop.DataAccess.InMemory
{
    public class ProductRepository
    {
        ObjectCache cache = MemoryCache.Default;
        List<Product> products;
        string Message = "";
        public ProductRepository()
        {
            products = cache["products"] as List<Product>;

            if (products == null)
            {
                products = new List<Product>();
            }
           
        }

        public void Commit()
        {
            cache["products"] = products;
            Message = "Saved into List";
        }

        public bool Add(Product p)
        {
            products.Add(p);
            Message = "Added Successfully!";
            return true;
        }

        public bool Update(Product p)
        {
            Product updatedProduct = products.Find(a => a.Id == p.Id);
            if (updatedProduct != null)
            {
                updatedProduct = p;
                Message = "Updated Successfully...";
                return true;
            }
            else
            {
                Message = "Product can not be found there!";
                throw new Exception("Product can not be found there!");
            }
        }

        public Product Find(string Id)
        {
            Product product = products.Find(a => a.Id == Id);
            if (product != null)
            {
                return product;
            }
            else
            {
                throw new Exception("This Id can not be found");
            }
        }

        public IQueryable<Product> CollectionOfProducts()
        {
            return products.AsQueryable();
        }

        public bool Delete(string Id)
        {
            Product deletedProduct = products.Find(a => a.Id == Id);
            if (deletedProduct != null)
            {
                products.Remove(deletedProduct);
                Message = "Product Removed Successfully";
                return true;
            }
            else
            {
                throw new Exception("There is no Product to Remove!");
            }
        }

    }
}
