using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop.Areas.Admin.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Title UserName is required")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Title Password is required")]
        public string Password { get; set; }
        public bool RememberMe { get; set; }
    }
}