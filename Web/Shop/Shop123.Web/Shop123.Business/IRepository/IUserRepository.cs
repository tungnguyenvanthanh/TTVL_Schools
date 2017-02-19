using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Shop123.Entities.Entities;

namespace Shop123.Business.IRepository
{
    public interface IUserRepository
    {
        User Login(string username, string password);
    }
}
