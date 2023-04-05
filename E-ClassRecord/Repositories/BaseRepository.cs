using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using MySql.Data;
using MySql.Data.MySqlClient;

namespace E_ClassRecord.Repositories
{
    public abstract class BaseRepository
    {
        private readonly string _connectionString;
        private readonly string finalCon;
        protected static MySqlConnection connect;

        public BaseRepository()
        {
            _connectionString = "server=localhost;Port=3306;uid=root;password=;database=wccs";
            finalCon = _connectionString;
            connect = new MySqlConnection(_connectionString);
        }

    }
}
