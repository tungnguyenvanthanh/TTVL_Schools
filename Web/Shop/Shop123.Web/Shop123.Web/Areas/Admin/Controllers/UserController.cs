using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.UI;
using System.Web.UI.WebControls;
using Shop123.Business.IRepository;
using Shop123.Business.Repository;
using Shop123.Entities.Entities;
using Shop123.Entities.Model;

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

        [HttpGet]
        public ActionResult Create()
        {
            var model = new UserModel();
            return View("Create", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(UserModel model)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                model.Alert = "alert-danger";
                return View("Create", model);
            }

            var user = new User()
            {
                Username = model.Username,
                Password = "123456",
                Name = model.Name,
                Email = model.Email,
                Status = model.Status
            };

            #region Check Username đã tồn tại hay chưa
            if (_userRepository.TestUserNameUsers(model.Username))
            {
                ModelState.AddModelError("", "Username đã tồn tại.");
                model.Alert = "alert-info";
                return View("Create", model);
            }
            #endregion

            #region Save user
            if (_userRepository.Save(user))
            {
                ModelState.AddModelError("", "Tạo thành công");
                model.Alert = "alert-success";
                return View("Create", model);
            }
            #endregion

            ModelState.AddModelError("", "Thất bại");
            model.Alert = "alert-warning";
            return View("Create", model);
        }

        [HttpGet]
        public ActionResult Detail(int id = 0)
        {
            if (id == 0){ return View("Error"); }

            var entity = _userRepository.GetUsers(id);

            if (entity == null) { return View("Error"); }

            var model = new UserModel
            {
                Name = entity.Name,
                Username = entity.Username,
                Email = entity.Email,
                Address = entity.Address,
                Phone = entity.Phone,
                Status = entity.Status
            };

            return View("Detail", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Detail(UserModel model, string submit)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                model.Alert = "alert-danger";
                return View("Detail", model);
            }

            var entityResetPassword = new User();
            {
                entityResetPassword.ID = model.ID;
                entityResetPassword.Password = "123456";
            }

            if (submit.Equals("Reset password"))
            {
                if (!_userRepository.Save(entityResetPassword))
                {
                    ModelState.AddModelError("", "Thất bại");
                    model.Alert = "alert-warning";
                    return View("Detail", model);
                }
                else
                {
                    ModelState.AddModelError("", "Thành công");
                    model.Alert = "alert-success";
                    return View("Detail", model);
                }
            }

            var entity = new User();
            {
                entity.ID = model.ID;
                entity.Username = model.Username;
                entity.Password = model.Password;
                entity.Name = model.Name;
                entity.Address = model.Address;
                entity.Email = model.Email;
                entity.Phone = model.Phone;
                entity.ModifiedDate = model.ModifiedDate;
                entity.ModifiedBy = model.ModifiedBy;
                entity.Status = model.Status;
            }

            if (submit.Equals("Save"))
            {

            }

            ModelState.AddModelError("", "Chưa hoàn thành");
            return View(model);
        }
    }
}