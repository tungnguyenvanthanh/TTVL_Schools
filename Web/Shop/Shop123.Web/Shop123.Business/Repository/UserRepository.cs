using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop123.Business.IRepository;
using Shop123.Entities.Entities;

namespace Shop123.Business.Repository
{
    public class UserRepository : IUserRepository
    {
        private readonly Shop123DbContext db;

        public UserRepository()
        {
            db = new Shop123DbContext();
        }

        public User Login(string username, string password)
        {
            try
            {
                var employee = db.Users.Single(x => x.Username == username && x.Password == password);
                return employee;
            }
            catch (Exception e)
            {
                return null;
            }
        }
    }
}
