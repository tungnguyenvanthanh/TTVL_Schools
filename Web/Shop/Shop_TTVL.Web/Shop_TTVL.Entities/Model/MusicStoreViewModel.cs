using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Shop_TTVL.Entities.Model
{
    public class MusicStoreViewModel
    {
        public IEnumerable<Data.ProductType> ProductTypes { get; set; }
        public IEnumerable<Data.Product> TopViewProducts { get; set; }
        public IEnumerable<Data.Customer> LoginCustomerModel { get; set; }
    }
}
