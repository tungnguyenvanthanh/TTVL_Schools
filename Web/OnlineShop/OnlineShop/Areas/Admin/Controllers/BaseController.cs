﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using OnlineShop.Common;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class BaseController : Controller
    {
        protected override void OnActionExecuting(ActionExecutingContext filterContext)
        {
            var session = (UserLogin) Session[CommonConstants.USER_SESSION];
            if (session == null)
            {
                filterContext.Result = 
                    new RedirectToRouteResult(
                        new RouteValueDictionary(
                            new
                            {
                                Controller = "login", Action = "index", Areas = "admin"
                            }));
            }
            base.OnActionExecuting(filterContext);
        }
    }
}