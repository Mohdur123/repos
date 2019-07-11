using Myshop.DataAccess.InMemory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Myshop.Core.Models;
namespace Myshop.WebUI.Controllers
{
    public class ProductManagerController : Controller
    {

        ProductRepository context;

        public ProductManagerController()
        {
            context = new ProductRepository();
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
            Product product = new Product();
            return View(product);
        }

        [HttpPost]
        public ActionResult Create(Product p)
        {
            if (ModelState.IsValid)
            {
                context.Add(p);
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
                return View(p);
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