using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Business.IRepository;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.Repository
{
    public class EmployeeRepository : IEmployeeRepository
    {
        /// <summary>
        /// Trả về List User
        /// </summary>
        /// <returns>Trả về List User</returns>
        public List<Employee> GetUsers()
        {
            using (var db = new MasterDataContext())
            {
                return db.Employees.Where(a => a.Username != "admin").ToList();
            }
        }


        /// <summary>
        /// Trả về 1 User có ID tương ứng
        /// </summary>
        /// <param name="rowId">rowId tự tăng trong database</param>
        /// <returns>Trả về 1 User có ID tương ứng</returns>
        public Employee GetUsers(int rowId)
        {
            using (var db = new MasterDataContext())
            {
                return db.Employees.FirstOrDefault(x => x.RowID == rowId && x.Username != "admin");
            }
        }

        /// <summary>
        /// Test xem username này đã tồn tại hay chưa
        /// Nếu trả về true: có nghĩa là đã tồn tại
        /// Nếu trả về false: có nghĩa là chưa tồn tại
        /// </summary>
        /// <param name="username">Username</param>
        /// <returns>Test xem username này đã tồn tại hay chưa</returns>
        public bool CheckUserNameUsers(string username)
        {
            using (var db = new MasterDataContext())
            {
                try
                {
                    var single = db.Employees.SingleOrDefault(x => x.Username == username);
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

        public bool Save(Employee user, string status)
        {
            if (status.Equals("create"))
            {
                using (var db = new MasterDataContext())
                {
                    try
                    {
                        db.Employees.InsertOnSubmit(user);
                        db.SubmitChanges();
                        return true;
                    }
                    catch (Exception e)
                    {
                        return false;
                    }
                }
            }
            else if (status.Equals("update"))
            {
                using (var db = new MasterDataContext())
                {
                    try
                    {
                        db.SubmitChanges();
                        return true;
                    }
                    catch (Exception e)
                    {
                        return false;
                    }
                }
            }
            return false;
        }
    }
}
