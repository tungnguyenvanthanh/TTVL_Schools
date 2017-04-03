using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Business.Repository;
using Shop_TTVL.Entities.Data;
using Shop_TTVL.Entities.Model;

namespace Shop_TTVL.Web.Controllers
{
    [AuthorizeClient]
    public class ProductsClientController : Controller
    {
        private readonly IProductRepository _productRepository = new ProductRepository();
        // GET: ProductsClient
        public ActionResult Index()
        {
            var data = _productRepository.GetProducts((Session["Customer"] as Customer)?.Username);
            return View(data);
        }

        [HttpGet]
        public ActionResult Create()
        {
            var model = new ProductModel();
            return View("Create", model);
        }

        [HttpGet]
        public ActionResult Detail(int id = 0)
        {

            if (id == 0)
            {
                return View("ErrorClient");
            }

            var entity = _productRepository.GetProductsCustomer(id, (Session["Customer"] as Customer)?.Username);

            if (entity == null)
            {
                return View("ErrorClient");
            }

            var model = new ProductModel()
            {
                Id = entity.Id,
                Name = entity.Name,
                Price = entity.Price,
                Quantity = entity.Quantity,
                Image = entity.Photo,
                View = entity.Views
            };

            return View("Detail", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Detail(ProductModel model, string submit)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                model.Alert = "alert-danger";
                return View("Detail", model);
            }

            // Change image
            if (submit.Equals("Change image"))
            {
                return View("Detail", model);
            }
            // End change image

            if (submit.Equals("Save"))
            {
                using (var db = new MasterDataContext())
                {
                    Product product = db.Products.SingleOrDefault(p => p.Id.Equals(model.Id) && p.Customer.Equals((Session["Customer"] as Customer).Username));
                    if (product != null)
                    {
                        product.Name = model.Name;
                        product.Price = model.Price;
                        product.Quantity = model.Quantity;

                        try
                        {
                            db.SubmitChanges();
                            ModelState.AddModelError("", "Cập nhật thành công");
                            model.Alert = "alert-success";
                            return View("Detail", model);
                        }
                        catch (Exception e)
                        {
                            ModelState.AddModelError("", e.Message);
                            model.Alert = "alert-danger";
                            return View("Detail", model);
                        }
                    }
                }
            }

            ModelState.AddModelError("", "Chưa hoàn thành");
            model.Alert = "alert-danger";
            return View("Detail", model);
        }


        [HttpPost]
        public ActionResult Delete(int id)
        {
            try
            {
                using (var db = new MasterDataContext())
                {
                    var query = db.Products.SingleOrDefault(p => p.Id.Equals(id) && p.Customer.Equals((Session["Customer"] as Customer).Username));

                    if (query != null) db.Products.DeleteOnSubmit(query);
                    db.SubmitChanges();
                }
                return RedirectToAction("Index");
            }
            catch (Exception x)
            {
                return RedirectToAction("Index");
            }
        }
    }
}