using System;
using System.Collections.Generic;
using System.Data.Entity.Migrations;
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

        /// <summary>
        /// Trả về List User
        /// </summary>
        /// <returns></returns>
        public List<User> GetUsers()
        {
            return db.Users.Where(a => a.Username != "admin").ToList();
        }

        /// <summary>
        /// Trả về 1 User có ID tương ứng
        /// </summary>
        /// <param name="id"></param>
        /// <returns></returns>
        public User GetUsers(int id)
        {
            return db.Users.FirstOrDefault(x => x.ID== id && x.Username != "admin");
        }

        public bool Save(User user)
        {
            try
            {
                db.Users.AddOrUpdate(user);
                db.SaveChanges();
                return true;
            }
            catch (Exception e)
            {
                return false;
            }
        }

        /// <summary>
        /// Test xem username này đã tồn tại hay chưa
        /// Nếu trả về true: có nghĩa là đã tồn tại
        /// Nếu trả về false: có nghĩa là chưa tồn tại
        /// </summary>
        /// <param name="username"></param>
        /// <returns></returns>
        public bool TestUserNameUsers(string username)
        {
            try
            {
                var single = db.Users.SingleOrDefault(x => x.Username == username);
                if (single != null)
                    return true;
                return false;
            }
            catch (Exception e)
            {
                return false;
            }
        }
    }
}
