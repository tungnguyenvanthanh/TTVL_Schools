using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.Repository
{
    public class ProductTypeRepository : IProductTypeRepository
    {
        public List<ProductType> GetProductTypes()
        {
            using (var db = new MasterDataContext())
            {
                return db.ProductTypes.Where(a => a.Active == true).ToList();
            }
        }
    }
}
