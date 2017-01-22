using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop.Areas.Admin.Models
{
    public class UserModel
    {
        [Required(ErrorMessage = "Mời nhập Username")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Mời nhập Password")]
        public string Password { get; set; }

        [Required(ErrorMessage = "Mời nhập Name")]
        public string Name { get; set; }

        [Required(ErrorMessage = "Mời nhập Address")]
        public string Address { get; set; }

        [Required(ErrorMessage = "Mời nhập Email")]
        [EmailAddress(ErrorMessage = "Định dạng Email không đúng")]
        public string Email { get; set; }

        [Required(ErrorMessage = "Mời nhập Phone")]
        public string Phone { get; set; }
    }
}