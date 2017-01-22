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
    public partial class f_ChucVu : DevExpress.XtraEditors.XtraForm
    {
        public f_ChucVu()
        {
            InitializeComponent();
        }

        void LoadData_QuyDanh()
        {
            DialogBox.ShowWaitForm();
            using (var db = new MasterDataContext())
            {
                try
                {
                    var query = from qd in db.ChucVus
                                select new
                                {
                                    MaChucVu = qd.MaChucVu,
                                    TenChucVu = qd.TenChucVu
                                };
                    gcChucVu.DataSource = query;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.Close();
                }

                if (gvChucVu.FocusedRowHandle == 0) gvChucVu.FocusedRowHandle = -1;
            }
            DialogBox.HideWaitForm();
        }

        void Xoa(int maChucVu)
        {
            if (DialogBox.Question("Bạn có chắc chắn muốn xóa Chức vụ: <" + gvChucVu.GetFocusedRowCellValue(gridColumn2) + "> ra khỏi hệ thống không?") == DialogResult.Yes)
            {
                try
                {
                    DialogBox.ShowWaitForm();
                    using (var db = new MasterDataContext())
                    {
                        var query = from q in db.ChucVus where q.MaChucVu == Convert.ToInt32(gvChucVu.GetFocusedRowCellValue(gridColumn1).ToString()) select q;
                        foreach (var del in query)
                        {
                            db.ChucVus.DeleteOnSubmit(del);
                        }
                        db.SubmitChanges();
                    }
                    gvChucVu.DeleteSelectedRows();
                }
                catch
                {
                    DialogBox.HideWaitForm();
                    DialogBox.Infomation("Xóa không thành công vì Chức vụ: <" + gvChucVu.GetFocusedRowCellValue(gridColumn2) + "> đã được sử dụng. Vui lòng kiểm tra lại.");
                }
                DialogBox.HideWaitForm();
            }
        }

        void Edit()
        {
            if (gvChucVu.GetFocusedRowCellValue(gridColumn1) != null)
            {
                f_Them_Sua_ChucVu d = new f_Them_Sua_ChucVu();
                d.Text = "Thông tin quý danh";
                d.MaChucVuNV = Convert.ToInt32(gvChucVu.GetFocusedRowCellValue(gridColumn1).ToString());
                d.ShowDialog();

                if (d.isYesNo == true)
                    LoadData_QuyDanh();
            }
            else
                DialogBox.Infomation("Vui lòng chọn [Chức vụ] cần sửa. Xin cảm ơn");
        }

        private void f_ChucVu_Load(object sender, EventArgs e)
        {
            LoadData_QuyDanh();
        }
        
        private void barButtonItem_Xoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gvChucVu.GetFocusedRowCellValue(gridColumn1) != null)
            {
                Xoa(Convert.ToInt32(gvChucVu.GetFocusedRowCellValue(gridColumn1).ToString()));
            }
            else
                DialogBox.Infomation("Vui lòng chọn [Chức vụ] cần xóa. Xin cảm ơn");
        }

        private void barButtonItem_Them_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            f_Them_Sua_ChucVu d = new f_Them_Sua_ChucVu();
            d.Text = "Thêm chức vụ";
            d.ShowDialog();

            if (d.isYesNo == true)
                LoadData_QuyDanh();
        }

        private void barButtonItem_Sua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Edit();
        }

        private void barButtonItem_Nap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}