using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Security.Permissions;
using System.Text;
using System.Threading.Tasks;

namespace Shop123.Entities.Model
{
    public class UserModel
    {
        public long ID { get; set; }

        [Required(ErrorMessage = "Mời nhập tên tài khoản")]
        public string Username { get; set; }

        public string Password { get; set; }

        [Required(ErrorMessage = "Mời nhập Họ và Tên tài khoản")]
        public string Name { get; set; }

        public string Address { get; set; }
        
        [EmailAddress(ErrorMessage = "Địa chỉ email không hợp lệ")]
        public string Email { get; set; }

        public string Phone { get; set; }

        public DateTime CreateDay { get; set; }

        public string CreateBy { get; set; }

        public DateTime ModifiedDate { get; set; }

        public string ModifiedBy { get; set; }
        
        public bool Status { get; set; }

        public string Alert { get; set; }
    }
}
