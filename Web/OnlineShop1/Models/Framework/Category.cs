using System.ComponentModel;

namespace Models.Framework
{
    using System;
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Data.Entity.Spatial;

    [Table("Category")]
    public partial class Category
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Category()
        {
            Products = new HashSet<Product>();
        }

        public int ID { get; set; }

        [StringLength(50, ErrorMessage = "Tên danh mục tối đa 50 ký tự.")]
        [DisplayName("Tên danh mục")]
        [Required(ErrorMessage = "Bạn chưa nhập tên danh mục.")]
        public string Name { get; set; }

        [StringLength(50)]
        [DisplayName("Tiêu để SEO")]
        [Required(ErrorMessage = "Bạn chưa nhập Tiêu đề SEO")]
        public string Alias { get; set; }

        [DisplayName("Danh mục cha")]
        public int? ParentID { get; set; }

        [DisplayName("Ngày tạo")]
        public DateTime? CreatrDate { get; set; }

        [DisplayName("Thứ tự")]
        [Range(1, Int32.MaxValue, ErrorMessage = "Số thứ tự phải lớn hơn 0 và nhỏ hơn 2147483647.")]
        public int? Order { get; set; }

        [DisplayName("Trạng thái")]
        public bool? Status { get; set; }

        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Product> Products { get; set; }
    }
}
