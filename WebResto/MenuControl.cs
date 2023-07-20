using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using WebResto.DataSet1TableAdapters;
using System.Data;

namespace WebResto
{
    public class MenuControl
    {
        TBL_MENUTableAdapter TM = new TBL_MENUTableAdapter();
        public DataTable ShowMenu()
        {
            DataTable DT = null;
            try
            {
                DT = TM.GetData();
            }
            catch (Exception)
            {
                DT = null;
            }
            return DT;
        }
    }
}