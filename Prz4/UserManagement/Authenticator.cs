using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UserManagement
{
    public class authenticator
    {
        private Dictionary<string, string> Credentials = new Dictionary<string, string>();

        public authenticator()
        {
            //username and password
            Credentials.Add("bob", "bob1");
            Credentials.Add("alice", "alice1");
            Credentials.Add("ram", "ram1");
            Credentials.Add("hari", "hari1");
            Credentials.Add("admin", "admin1");
        }

        public bool ValidateCredentials(string username, string password)
        {
            return Credentials.Any(entry => entry.Key == username && entry.Value == password);
        }

        public class oldUser
        {
            public string UserName { get; set; }
            public string Password { get; set; }

            public void getUser(string username, string password)
            {
                UserName = username;
                Password = password;
            }

            public void ValidateUser()
            {
                authenticator auth = new authenticator();
                var isvalid = auth.ValidateCredentials(UserName, Password);
                             
            }

        }
    }
}

