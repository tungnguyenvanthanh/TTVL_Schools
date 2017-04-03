using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Business.Repository;
using Shop_TTVL.Entities.Model;

namespace Shop_TTVL.Web.Controllers
{
    public class HomeController : Controller
    {
        private readonly IProductTypeRepository _productTypeRepository = new ProductTypeRepository();
        
        // GET: Home
        public ActionResult Index()
        {
            MusicStoreViewModel viewModel = new MusicStoreViewModel(); //initialize it
            viewModel.ProductTypes = _productTypeRepository.GetProductTypes();

            return View(viewModel);
        }
    }
}