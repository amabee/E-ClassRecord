using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
namespace E_ClassRecord.Repositories
{
    public abstract class BaseRepository
    {
        private readonly string _connectionString;
        private readonly string server = "localhost";
        private readonly string database = "wccsdb";
        private readonly string uid = "root";
        private readonly string password = "";
        public BaseRepository()
        {

         _connectionString = "SERVER=" + server + ";" + "DATABASE=" +
            database + ";" + "UID=" + uid + ";" + "PASSWORD=" + password + ";";
        
        }
        protected SqlConnection GetConnection()
        {
            return new SqlConnection(_connectionString);
        }
    }
}
