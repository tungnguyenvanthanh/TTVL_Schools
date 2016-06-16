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
    public partial class f_QuyDanh : DevExpress.XtraEditors.XtraForm
    {
        public f_QuyDanh()
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
                    var query = from qd in db.QuyDanhs select new
                    {
                        MaQuyDanh = qd.MaQuyDanh,
                        TenQuyDanh = qd.TenQuyDanh
                    };
                    gcQuyDanh.DataSource = query;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    this.Close();
                }
                
                if (gvQuyDanh.FocusedRowHandle == 0) gvQuyDanh.FocusedRowHandle = -1;
            }
            DialogBox.HideWaitForm();
        }

        void Edit()
        {
            if (gvQuyDanh.GetFocusedRowCellValue(gridColumn1) != null)
            {
                f_Them_Sua_QuyDanh d = new f_Them_Sua_QuyDanh();
                d.Text = "Thông tin quý danh";
                d.MaQuyDanhNV = Convert.ToInt32(gvQuyDanh.GetFocusedRowCellValue(gridColumn1).ToString());
                d.ShowDialog();

                if (d.isYesNo == true)
                    LoadData_QuyDanh();
            }
            else
                DialogBox.Infomation("Vui lòng chọn [Quý danh] cần sửa. Xin cảm ơn");
        }

        void Xoa(int maQuyDanh)
        {
            if (DialogBox.Question("Bạn có chắc chắn muốn xóa Quý danh: <" + gvQuyDanh.GetFocusedRowCellValue(gridColumn2) + "> ra khỏi hệ thống không?") == DialogResult.Yes)
            {
                try
                {
                    DialogBox.ShowWaitForm();
                    using (var db = new MasterDataContext())
                    {
                        var queryQuyDanhs = from q in db.QuyDanhs where q.MaQuyDanh == Convert.ToInt32(gvQuyDanh.GetFocusedRowCellValue(gridColumn1).ToString()) select q;
                        foreach (var del in queryQuyDanhs)
                        {
                            db.QuyDanhs.DeleteOnSubmit(del);
                        }
                        db.SubmitChanges();
                    }
                    gvQuyDanh.DeleteSelectedRows();
                }
                catch
                {
                    DialogBox.HideWaitForm();
                    DialogBox.Infomation("Xóa không thành công vì Quý danh: <" + gvQuyDanh.GetFocusedRowCellValue(gridColumn2) + "> đã được sử dụng. Vui lòng kiểm tra lại.");
                }
                DialogBox.HideWaitForm();
            }
        }

        private void f_QuyDanh_Load(object sender, EventArgs e)
        {
            LoadData_QuyDanh();
        }

        private void barButtonItem_Them_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            f_Them_Sua_QuyDanh d = new f_Them_Sua_QuyDanh();
            d.Text = "Thêm quý danh";
            d.ShowDialog();

            if (d.isYesNo == true)
                LoadData_QuyDanh();
        }

        private void barButtonItem_Sua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Edit();
        }
        
        private void barButtonItem_Xoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gvQuyDanh.GetFocusedRowCellValue(gridColumn1) != null)
            {
                Xoa(Convert.ToInt32(gvQuyDanh.GetFocusedRowCellValue(gridColumn1).ToString()));
            }
            else
                DialogBox.Infomation("Vui lòng chọn [Quý danh] cần xóa. Xin cảm ơn");
        }

        private void barButtonItem_Nap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}