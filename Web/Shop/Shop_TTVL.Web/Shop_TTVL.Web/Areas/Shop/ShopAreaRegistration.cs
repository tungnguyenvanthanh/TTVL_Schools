using System.Web.Mvc;

namespace Shop_TTVL.Web.Areas.Shop
{
    public class ShopAreaRegistration : AreaRegistration 
    {
        public override string AreaName 
        {
            get 
            {
                return "Shop";
            }
        }

        public override void RegisterArea(AreaRegistrationContext context) 
        {
            context.MapRoute(
                "Shop_default",
                "Shop/{controller}/{action}/{id}",
                new { action = "Index", Controller = "Home", id = UrlParameter.Optional }, 
                namespaces: new string[] { "Shop_TTVL.Web.Areas.Shop.Controllers" }
            );
        }
    }
}