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
using Model.Entity;
using TTVL_DLL;

namespace TTVL.HeThong.TaiKhoan
{
    public partial class f_DoiMatKhau : DevExpress.XtraEditors.XtraForm
    {
        public f_DoiMatKhau()
        {
            InitializeComponent();
        }

        private void btOK_Click(object sender, EventArgs e)
        {
            DialogBox.ShowWaitForm();
            if (txtMatKhauMoi.Text.Equals("") || txtMatKhauMoi.Equals(null))
            {
                DialogBox.HideWaitForm();
                DialogBox.Error("[Mật khẩu mới] không được để trống, vui lòng kiểm tra lại.");
                return;
            }

            if (!txtMatKhauMoi.Text.Equals(txtXacNhan.Text))
            {
                DialogBox.HideWaitForm();
                DialogBox.Error("[Mật khẩu mới] và [Mật khẩu xác nhận] không khớp, vui lòng kiểm tra lại.");
                return;
            }

            if (!MyCodeTTVL.MaHoaMd5(E_NhanVien.TaiKhoan + txtMatKhauCu.Text + "P@ssword09113van").Equals(E_NhanVien.MatKhau))
            {
                DialogBox.HideWaitForm();
                DialogBox.Error("[Mật khẩu củ] không đúng, vui lòng kiểm tra lại.");
                return;
            }

            if (DialogBox.Question("Bạn có chắc chắn muốn thay đổi [Mật khẩu] ?") == DialogResult.Yes)
            {
                using (var db = new MasterDataContext())
                {
                    try
                    {
                        var query = from nv in db.NhanViens where nv.TaiKhoan == E_NhanVien.TaiKhoan select nv;
                        foreach (TTVL.NhanVien nv in query)
                        {
                            nv.MatKhau = MyCodeTTVL.MaHoaMd5(E_NhanVien.TaiKhoan + txtMatKhauMoi.Text + "P@ssword09113van");
                        }
                        
                        db.SubmitChanges();
                        DialogBox.HideWaitForm();
                        DialogBox.Infomation("Thành công.");
                    }
                    catch (Exception ex)
                    {
                        DialogBox.HideWaitForm();
                        DialogBox.Error("Lỗi: " + ex.Message);
                        throw;
                    }
                }
                DialogResult = DialogResult.OK;
            }
        }
    }
}