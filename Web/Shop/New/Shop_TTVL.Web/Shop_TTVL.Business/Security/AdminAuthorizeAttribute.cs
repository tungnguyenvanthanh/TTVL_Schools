using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace Shop_TTVL.Business.Security
{
    public class AdminAuthorizeAttribute : FilterAttribute, IAuthorizationFilter
    {
        public void OnAuthorization(AuthorizationContext filterContext)
        {
            if (HttpContext.Current.Session["Employee"] != null) return;

            filterContext.Result = new RedirectToRouteResult(
                new RouteValueDictionary
                {
                    { "Controller", "Login" },
                    { "Action", "Index" },
                    { "returnToUrl", HttpContext.Current.Request.RawUrl }
                }
            );
        }
    }
}
