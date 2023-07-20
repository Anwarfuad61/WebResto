using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using WebResto.DataSet1TableAdapters;

namespace WebResto
{
    public class LoginControl
    {
        TBL_PENGGUNATableAdapter TP = new TBL_PENGGUNATableAdapter();
        public bool cekLogin(string user, string pass)
        {
            bool cek = false;
            try
            {
                if(TP.GetUser(user, pass).ToString() != "")
                    cek = true;
            }
            catch (Exception)
            {
                { cek = false; }
            }
            return cek;
        }
        public int GetRoleUser(string user, string pass)
        {
            int role = 0;
            try
            {
                role = int.Parse(TP.GetRole(user, pass).ToString());
            }
            catch (Exception)
            {
                role = 0;
            }
            return role;
        }
    }
}