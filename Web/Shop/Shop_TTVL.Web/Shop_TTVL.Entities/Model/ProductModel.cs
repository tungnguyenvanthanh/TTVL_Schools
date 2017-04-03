using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop_TTVL.Entities.Model
{
    public class ProductModel
    {
        public int Id { get; set; }

        [Required(ErrorMessage = "Mời nhập tên sản phẩm")]
        public string Name { get; set; }

        public string Alert { get; set; }

        public DateTime CreateDay { get; set; }

        public string CreateBy { get; set; }

        public DateTime ModifiedDate { get; set; }

        public string ModifiedBy { get; set; }

        public bool Status { get; set; }

        public decimal Price { get; set; }

        public int Quantity { get; set; }

        public string Description { get; set; }

        public string Image { get; set; }

        public int View { get; set; }
    }
}
