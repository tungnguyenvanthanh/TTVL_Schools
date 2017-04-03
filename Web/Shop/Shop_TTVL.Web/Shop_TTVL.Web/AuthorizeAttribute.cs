using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Shop_TTVL.Web
{
    public class AuthorizeAttribute : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (HttpContext.Current.Session["Employee"] != null) return;

            filterContext.Result = new RedirectToRouteResult(
                new RouteValueDictionary { { "Controller", "Login" }, { "Action", "Index" }, { "returnToUrl", HttpContext.Current.Request.RawUrl } }
            );
        }
    }
}