using Myshop.Core.Contracts;
using Myshop.Core.Models;
using Myshop.DataAccess.InMemory;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Myshop.WebUI.Controllers
{
    public class ProductCategoryController : Controller
    {

        IRepository<ProductCategory> context;

        public ProductCategoryController(IRepository<ProductCategory> productCategoryContext)
        {
            context = productCategoryContext;
        }


        // GET: ProductManager
        public ActionResult Index()
        {
            List<ProductCategory> productCategory = context.CollectionOfProducts().ToList();
            return View(productCategory);

        }


        [HttpGet]
        public ActionResult Create()
        {
            ProductCategory productCategory = new ProductCategory();
            return View(productCategory);
        }

        [HttpPost]
        public ActionResult Create(ProductCategory p)
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
            ProductCategory p = context.Find(Id);

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
        public ActionResult Edit(ProductCategory p, string Id)
        {
            ProductCategory productCategory = context.Find(Id);

            if (productCategory != null)
            {
                if (ModelState.IsValid)
                {
                    productCategory.Category = p.Category;
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
            ProductCategory productToDelete = context.Find(Id);
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
            ProductCategory productToDelete = context.Find(Id);
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