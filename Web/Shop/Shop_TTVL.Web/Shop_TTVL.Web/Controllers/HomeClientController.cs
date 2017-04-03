﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Shop_TTVL.Web.Controllers
{
    [AuthorizeClient]
    public class HomeClientController : Controller
    {
        // GET: HomeClient
        public ActionResult Index()
        {
            return View();
        }
    }
}