using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop_TTVL.Entities.Model
{
    public class EmployeeModel
    {
        public int RowID { get; set; }

        [Required(ErrorMessage = "Mời nhập tên tài khoản")]
        public string Username { get; set; }

        public string Password { get; set; }

        [Required(ErrorMessage = "Mời nhập Họ và Tên tài khoản")]
        public string FullName { get; set; }

        public int RoleId { get; set; }

        public string Alert { get; set; }

        public string ReturnToUrl { get; set; }
    }
}
