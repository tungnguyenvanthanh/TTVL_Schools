﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraCharts.Native;
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
                dateNgaySinh.Text = DateTime.Today.ToString();
                dateNgayCap.Text = DateTime.Today.ToString();
                
                #region Auto Mã nhân viên
                string autoMaNv = "";
                using (var f = new MasterDataContext())
                {
                    int max = f.NhanViens.Count(p => p.MaNhanVien != "Admin");
                    autoMaNv = $"NV-{DateTime.Now:ddMMyyyy}-{++max:d4}";
                    while (KTmax(autoMaNv))
                    {
                        autoMaNv = $"NV-{DateTime.Now:ddMMyyyy}-{++max:d4}";
                    }
                }
                txtMaNV.Text = autoMaNv;
                #endregion;

                db.NhanViens.InsertOnSubmit(objNhanVien);
            }
        }

        bool KTmax(string a)
        {
            bool kt = true;
            using (var f = new MasterDataContext())
            {
                if (f.NhanViens.FirstOrDefault(p => p.MaNhanVien == a) == null)
                {
                    kt = false;
                }
            }
            return kt;
        }

        void LoadDuLieu(string maNV)
        {
            using (var dbDuLieu = new MasterDataContext())
            {
                var load = from nv in dbDuLieu.NhanViens

                           join cv in dbDuLieu.ChucVus on nv.MaChucVu equals cv.MaChucVu
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
                               nv.MatKhau,
                               nv.Lock,
                               nv.GhiChu,

                               tqd.TenQuyDanh,
                               cv.TenChucVu,
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
                    lookUpEdit_ChucVu.Properties.NullText = l.TenChucVu;
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
                if (txtHoVaTen.Text.Trim() == "")
                {
                    DialogBox.Error("Vui lòng nhập [Họ và tên], xin cảm ơn");
                    txtHoVaTen.Focus();
                    return;
                }

                if (txtTaiKhoan.Text.Trim() == "")
                {
                    DialogBox.Error("Vui lòng nhập [Tên tài khoản], xin cảm ơn");
                    txtTaiKhoan.Focus();
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
                    if (MaNv == null) { objNhanVien.MatKhau = MyCodeTTVL.MaHoaMd5($"{txtTaiKhoan.Text}{txtTaiKhoan.Text}P@ssword09113van"); }
                    objNhanVien.Email = txtEmail.Text;
                    objNhanVien.SoDienThoai = txtDienThoai.Text;
                    objNhanVien.Lock = checkKhoaTaiKhoan.Checked;

                    if (Convert.ToInt32(lookUpEdit_QuyDanh.GetColumnValue("MaQuyDanh")) != 0)
                        objNhanVien.MaQuyDanh = Convert.ToInt32(lookUpEdit_QuyDanh.GetColumnValue("MaQuyDanh"));
                    if (Convert.ToInt32(lookUpEdit_ChucVu.GetColumnValue("MaChucVu")) != 0)
                        objNhanVien.MaChucVu = Convert.ToInt32(lookUpEdit_ChucVu.GetColumnValue("MaChucVu"));
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