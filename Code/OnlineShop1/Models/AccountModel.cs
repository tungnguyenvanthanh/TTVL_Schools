using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Models.Framework;

namespace Models
{
    public class AccountModel
    {
        private OnlineShopDbContext db = null;
        public AccountModel() { db = new OnlineShopDbContext();}

        public bool Login(string username, string password)
        {
            object[] sqlParamater = 
            {
                new SqlParameter("@UserName", username),
                new SqlParameter("@Password", password)
            };
            var res = db.Database.SqlQuery<bool>("Account_Login @UserName, @Password", sqlParamater).SingleOrDefault();
            return res;
        }
    }
}
