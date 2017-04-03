using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop_TTVL.Entities.Data;
using Shop_TTVL.Entities.Model;

namespace Shop_TTVL.Web.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        public ActionResult Index(string returnToUrl)
        {
            if (Session["Employee"] != null)
                return RedirectToAction("Index", "Home");
            return View(string.IsNullOrEmpty(returnToUrl) ? new LoginModel() : new LoginModel() { ReturnToUrl = returnToUrl });
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(LoginModel model)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                return View(model);
            }
            else
            {
                using (var db = new MasterDataContext())
                {
                    var query = db.Employees.SingleOrDefault(p => p.Username == model.Username && p.Password == model.Password);

                    if (query == null)
                    {
                        ModelState.AddModelError("", "[Tài khoản] hoặc [Mật khẩu] không đúng.");
                        return View(model);
                    }
                    else
                    {
                        Session["Employee"] = query.Username;
                        if (string.IsNullOrEmpty(model.ReturnToUrl))
                        {
                            return RedirectToAction("Index", "Home");
                        }
                        return Redirect(model.ReturnToUrl);
                    }
                }
            }
        }

        [Authorize]
        public ActionResult Logout()
        {
            Session.Remove("Employee");
            return RedirectToAction("Index","Login");
        }
    }
}