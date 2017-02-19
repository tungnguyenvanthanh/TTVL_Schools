using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop123.Entities.Model
{
    public class ProductModel
    {
        [Required(ErrorMessage = "Mời nhập tên sản phẩm")]
        public string Name { get; set; }
    }
}
