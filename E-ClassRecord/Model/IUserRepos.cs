using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;

namespace E_ClassRecord.Model
{
    interface IUserRepos
    {
        bool AuthenticateUser(NetworkCredential credential);
        void Add(UserModel userModel);
        void Edit(UserModel userModel);
        void Remove(int ID);
        UserModel GetByID(int ID);
        UserModel GetByUsername(String username);
        IEnumerable<UserModel> GetByAll();
    }
}
