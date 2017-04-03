using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop_TTVL.Entities.Data;

namespace Shop_TTVL.Business.IRepository
{
    public interface IEmployeeRepository
    {
        List<Employee> GetUsers();
        Employee GetUsers(int ID);
        bool CheckUserNameUsers(string username);
        bool Save(Employee user, string status);
    }
}
