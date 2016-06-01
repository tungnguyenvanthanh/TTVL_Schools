using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TTVL
{
    public class Common
    {
        public static string Skins
        {
            get { return Properties.Settings.Default.Skins; }
            set { Properties.Settings.Default.Skins = value; Properties.Settings.Default.Save(); }
        }
        public static string SqlConnString
        {
            get { return Properties.Settings.Default.TTVL_SchoolsConnectionString; }
            set { Properties.Settings.Default.TTVL_SchoolsConnectionString = value; Properties.Settings.Default.Save(); }
        }

        public static string Conn
        {
            get { return Properties.Settings.Default.Conn; }
            set { Properties.Settings.Default.Conn = value; Properties.Settings.Default.Save(); }
        }
    }
}
