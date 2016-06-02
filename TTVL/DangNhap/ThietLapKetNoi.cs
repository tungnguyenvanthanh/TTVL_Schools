using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraEditors;
using TTVL.App_Codes;
using TTVL_DLL;

namespace TTVL.DangNhap
{
    public partial class ThietLapKetNoi : DevExpress.XtraEditors.XtraForm
    {
        string ConnectString = "";
        public ThietLapKetNoi()
        {
            InitializeComponent();
        }

        private void btLuuDong_Click(object sender, EventArgs e)
        {
            DialogBox.ShowWaitForm();
            if (xtraTabControl1.SelectedTabPageIndex == 0)
            {
                //Nhap chuoi ket noi                
                ConnectString = EncDec.Decrypt(txtKey.Text);
                Common.SqlConnString = ConnectString;
                Common.Conn = txtKey.Text;

                if (!CommonCls.TestConnect(ConnectString))
                    DialogBox.Infomation("Kết nối không thành công. Vui lòng kiểm tra lại, xin cảm ơn.");
                else
                    this.Hide();
            }
            DialogBox.HideWaitForm();
            this.DialogResult = DialogResult.OK;
        }

        private void btHuy_Click(object sender, EventArgs e)
        {
            this.DialogResult = DialogResult.Cancel;
        }
    }
}