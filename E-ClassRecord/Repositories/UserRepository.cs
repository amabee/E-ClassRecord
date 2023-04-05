using E_ClassRecord.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using MySql.Data.MySqlClient;


namespace E_ClassRecord.Repositories
{
    public class UserRepository : BaseRepository, IUserRepos
    {
        public void Add(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public bool AuthenticateUser(NetworkCredential credential)
        {
            bool validUser;
            using (MySqlConnection connection = BaseRepository.connect)
            using (var cmd = new MySqlCommand())
            {
                connection.Open();
                cmd.CommandText = "SELECT * FROM wccs_users WHERE username=@username AND [password]=@password";
                cmd.Parameters.Add("@username", MySqlDbType.VarChar).Value=credential.UserName;
                cmd.Parameters.Add("@password", MySqlDbType.VarChar).Value = credential.Password;
                validUser = cmd.ExecuteScalar() == null ? false : true;
            }
            return validUser;
        }

        public void Edit(UserModel userModel)
        {
            throw new NotImplementedException();
        }

        public IEnumerable<UserModel> GetByAll()
        {
            throw new NotImplementedException();
        }

        public UserModel GetByID(int ID)
        {
            throw new NotImplementedException();
        }

        public UserModel GetByUsername(string username)
        {
            throw new NotImplementedException();
        }

        public void Remove(int ID)
        {
            throw new NotImplementedException();
        }
    }
}
