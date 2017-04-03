using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.IRepository
{
    public interface IProductTypeRepository
    {
        List<ProductType> GetProductTypes();
    }
}
