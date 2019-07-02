using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Myshop.Core.Model;
using System.Runtime.Caching;

namespace MyShop.DataAccess.InMemory
{
    public class ProductRepository
    {
        ObjectCache cache = MemoryCache.Default;
        List<Product> products;

        public ProductRepository()
        {

            products = cache["products"] as List<Product>;

            if (products == null)
                products = new List<Product>();
        }
        public void commit()
        {
            cache["products"] = products;
        }

        public void addProduct(Product p)
        {
            products.Add(p);
        }

        public bool updateProduct(Product product)
        {

            Product updatedproduct = products.Find(p => p.Id == product.Id);

            if (updatedproduct != null)
            {
                updatedproduct = product;
                return true;
            }
            else
            {
                throw new Exception("The Product can not be found");
            }

        }


        public Product findProduct(string Id)
        {

            Product findproduct = products.Find(p => p.Id == Id);

            if (findproduct != null)
            {
                return findproduct;
            }
            else
            {
                throw new Exception("We can not find your product!!");
            }

        }

        public IQueryable<Product> Collections()
        {
            return products.AsQueryable();

        }

        public bool deleteProduct(string Id) {

            Product deleteproduct = products.Find(p => p.Id == Id);

            if (deleteproduct != null)
            {
                products.Remove(deleteproduct);
                return true;
            }
            else
            {
                throw new Exception("We can not find your product!!");
            }


        }
    }
}
