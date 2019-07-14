using Myshop.DataAccess.InMemory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Myshop.Core.Models;
using Myshop.Core.ViewModel;

namespace Myshop.WebUI.Controllers
{
    public class ProductManagerController : Controller
    {

        InMemoryRepository<Product> context;
        InMemoryRepository<ProductCategory> productCategories;

        public ProductManagerController()
        {
            context = new InMemoryRepository<Product>();
            productCategories = new InMemoryRepository<ProductCategory>();
        }


        // GET: ProductManager
        public ActionResult Index()
        {
            List<Product> product = context.CollectionOfProducts().ToList();
            return View(product);

        }


        [HttpGet]
        public ActionResult Create()
        {
            ProductManagerViewModel viewModel = new ProductManagerViewModel();
            viewModel.product = new Product();
            viewModel.productCategories = productCategories.CollectionOfProducts();
            return View(viewModel);
            //Product product = new Product();
            //return View(product);
        }

        [HttpPost]
        public ActionResult Create(ProductManagerViewModel p)
        {
            if (ModelState.IsValid)
            {
                context.Add(p.product);
                context.Commit();
                return RedirectToAction("Index");
            }
            else
            {
                return View(p);
            }
        }

        public ActionResult Edit(string Id)
        {
            Product p = context.Find(Id);

            if (p != null)
            {
                ProductManagerViewModel viewModel = new ProductManagerViewModel();
                viewModel.product = new Product();
                viewModel.productCategories = productCategories.CollectionOfProducts();
                return View(viewModel);
            }
            else
            {
                return HttpNotFound();
            }
        }

        [HttpPost]
        public ActionResult Edit(Product p, string Id)
        {
            Product product = context.Find(Id);

            if(product != null )
            {
                if (ModelState.IsValid)
                {
                    product.Name = p.Name;
                    product.Category = p.Category;
                    product.Description = p.Description;
                    product.Image = p.Image;
                    product.Price = p.Price;

                    context.Commit();
                    return RedirectToAction("Index");
                }
                else
                {
                    return HttpNotFound();
                }
            }
            else
            {
                return HttpNotFound();
            }

        }

        
        public ActionResult Delete(string Id)
        {
            Product productToDelete = context.Find(Id);
            if (productToDelete != null)
            {
                return View(productToDelete);
            }
            else
            {
                return HttpNotFound();
            }
        }

        [HttpPost]
        [ActionName("Delete")]
        public ActionResult ConfirmDelete(string Id)
        {
            Product productToDelete = context.Find(Id);
            if (ModelState.IsValid)
            {
                if (productToDelete != null)
                {
                    context.Delete(Id);
                    context.Commit();
                    return RedirectToAction("Index");
                }
                else
                {
                    return HttpNotFound();
                }
            }
            else
            {
                return HttpNotFound();
            }
        }
    }
}