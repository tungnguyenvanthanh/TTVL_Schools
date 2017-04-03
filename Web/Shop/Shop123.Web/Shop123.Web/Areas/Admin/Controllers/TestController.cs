using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop123.Entities.Model;

namespace Shop123.Web.Areas.Admin.Controllers
{
    [LoginAuthorize]
    public class TestController : Controller
    {
        // GET: Admin/Test
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Index(TestModel model)
        {
            return View();
        }
    }
}