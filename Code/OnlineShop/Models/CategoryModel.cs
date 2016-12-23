using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.Framework;

namespace Models
{
    public class CategoryModel
    {
        private OnlineShopDbContext db = null;
        public CategoryModel() { db = new OnlineShopDbContext(); }

        public List<Category> ListAll()
        {
            var list = db.Database.SqlQuery<Category>("Category_ListAll").ToList();
            return list;
        }
    }
}
