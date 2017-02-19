using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;
using Shop123.Entities.Model;
using Shop123.Web.Areas.Admin.Controllers;

namespace Shop123.Web
{
    public class AuthorizeAttribute : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (HttpContext.Current.Session["User"] != null) return;

            filterContext.Result = new RedirectToRouteResult(
                new RouteValueDictionary { { "Controller", "Login" }, { "Action", "Index" }, { "returnToUrl", HttpContext.Current.Request.RawUrl } }
            );
        }
    }
}