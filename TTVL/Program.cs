using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Security.Cryptography;
using System.Windows.Forms;
using DevExpress.UserSkins;
using DevExpress.Skins;
using TTVL.App_Codes;
using TTVL.DangNhap;
using TTVL.Form;
using TTVL_DLL;

namespace TTVL
{
    static class Program
    {
        //My comment
        /// <summary>
        /// The main entry point for the application.
        /// </summary>
        [STAThread]
        static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);

            BonusSkins.Register();
            SkinManager.EnableFormSkins();

            string n = EncDec.Encrypt("workstation id=MySchoolsttvl.mssql.somee.com;packet size=4096;user id=thanhtungnvtt_SQLLogin_1;pwd=fxxy3eg6wz;data source=MySchoolsttvl.mssql.somee.com;persist security info=False;initial catalog=MySchoolsttvl");
            
            Intro t = new Intro();
            t.Show();

            //#region Intro
            //for (int i = 0; i < 5000; i++)
            //{
            //    Console.WriteLine(i);
            //}
            //#endregion

            DialogBox.ShowWaitForm();
            
            #region Check connect
            try
            {
                Common.SqlConnString = CommonCls.Conn = EncDec.Decrypt(Common.Conn);
            }
            catch { }

            if (!CommonCls.TestConnect())
            {
                using (ThietLapKetNoi frmConnect = new ThietLapKetNoi())
                {
                    frmConnect.ShowDialog();
                    if (frmConnect.DialogResult != DialogResult.OK) // nếu không đăng nhập mà nhấn nút X thì điều kiện này đúng
                    {
                        return;
                    }
                }
            }
            #endregion

            DialogBox.HideWaitForm();

            #region Đăng nhập
            using (DangNhap.DangNhap frmLogin = new DangNhap.DangNhap())
            {
                frmLogin.ShowDialog();
                if (frmLogin.DialogResult != DialogResult.OK)
                {
                    return;
                }
            }

            //using (Form1 f = new Form1())
            //{
            //    f.ShowDialog();
            //    if (f.DialogResult != DialogResult.OK)
            //    {
            //        return;
            //    }
            //}
            #endregion

            t.Close();
            t.Dispose();

            new FormMain().Show();

            Application.Run();
        }
    }
}
