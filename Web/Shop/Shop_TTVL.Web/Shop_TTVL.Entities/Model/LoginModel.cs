using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.ComponentModel.DataAnnotations;

namespace Shop_TTVL.Entities.Model
{
    public class LoginModel
    {
        public string FullName { get; set; }

        [Required(ErrorMessage = "Mời nhập Username")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Mời nhập Password")]
        public string Password { get; set; }

        public bool Remember { get; set; }

        public string ReturnToUrl { get; set; }
    }
}
