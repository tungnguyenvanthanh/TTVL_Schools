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
using TTVL_DLL;

namespace TTVL.HeThong.NhanVien
{
    public partial class f_Them_Sua_ChucVu : DevExpress.XtraEditors.XtraForm
    {
        public int MaChucVuNV { get; set; }
        private ChucVu objChucVu;
        private MasterDataContext db;
        public bool isYesNo = false;

        public f_Them_Sua_ChucVu()
        {
            InitializeComponent();
            db = new MasterDataContext();
        }

        void Them_Sua()
        {
            if (txtTenQuyDanh.Text.Trim() == "")
            {
                DialogBox.Infomation("Vui lòng nhập [Tên chức vụ], xin cảm ơn");
                txtTenQuyDanh.Focus();
                return;
            }

            objChucVu.TenChuVu = txtTenQuyDanh.Text;

            try
            {
                db.SubmitChanges();
                DialogBox.Infomation("Thành công");
                isYesNo = true;
                this.Close();
            }
            catch (Exception ex)
            {
                DialogBox.Error("Đã có lỗi xảy ra. Code: " + ex.Message);
            }
        }

        private void btDongY_Click(object sender, EventArgs e)
        {
            Them_Sua();
        }

        private void f_Them_Sua_ChucVu_Load(object sender, EventArgs e)
        {
            if (MaChucVuNV != 0)
            {
                objChucVu = db.ChucVus.SingleOrDefault(p => p.MaChucVu == MaChucVuNV);

                if (objChucVu != null)
                {
                    txtTenQuyDanh.Text = objChucVu.TenChuVu;
                }
                else
                {
                    MessageBox.Show("[Chức vụ] này không có trong hệ thống. Vui lòng kiểm tra lại, xin cảm ơn.");
                    this.Close();
                }
            }
            else
            {
                objChucVu = new ChucVu();
                db.ChucVus.InsertOnSubmit(objChucVu);
            }
        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == Keys.Enter)
            {
                Them_Sua();
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }
    }
}