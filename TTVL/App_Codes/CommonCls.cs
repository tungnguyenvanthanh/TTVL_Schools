using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TTVL.App_Codes
{
    public class CommonCls
    {
        public static string Conn = "";

        public static bool TestConnect()
        {
            SqlConnection SqlConn = new SqlConnection(Conn);
            SqlCommand sqlCmd;
            try
            {
                sqlCmd = new SqlCommand("select top 1 * from QuyDanh", SqlConn);
                SqlConn.Open();
                sqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                return true;
            }
            catch
            {
                SqlConn.Close();
                return false;
            }
        }
        public static bool TestConnect(string Connection)
        {
            Conn = Connection;
            SqlConnection SqlConn = new SqlConnection(Conn);
            SqlCommand sqlCmd;
            try
            {
                sqlCmd = new SqlCommand("select top 1 * from QuyDanh", SqlConn);
                SqlConn.Open();
                sqlCmd.ExecuteNonQuery();
                SqlConn.Close();
                return true;
            }
            catch
            {
                SqlConn.Close();
                return false;
            }
        }
    }
}
