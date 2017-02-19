using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop123.Entities.Model
{
    public class LoginModel
    {
        [Required(ErrorMessage = "Mời nhập Username")]
        public string Username { get; set; }

        [Required(ErrorMessage = "Mời nhập Password")]
        public string Password { get; set; }

        public bool Remember { get; set; }

        public string ReturnToUrl { get; set; }
    }
}
