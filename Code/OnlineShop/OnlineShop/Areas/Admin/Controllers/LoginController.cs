using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;
using System.Web;
using System.Web.Mvc;
using Models;
using OnlineShop.Areas.Admin.Code;
using OnlineShop.Areas.Admin.Models;

namespace OnlineShop.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        // GET: Admin/Login
        [HttpGet]
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Index(LoginModel model)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
            }
            else
            {
                var result = new AccountModel().Login(model.UserName, model.Password);
                if (result)
                {
                    SessionHelper.SetSession(new UserSession() {UserName = model.UserName});
                    return RedirectToAction("Index", "Home");
                }
                else
                {
                    ModelState.AddModelError("", "[Tài khoản] hoặc [Mật khẩu] không đúng.");
                }
                return View(model);
            }
            return View(model);
        }
    }
}