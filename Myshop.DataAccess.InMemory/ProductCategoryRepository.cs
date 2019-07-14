using Myshop.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Caching;
using System.Text;
using System.Threading.Tasks;

namespace Myshop.DataAccess.InMemory
{
    public class ProductCategoryRepository
    {
        ObjectCache cache = MemoryCache.Default;
        List<ProductCategory> productCategory;
        string Message = "";
        public ProductCategoryRepository()
        {
            productCategory = cache["productCategory"] as List<ProductCategory>;

            if (productCategory == null)
            {
                productCategory = new List<ProductCategory>();
            }

        }

        public void Commit()
        {
            cache["productCategory"] = productCategory;
            Message = "Saved into List";
        }

        public bool Add(ProductCategory p)
        {
            productCategory.Add(p);
            Message = "Added Successfully!";
            return true;
        }

        public bool Update(ProductCategory p)
        {
            ProductCategory updatedProduct = productCategory.Find(a => a.Id == p.Id);
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

        public ProductCategory Find(string Id)
        {
            ProductCategory product = productCategory.Find(a => a.Id == Id);
            if (product != null)
            {
                return product;
            }
            else
            {
                throw new Exception("This Id can not be found");
            }
        }

        public IQueryable<ProductCategory> CollectionOfProducts()
        {
            return productCategory.AsQueryable();
        }

        public bool Delete(string Id)
        {
            ProductCategory deletedProduct = productCategory.Find(a => a.Id == Id);
            if (deletedProduct != null)
            {
                productCategory.Remove(deletedProduct);
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
