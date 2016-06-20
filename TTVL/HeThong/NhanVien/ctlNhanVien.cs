using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using TTVL_DLL;

namespace TTVL.HeThong.NhanVien
{
    public partial class ctlNhanVien : System.Windows.Forms.UserControl
    {
        public ctlNhanVien()
        {
            InitializeComponent();
        }

        void LoadData_ThongTinNhanVien()
        {
            using (var db = new MasterDataContext())
            {
                try
                {
                    var nhanvien = from nv in db.NhanViens

                                   join cv in db.ChucVus on nv.MaChuVu equals cv.MaChucVu
                                       into mcv
                                   from cv in mcv.DefaultIfEmpty()

                                   join qd in db.QuyDanhs on nv.MaQuyDanh equals qd.MaQuyDanh
                                       into mqd
                                   from tqd in mqd.DefaultIfEmpty()

                                   join nvQl1 in db.NhanViens on nv.QuanLy1 equals nvQl1.MaNhanVien
                                       into mql1
                                   from nvQl1 in mql1.DefaultIfEmpty()

                                   join nvQl2 in db.NhanViens on nv.QuanLy2 equals nvQl2.MaNhanVien
                                       into mql2
                                   from nvQl2 in mql2.DefaultIfEmpty()

                                   where nv.MaNhanVien != "Admin"

                                   select new
                                   {
                                       nv.MaNhanVien,
                                       tqd.TenQuyDanh,
                                       nv.HoVaTen,
                                       nv.GioiTinh,
                                       nv.NgaySinh,
                                       nv.CMND,
                                       nv.NgayCap,
                                       nv.NoiCap,
                                       nv.QueQuan,
                                       nv.DiaChiThuongTru,
                                       nv.Email,
                                       nv.SoDienThoai,
                                       cv.TenChuVu,
                                       nv.TaiKhoan,
                                       QL_1 = nvQl1.HoVaTen,
                                       QL_2 = nvQl2.HoVaTen,
                                       nv.Lock
                                   };

                    gcNhanVien.DataSource = nhanvien;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (gvNhanVien.FocusedRowHandle == 0) gvNhanVien.FocusedRowHandle = -1;
                gvNhanVien.BestFitColumns();
            }
        }

        void LoadData_LichSuNhanVien()
        {

        }

        private void ctlNhanVien_Load(object sender, EventArgs e)
        {
            LoadData_ThongTinNhanVien();
        }

        private void barButtonItem_Sua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Sua();
        }

        private void barButtonItem_Them_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Them();
        }

        void Them()
        {
            var f = new f_Them_Sua_NhanVien();
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                LoadData_ThongTinNhanVien();
            }
        }

        void Sua()
        {
            try
            {
                string maNV = gvNhanVien.GetFocusedRowCellValue("MaNhanVien").ToString();

                var f = new f_Them_Sua_NhanVien();
                f.MaNv = maNV;
                f.ShowDialog();
                if (f.DialogResult == DialogResult.OK)
                {
                    LoadData_ThongTinNhanVien();
                }
            }
            catch (Exception)
            {
                DialogBox.Error("Vui lòng chọn [Nhân viên] cần sửa, xin cám ơn");
            }
            
        }

        private void barButtonItem_Xoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gvNhanVien.GetFocusedRowCellValue("MaNhanVien") != null)
            {
                if (DialogBox.Question("Bạn có chắc chắn muốn xóa nhân viên: <" + gvNhanVien.GetFocusedRowCellValue("MaNhanVien") + "> ra khỏi hệ thống không ?") == DialogResult.Yes)
                {
                    try
                    {
                        using (var db = new MasterDataContext())
                        {
                            var queryNhanViens = from NhanViens in db.NhanViens
                                                 where NhanViens.MaNhanVien == gvNhanVien.GetFocusedRowCellValue("MaNhanVien").ToString()
                                                 select NhanViens;
                            foreach (var del in queryNhanViens)
                            {
                                db.NhanViens.DeleteOnSubmit(del);
                            }
                            db.SubmitChanges();
                        }
                        gvNhanVien.DeleteSelectedRows();
                    }
                    catch
                    {
                        DialogBox.Infomation("Xóa không thành công vì nhân viên: <" + gvNhanVien.GetFocusedRowCellValue("MaNhanVien") + "> đã được sử dụng. Vui lòng kiểm tra lại.");
                    }
                }
            }
            else
                DialogBox.Infomation("Vui lòng chọn nhân viên cần xóa. Xin cảm ơn");
        }

        private void barButtonItem_Nap_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            LoadData_ThongTinNhanVien();
        }
    }
}
