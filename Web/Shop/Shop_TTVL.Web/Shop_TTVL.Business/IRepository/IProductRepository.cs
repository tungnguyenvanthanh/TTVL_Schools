using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.IRepository
{
    public interface IProductRepository
    {
        List<Product> GetProducts(string createBy);
        Product GetProducts(int ID);
        Product GetProductsCustomer(int ID, string Customer);
        bool CheckNameProducts(int RowID);
        bool Save(Product product, string status);
        List<Product> GetTopViewProducts(int id);
    }
}
