using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Security;
using BCrypt.Net;
using System.Runtime.InteropServices;
using System.Windows.Input;
using E_ClassRecord.Model;
using E_ClassRecord.Repositories;
using System.Net;
using System.Threading;
using System.Security.Principal;

namespace E_ClassRecord.ViewModel
{
    public class LoginViewModel : ViewModelBase
    {
        //FIELDS

        private String _username;
        private SecureString _password;
        private String _saltedPassword = BCrypt.Net.BCrypt.GenerateSalt(20);
        private String _hashedPassword;
        private String _errorMessage;
        private bool _isViewVisible = true;

        private IUserRepos userRepos;
        public String Username
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
                OnPropertyChanged(nameof(Username));
            }
        }

        public SecureString Password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
                OnPropertyChanged(nameof(Password));
            }
        }

        private static string ConvertSecureStringToString(SecureString secureString)
        {
            if (secureString == null)
                throw new ArgumentNullException("secureString");

            IntPtr ptr = IntPtr.Zero;

            try
            {
                ptr = Marshal.SecureStringToGlobalAllocUnicode(secureString);
                return Marshal.PtrToStringUni(ptr);
            }
            finally
            {
                if (ptr != IntPtr.Zero)
                    Marshal.ZeroFreeGlobalAllocUnicode(ptr);
            }
        }

        public String HashedPassword
        {
            get
            {
                return _hashedPassword;
            }
            set
            {
                _hashedPassword = BCrypt.Net.BCrypt.HashPassword(ConvertSecureStringToString(_password), _saltedPassword);

            }
        }

        public String ErrorMessage
        {
            get
            {
                return _errorMessage;
            }
            set
            {
                _errorMessage = value;
                OnPropertyChanged(nameof(ErrorMessage));
            }
        }

        public bool IsViewVisible
        {
            get
            {
                return _isViewVisible;
            }
            set
            {
                _isViewVisible = value;
                OnPropertyChanged(nameof(IsViewVisible));
            }
        }


        //COMMANDS

        public ICommand LoginCommand { get; }
        public ICommand RecoverPassword { get; }
        public ICommand ShowPasswordCommand { get; }
        public ICommand RememberPassword { get; }
        

        //CONSTRUCTOR AGAIN -_-

        public LoginViewModel()
        {
            userRepos = new UserRepository();
            LoginCommand = new ViewModelCommand(ExecuteLoginCommand, CanExecuteLoginCommand);
            RecoverPassword = new ViewModelCommand(rec => ExecuteRecoverPassword("",""));
        }

        private bool CanExecuteLoginCommand(object obj)
        {
            bool validData;
            if (String.IsNullOrWhiteSpace(Username) || Username.Length<4 || Password==null || Password.Length < 3)
            {
                validData = false;
            }
            else
            {
                validData = true;
            }
            return validData;
        }

        private void ExecuteLoginCommand(object obj)
        {
            var isValidUser = userRepos.AuthenticateUser(new NetworkCredential(Username,Password));

            if (isValidUser)
            {
                Thread.CurrentPrincipal = new GenericPrincipal(new GenericIdentity(Username), null);
                IsViewVisible = false;
            }
            else
            {
                ErrorMessage = "* Invalid Credentials!";
            }
        }

        private void ExecuteRecoverPassword(String username, String email)
        {
            throw new NotImplementedException();
        }
    }
}
