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

namespace TTVL.HeThong.NhanVien
{
    public partial class f_Them_Sua_NhanVien : DevExpress.XtraEditors.XtraForm
    {
        public string MaNv { get; set; }
        private TTVL.NhanVien objNhanVien;
        private MasterDataContext db;

        public f_Them_Sua_NhanVien()
        {
            InitializeComponent();
            db = new MasterDataContext();
            LoadDataCobobox();
        }

        void LoadDataCobobox()
        {
            using (var dbCombobox = new MasterDataContext())
            {
                // load comboBox quý danh
                var tbQuyDanh = from tableQuyDanhs in dbCombobox.QuyDanhs
                                 select new
                                 {
                                     tableQuyDanhs.MaQuyDanh,
                                     tableQuyDanhs.TenQuyDanh
                                 };

                cbbQuyDanh.Properties.Items.Clear();

                if (tbQuyDanh != null)
                {
                    foreach (var tbchinhanh in tbQuyDanh)
                    {
                        cbbQuyDanh.Properties.Items.Add(tbchinhanh.TenQuyDanh);
                    }
                }

                // load comboBox chức vụ
                var tbChucVu = from tableChucVus in dbCombobox.ChucVus
                                select new
                                {
                                    tableChucVus.MaChucVu,
                                    tableChucVus.TenChuVu
                                };

                cbbChucVu.Properties.Items.Clear();

                if (tbChucVu != null)
                {
                    foreach (var tbchucvu in tbChucVu)
                    {
                        cbbChucVu.Properties.Items.Add(tbchucvu.TenChuVu);
                    }
                }
                    
                // load comboBox QL
                var tbNhanVienQL = from tableNhanVienQLs in dbCombobox.NhanViens
                               select new
                               {
                                   tableNhanVienQLs.MaNhanVien,
                                   tableNhanVienQLs.HoVaTen
                               };

                cbbQL1.Properties.Items.Clear();
                cbbQL2.Properties.Items.Clear();

                if (tbNhanVienQL != null)
                {
                    foreach (var tbnhanvienql in tbNhanVienQL)
                    {
                        try
                        {
                            cbbQL1.Properties.Items.Add(tbnhanvienql.HoVaTen);
                            cbbQL2.Properties.Items.Add(tbnhanvienql.HoVaTen);
                        }
                        catch (Exception)
                        {
                            
                        }
                    }
                }
            }
        }

        private void f_Them_Sua_NhanVien_Load(object sender, EventArgs e)
        {

        }

        void LoadDuLieu(string maNV)
        {
            using (var dbDuLieu = new MasterDataContext())
            {
                var load = from nv in dbDuLieu.NhanViens

                           join cv in dbDuLieu.ChucVus on nv.MaChuVu equals cv.MaChucVu
                               into mcv
                           from cv in mcv.DefaultIfEmpty()

                           join qd in dbDuLieu.QuyDanhs on nv.MaQuyDanh equals qd.MaQuyDanh
                               into mqd
                           from tqd in mqd.DefaultIfEmpty()

                           join nvQl1 in dbDuLieu.NhanViens on nv.QuanLy1 equals nvQl1.MaNhanVien
                               into mql1
                           from nvQl1 in mql1.DefaultIfEmpty()

                           join nvQl2 in dbDuLieu.NhanViens on nv.QuanLy2 equals nvQl2.MaNhanVien
                               into mql2
                           from nvQl2 in mql2.DefaultIfEmpty()

                           where nv.MaNhanVien == maNV

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
                               nv.GhiChu,
                               nvQl1.QuanLy1,
                               nvQl2.QuanLy2
                           };
                foreach (var l in load)
                {
                    txtMaNV.Text = l.MaNhanVien;
                    cbbQuyDanh.Text = l.TenQuyDanh;
                    txtHoVaTen.Text = l.HoVaTen;
                    txtGioiTinh.Text = l.GioiTinh;
                    dateNgaySinh.Text = l.NgaySinh.ToString();
                    txtCMND.Text = l.CMND;
                    dateNgayCap.Text = l.NgayCap.ToString();
                    txtNoiCap.Text = l.NoiCap;
                    txtQueQuan.Text = l.QueQuan;
                    txtThuongTru.Text = l.DiaChiThuongTru;
                    txtEmail.Text = l.Email;
                    txtDienThoai.Text = l.SoDienThoai;
                    cbbChucVu.Text = l.TenChuVu;
                    txtTaiKhoan.Text = l.TaiKhoan;
                    memoEditGhiChu.Text = l.GhiChu;
                    
                    var QL1 = dbDuLieu.NhanViens.SingleOrDefault(p => l.QuanLy1 == p.MaNhanVien);
                    try
                    {
                        cbbQL1.Text = QL1.HoVaTen;
                    }
                    catch (Exception)
                    {
                        break;
                    }
                    var QL2 = dbDuLieu.NhanViens.SingleOrDefault(p => l.QuanLy2 == p.MaNhanVien);
                    try
                    {
                        cbbQL2.Text = QL2.HoVaTen;
                    }
                    catch (Exception)
                    {
                        break;
                    }

                }
            }
        }
    }
}