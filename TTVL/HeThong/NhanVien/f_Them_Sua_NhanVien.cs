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
                                   tableNhanVienQLs.Ten
                               };

                cbbQL1.Properties.Items.Clear();
                cbbQL2.Properties.Items.Clear();

                if (tbNhanVienQL != null)
                {
                    foreach (var tbnhanvienql in tbNhanVienQL)
                    {
                        try
                        {
                            cbbQL1.Properties.Items.Add(tbnhanvienql.Ten);
                            cbbQL2.Properties.Items.Add(tbnhanvienql.Ten);
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
    }
}