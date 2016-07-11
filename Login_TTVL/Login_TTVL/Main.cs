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

namespace Login_TTVL
{
    public partial class Main : UserControl
    {
        public Main()
        {
            InitializeComponent();
        }
        void LoadData()
        {
            using (var db = new MasterDataContext())
            {
                try
                {
                    var load = from keypc in db.KeyPCs

                               join loaikey in db.LoaiKeys on keypc.IDKey equals loaikey.RowID
                                   into makey
                               from loaikey in makey.DefaultIfEmpty()

                               select new
                               {
                                   keypc.RowID,
                                   keypc.KeyComputer,
                                   loaikey.Loai,
                                   keypc.NgayKichHoat,
                                   keypc.NgayHetHan,
                                   keypc.Lock,
                                   keypc.GhiChu
                               };

                    gcKey.DataSource = load;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (gvKey.FocusedRowHandle == 0) gvKey.FocusedRowHandle = -1;
                gvKey.BestFitColumns();
            }
        }
        void Them()
        {
            var f = new f_Them_Sua();
            f.Text = "Thêm Key PC";
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                LoadData();
            }
        }
        void Sua()
        {
            try
            {
                string maKey = gvKey.GetFocusedRowCellValue("KeyComputer").ToString();

                var f = new f_Them_Sua();
                f.Text = "Sửa Key PC";
                f.maKey = maKey;
                f.ShowDialog();
                if (f.DialogResult == DialogResult.OK)
                {
                    LoadData();
                }
            }
            catch (Exception)
            {
                DialogBox.Error("Vui lòng chọn [Key PC] cần sửa, xin cám ơn");
            }
        }
        private void Main_Load(object sender, EventArgs e)
        {
            LoadData();
        }

        private void btThem_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Them();
        }

        private void btSua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            Sua();
        }

        private void btXoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gvKey.GetFocusedRowCellValue("KeyComputer") == null)
            {
                if (DialogBox.Question("Bạn có chắc chắn muốn xóa \n Key: <" + gvKey.GetFocusedRowCellValue("KeyComputer") + "> \n ra khỏi hệ thống không ?") == DialogResult.Yes)
                {
                    try
                    {
                        using (var db = new MasterDataContext())
                        {
                            var queryKeyPCs = from KeyPCs in db.KeyPCs
                                                 where KeyPCs.RowID == Convert.ToInt32(gvKey.GetFocusedRowCellValue("KeyComputer"))
                                                 select KeyPCs;
                            foreach (var del in queryKeyPCs)
                            {
                                db.KeyPCs.DeleteOnSubmit(del);
                            }
                            db.SubmitChanges();
                        }
                        gvKey.DeleteSelectedRows();
                    }
                    catch
                    {
                        DialogBox.Infomation("Key: <" + gvKey.GetFocusedRowCellValue("KeyComputer") + "> \n Xóa không thành công. Vui lòng kiểm tra lại.");
                    }
                }
            }
            else
                DialogBox.Infomation("Vui lòng chọn nhân viên cần xóa. Xin cảm ơn");
        }
    }
}
