using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop123.Business.IRepository;
using Shop123.Business.Repository;
using Shop123.Entities.Entities;

namespace Shop123.Web.Areas.Admin.Controllers
{
    [LoginAuthorize]
    public class UserController : Controller
    {
        private readonly IUserRepository _userRepository = new UserRepository();
        // GET: Admin/User
        public ActionResult Index()
        {
           var data =  _userRepository.GetUsers();
            return View(data);
        }
        public ActionResult Create(User user)
        {
            return View(user);
        }
    }
}