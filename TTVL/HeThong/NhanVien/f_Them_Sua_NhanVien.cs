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
using DevExpress.XtraEditors.Internal;
using DevExpress.XtraGrid;
using TTVL.App_Codes;
using TTVL_DLL;

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
            using (var dbLookUp = new MasterDataContext())
            {
                #region load lookUpEdit quý danh
                var tbQuyDanh = (from tableQuyDanhs in dbLookUp.QuyDanhs
                    select tableQuyDanhs).ToList();

                lookUpEdit_QuyDanh.Properties.DataSource = tbQuyDanh;
                #endregion

                #region load lookUpEdit chức vụ

                var tbChucVu = (from tableChucVus in dbLookUp.ChucVus
                    select tableChucVus).ToList();

                lookUpEdit_ChucVu.Properties.DataSource = tbChucVu;
                #endregion

                #region load lookUpEdit QL

                var tbNhanVienQL = (from tableNhanVienQLs in dbLookUp.NhanViens
                    select tableNhanVienQLs).ToList();

                lookUpEdit_QL1.Properties.DataSource = tbNhanVienQL;
                lookUpEdit_QL2.Properties.DataSource = tbNhanVienQL;
                #endregion
            }
        }

        private void f_Them_Sua_NhanVien_Load(object sender, EventArgs e)
        {
            if (MaNv != null)
            {
                objNhanVien = db.NhanViens.SingleOrDefault(p => p.MaNhanVien == MaNv);

                if (objNhanVien != null)
                {
                    LoadDuLieu(MaNv); // load dữ liệu
                }
                else
                {
                    DialogBox.Error("[Nhân viên] này không có trong hệ thống. Vui lòng kiểm tra lại, xin cảm ơn.");
                    this.Close();
                }
            }
            else
            {
                objNhanVien = new TTVL.NhanVien();
                db.NhanViens.InsertOnSubmit(objNhanVien);
            }
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
                               nv.TaiKhoan,
                               nv.Lock,
                               nv.GhiChu,

                               tqd.TenQuyDanh,
                               cv.TenChuVu,
                               QL_1 = nvQl1.HoVaTen,
                               QL_2 = nvQl2.HoVaTen
                           };
                foreach (var l in load)
                {
                    txtMaNV.Text = l.MaNhanVien;
                    txtHoVaTen.Text = l.HoVaTen;
                    cbbGioiTinh.Text = l.GioiTinh;
                    dateNgaySinh.Text = l.NgaySinh.ToString();
                    txtCMND.Text = l.CMND;
                    dateNgayCap.Text = l.NgayCap.ToString();
                    txtNoiCap.Text = l.NoiCap;
                    txtQueQuan.Text = l.QueQuan;
                    txtThuongTru.Text = l.DiaChiThuongTru;
                    txtEmail.Text = l.Email;
                    txtDienThoai.Text = l.SoDienThoai;
                    txtTaiKhoan.Text = l.TaiKhoan;
                    memoEditGhiChu.Text = l.GhiChu;

                    lookUpEdit_QuyDanh.Properties.NullText = l.TenQuyDanh;
                    lookUpEdit_ChucVu.Properties.NullText = l.TenChuVu;
                    lookUpEdit_QL1.Properties.NullText = l.QL_1;
                    lookUpEdit_QL2.Properties.NullText = l.QL_2;
                    try
                    {
                        checkKhoaTaiKhoan.Checked = (bool)l.Lock;
                    }
                    catch (Exception)
                    {
                        // ignored
                    }
                }
            }
        }

        private void btLuu_Click(object sender, EventArgs e)
        {
            if (DialogBox.Question("Bạn có chắc chắn muốn lưu ?") == DialogResult.Yes)
            {
                if (txtMaNV.Text.Trim() == "")
                {
                    DialogBox.Error("Vui lòng nhập [Mã nhân viên], xin cảm ơn");
                    txtMaNV.Focus();
                    return;
                }

                if (txtHoVaTen.Text.Trim() == "")
                {
                    DialogBox.Error("Vui lòng nhập [Họ và tên], xin cảm ơn");
                    txtHoVaTen.Focus();
                    return;
                }

                try
                {
                    objNhanVien.HoVaTen = txtHoVaTen.Text;
                    objNhanVien.GioiTinh = cbbGioiTinh.Text;
                    objNhanVien.NgaySinh = dateNgaySinh.DateTime;
                    objNhanVien.CMND = txtCMND.Text;
                    objNhanVien.NgayCap = dateNgayCap.DateTime;
                    objNhanVien.NoiCap = txtNoiCap.Text;
                    objNhanVien.QueQuan = txtQueQuan.Text;
                    objNhanVien.DiaChiThuongTru = txtThuongTru.Text;
                    objNhanVien.MaNhanVien = txtMaNV.Text;
                    objNhanVien.TaiKhoan = txtTaiKhoan.Text;
                    objNhanVien.Email = txtEmail.Text;
                    objNhanVien.SoDienThoai = txtDienThoai.Text;
                    objNhanVien.Lock = checkKhoaTaiKhoan.Checked;

                    if (Convert.ToInt32(lookUpEdit_QuyDanh.GetColumnValue("MaQuyDanh")) != 0)
                        objNhanVien.MaQuyDanh = Convert.ToInt32(lookUpEdit_QuyDanh.GetColumnValue("MaQuyDanh"));
                    if(Convert.ToInt32(lookUpEdit_ChucVu.GetColumnValue("MaChucVu")) != 0)
                        objNhanVien.MaChuVu = Convert.ToInt32(lookUpEdit_ChucVu.GetColumnValue("MaChucVu"));
                    try
                    {
                        objNhanVien.QuanLy1 = lookUpEdit_QL1.GetColumnValue("MaNhanVien").ToString();
                    }
                    catch (Exception)
                    {
                        // ignored
                    }
                    try
                    {
                        objNhanVien.QuanLy2 = lookUpEdit_QL2.GetColumnValue("MaNhanVien").ToString();
                    }
                    catch (Exception)
                    {
                        // ignored
                    }

                    db.SubmitChanges();
                    DialogBox.Infomation("Dữ liệu đã được cập nhật");
                    DialogResult = DialogResult.OK;
                }
                catch (Exception ex)
                {
                    DialogBox.Error("Đã có lỗi xảy ra. Code: " + ex.Message);
                }
            }
        }
    }
}