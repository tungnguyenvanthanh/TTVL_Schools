using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Windows.Forms;
using DevExpress.UserSkins;
using DevExpress.Skins;
using TTVL.App_Codes;
using TTVL.DangNhap;
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

            Intro t = new Intro();
            t.Show();

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
            //using (DangNhap.DangNhap frmLogin = new DangNhap.DangNhap())
            //{
            //    frmLogin.ShowDialog();
            //    if (frmLogin.DialogResult != DialogResult.OK) // nếu không đăng nhập mà nhấn nút X thì điều kiện này đúng
            //    {
            //        return;
            //    }
            //}
            #endregion

            t.Close();

            new FormMain().Show();
            Application.Run();
        }
    }
}
