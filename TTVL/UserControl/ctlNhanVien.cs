using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Drawing;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TTVL.UserControl
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
                    gcNhanVien.DataSource = (from nv in db.NhanViens
                    join cv in db.ChucVus on nv.MaChucVu equals cv.MaChucVu
                    select new
                    {
                        nv.MaSo,
                        nv.HoVaTen,
                        nv.NgaySinh,
                        nv.CMND,
                        nv.NgayCap,
                        nv.DiaChi,
                        nv.GioiTinh,
                        cv.TenChucVu
                    }).ToList();
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (gvNhanVien.FocusedRowHandle == 0) gvNhanVien.FocusedRowHandle = -1;
            }
        }

        void LoadData_LichSuNhanVien()
        {
            
        }

        private void ctlNhanVien_Load(object sender, EventArgs e)
        {
            LoadData_ThongTinNhanVien();
        }
    }
}
