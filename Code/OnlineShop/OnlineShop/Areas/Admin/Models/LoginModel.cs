﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace OnlineShop.Areas.Admin.Models
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Username không được để tróng")]
        public string UserName { get; set; }
        [Required(ErrorMessage = "Password không được để tróng")]
        public string Password { get; set; }
        public bool RememberMe { get; set; }
    }
}