using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.Repository
{
    public class ProductRepository : IProductRepository
    {
        public List<Product> GetProducts(string customer)
        {
            using (var db = new MasterDataContext())
            {
                return db.Products.Where(a => a.Customer.Equals(customer)).ToList();
            }
        }

        public Product GetProducts(int ID)
        {
            using (var db = new MasterDataContext())
            {
                return db.Products.FirstOrDefault(x => x.Id == ID);
            }
        }

        public Product GetProductsCustomer(int ID, string Customer)
        {
            using (var db = new MasterDataContext())
            {
                return db.Products.FirstOrDefault(x => x.Id == ID && x.Customer.Equals(Customer));
            }
        }

        public bool CheckNameProducts(int RowID)
        {
            throw new NotImplementedException();
        }

        public bool Save(Product product, string status)
        {
            throw new NotImplementedException();
        }

        public List<Product> GetTopViewProducts(int id)
        {
            using (var db = new MasterDataContext())
            {
                return (from t in db.Products
                    where
                    t.IdProductType == id
                    orderby
                    t.Views descending
                    select t).Take(3).ToList();

            }
        }
    }
}
