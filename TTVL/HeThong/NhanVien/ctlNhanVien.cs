using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

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
                                   join qd in db.QuyDanhs on nv.MaQuyDanh equals qd.MaQuyDanh
                                   join cv in db.ChucVus on nv.MaChuVu equals cv.MaChucVu
                                   select new
                        {
                            Ma_Nhan_Vien = nv.MaNhanVien,
                            Quy_Danh = qd.TenQuyDanh,
                            Ho_Ten = nv.Ho + " " + nv.Ten,
                            Goi_Tinh = nv.GioiTinh,
                            Ngay_Sinh = nv.NgaySinh,
                            C_M_N_D = nv.CMND,
                            Ngay_Cap = nv.NgayCap,
                            Noi_Cap = nv.NoiCap,
                            Que_Quan = nv.QueQuan,
                            Dia_Chi_Thuong_Tru = nv.DiaChiThuongTru,
                            Mail = nv.Email,
                            So_DT = nv.SoDienThoai,
                            Chuc_Vu = cv.TenChuVu
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

        }
    }
}
