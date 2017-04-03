using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop_TTVL.Web.Areas.Shop.Controllers
{
    public class HomeController : Controller
    {
        // GET: Shop/Home
        public ActionResult Index()
        {
            return View();
        }
    }
}