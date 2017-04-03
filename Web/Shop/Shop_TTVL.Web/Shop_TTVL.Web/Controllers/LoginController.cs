using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop_TTVL.Entities.Data;
using Shop_TTVL.Entities.Model;

namespace Shop_TTVL.Web.Controllers
{
    public class LoginController : Controller
    {
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(LoginModel model)
        {
            if (!ModelState.IsValid)
            {
                return Json(new
                {
                    type = "Error",
                    data = "Chưa hoàn thành"
                });
            }
            else
            {
                using (var db = new MasterDataContext())
                {
                    var query = db.Customers.SingleOrDefault(p => p.Username == model.Username && p.Password == model.Password);

                    if (query == null)
                    {
                        return Json(new
                        {
                            type = "Error",
                            data = "[Tài khoản] hoặc [Mật khẩu] không đúng."
                        });
                    }
                    else
                    {
                        Session["Customer"] = query;
                        if (string.IsNullOrEmpty(model.ReturnToUrl))
                        {
                            return Json(new
                            {
                                type = "Success",
                                data = Url.Action("Index", "Home")
                            });
                        }
                        return Json(new
                        {
                            type = "Success",
                            data = model.ReturnToUrl
                        });
                    }
                }
            }
        }

        [AuthorizeClient]
        public ActionResult Logout()
        {
            Session.Remove("Customer");
            return RedirectToAction("Index", "Home");
        }
        public ActionResult Render()
        {
            return PartialView("_LoginPartial");
        }
    }
}