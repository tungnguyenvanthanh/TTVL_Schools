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

namespace TTVL.Dialog
{
    public partial class f_Them_Sua_QuyDanh : DevExpress.XtraEditors.XtraForm
    {
        public int MaQuyDanhNV { get; set; }
        private QuyDanh objQuyDanh;
        private MasterDataContext db;
        public bool isYesNo = false;

        public f_Them_Sua_QuyDanh()
        {
            InitializeComponent();
            db = new MasterDataContext();
        }

        void Them_Sua()
        {
            if (txtTenQuyDanh.Text.Trim() == "")
            {
                MessageBox.Show("Vui lòng nhập [Tên quý danh], xin cảm ơn");
                txtTenQuyDanh.Focus();
                return;
            }

            objQuyDanh.TenQuyDanh = txtTenQuyDanh.Text;

            try
            {
                db.SubmitChanges();
                MessageBox.Show("Thành công", "TTVL");
                isYesNo = true;
                this.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show("Đã có lỗi xảy ra. Code: " + ex.Message);
            }
        }

        private void btDongY_Click(object sender, EventArgs e)
        {
            Them_Sua();
        }

        private void dialog_Them_Sua_QuyDanh_Load(object sender, EventArgs e)
        {
            if (MaQuyDanhNV != 0)
            {
                objQuyDanh = db.QuyDanhs.SingleOrDefault(p => p.MaQuyDanh == MaQuyDanhNV);

                if (objQuyDanh != null)
                {
                    txtTenQuyDanh.Text = objQuyDanh.TenQuyDanh;
                }
                else
                {
                    MessageBox.Show("[Quý danh] này không có trong hệ thống. Vui lòng kiểm tra lại, xin cảm ơn.");
                    this.Close();
                }
            }
            else
            {
                objQuyDanh = new QuyDanh();
                db.QuyDanhs.InsertOnSubmit(objQuyDanh);
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