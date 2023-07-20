using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace WebResto
{
    public class User
    {
        private string userName, password;
        private int role;
        public User() { }

        public User(string Name, string pass, int rol)
        {
            userName = Name;
            password = pass;
            role = rol;
        }
        public string UserName
        {
            set { userName = value; }
            get { return userName; }
        }
        public string Password
        {
            set { password = value; }
            get { return password; }
        }
        public int Role
        {
            set { role = value; }
            get { return role; }
        }
    }
}