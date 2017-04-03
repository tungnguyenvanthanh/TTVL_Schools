using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Business.Repository;
using Shop_TTVL.Entities.Data;
using Shop_TTVL.Entities.Model;

namespace Shop_TTVL.Web.Areas.Admin.Controllers
{
    [Authorize]
    public class EmployeeController : Controller
    {
        private readonly IEmployeeRepository _employeeRepository = new EmployeeRepository();
        // GET: Admin/User
        public ActionResult Index()
        {
            var data = _employeeRepository.GetUsers();
            return View(data);
        }

        [HttpGet]
        public ActionResult Create()
        {
            var model = new EmployeeModel();
            return View("Create", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(EmployeeModel model)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                model.Alert = "alert-danger";
                return View("Create", model);
            }

            var employee = new Employee()
            {
                Username = model.Username,
                Password = "123456",
                FullName = model.FullName,
                RoleId = 2
            };

            #region Check Username đã tồn tại hay chưa

            if (_employeeRepository.CheckUserNameUsers(model.Username))
            {
                ModelState.AddModelError("", "Username đã tồn tại.");
                model.Alert = "alert-info";
                return View("Create", model);
            }

            #endregion

            #region Create employee

            if (_employeeRepository.Save(employee, "create"))
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
            if (id == 0)
            {
                return View("Error");
            }

            var entity = _employeeRepository.GetUsers(id);

            if (entity == null)
            {
                return View("Error");
            }

            var model = new EmployeeModel
            {
                RowID = entity.RowID,
                Username = entity.Username,
                FullName = entity.FullName,
                RoleId = entity.RoleId
            };

            return View("Detail", model);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Detail(EmployeeModel model, string submit)
        {
            if (!ModelState.IsValid)
            {
                ModelState.AddModelError("", "Chưa hoàn thành");
                model.Alert = "alert-danger";
                return View("Detail", model);
            }

            if (submit.Equals("Reset password"))
            {
                using (var db = new MasterDataContext())
                {
                    Employee employee = db.Employees.SingleOrDefault(p => p.Username == model.Username);
                    if (employee != null)
                    {
                        employee.Password = "123456";

                        try
                        {
                            db.SubmitChanges();
                            ModelState.AddModelError("", "Cập nhật thành công");
                            model.Alert = "alert-success";
                            return View("Detail", model);
                        }
                        catch (Exception e)
                        {
                            ModelState.AddModelError("", e);
                            model.Alert = "alert-danger";
                            return View("Detail", model);
                        }
                    }
                }
            }
            else if (submit.Equals("Save"))
            {
                using (var db = new MasterDataContext())
                {
                    Employee employee = db.Employees.SingleOrDefault(p => p.RowID.Equals(model.RowID));
                    if (employee != null)
                    {
                        employee.FullName = model.FullName;

                        try
                        {
                            db.SubmitChanges();
                            ModelState.AddModelError("", "Cập nhật thành công");
                            model.Alert = "alert-success";
                            return View("Detail", model);
                        }
                        catch (Exception e)
                        {
                            ModelState.AddModelError("", e.Message);
                            model.Alert = "alert-danger";
                            return View("Detail", model);
                        }
                    }
                }
            }

            ModelState.AddModelError("", "Chưa hoàn thành");
            model.Alert = "alert-danger";
            return View("Detail", model);
        }
    }
}