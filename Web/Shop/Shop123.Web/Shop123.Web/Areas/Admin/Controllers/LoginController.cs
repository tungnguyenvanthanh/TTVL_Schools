using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Helpers;
using System.Web.Mvc;
using System.Web.Security;
using Shop123.Business.IRepository;
using Shop123.Business.Repository;
using Shop123.Entities.Model;

namespace Shop123.Web.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        private readonly IUserRepository _userRepository = new UserRepository();
        // GET: Admin/Login
        [HttpGet]
        public ActionResult Index(string returnToUrl)
        {
            if (Session["User"] != null)
                return RedirectToAction("Index", "Home");
            return View(string.IsNullOrEmpty(returnToUrl) ? new LoginModel():new LoginModel() {ReturnToUrl = returnToUrl});
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
                var employee = _userRepository.Login(model.Username, model.Password);

                if (employee == null)
                {
                    ModelState.AddModelError("", "[Tài khoản] hoặc [Mật khẩu] không đúng.");
                    return View(model);
                }
                else
                {
                    Session["User"] = employee;
                    if (string.IsNullOrEmpty(model.ReturnToUrl))
                    {
                        return RedirectToAction("Index", "Home");
                    }
                    return Redirect(model.ReturnToUrl);
                }
            }
        }
        
        [Authorize]
        public ActionResult Logout()
        {
            Session.Remove("User");
            return RedirectToAction("Index");
        }
    }
}