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
                                   keypc.SoLuong,
                                   keypc.KichHoat,
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
            var f = new f_Them_Sua_Key();
            f.Text = "Thêm Key PC";
            f.ShowDialog();
            if (f.DialogResult == DialogResult.OK)
            {
                LoadData();
                gvPc.Columns.Clear();
            }
        }
        void Sua()
        {
            try
            {
                string maKey = gvKey.GetFocusedRowCellValue("KeyComputer").ToString();

                var f = new f_Them_Sua_Key();
                f.Text = "Sửa Key PC";
                f.maKey = maKey;
                f.ShowDialog();
                if (f.DialogResult == DialogResult.OK)
                {
                    LoadData();
                    gvPc.Columns.Clear();
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

            try
            {
                string k = gvKey.GetFocusedRowCellValue("KeyComputer").ToString();
                LoadPc(k);
            }
            catch (Exception)
            {
                gvPc.Columns.Clear();
            }
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
            if (gvKey.GetFocusedRowCellValue("RowID") != null)
            {
                if (DialogBox.Question("Bạn có chắc chắn muốn xóa \n Key: <" + gvKey.GetFocusedRowCellValue("KeyComputer") + "> \n ra khỏi hệ thống không ?") == DialogResult.Yes)
                {
                    try
                    {
                        using (var db = new MasterDataContext())
                        {
                            var queryKeyPCs = from KeyPCs in db.KeyPCs
                                                 where KeyPCs.RowID == Convert.ToInt32(gvKey.GetFocusedRowCellValue("RowID"))
                                                 select KeyPCs;
                            foreach (var del in queryKeyPCs)
                            {
                                db.KeyPCs.DeleteOnSubmit(del);
                            }
                            db.SubmitChanges();
                        }
                        gvKey.DeleteSelectedRows();
                    }
                    catch(Exception x)
                    {
                        DialogBox.Infomation("Key: <" + gvKey.GetFocusedRowCellValue("KeyComputer") + "> \n Xóa không thành công. Vui lòng kiểm tra lại. \n\n " + x);
                    }
                }
            }
            else
                DialogBox.Infomation("Vui lòng chọn nhân viên cần xóa. Xin cảm ơn");
        }

        private void gvKey_RowClick(object sender, DevExpress.XtraGrid.Views.Grid.RowClickEventArgs e)
        {
            try
            {
                string k = gvKey.GetFocusedRowCellValue("KeyComputer").ToString();
                LoadPc(k);
            }
            catch (Exception)
            {
                gvPc.Columns.Clear();
            }
        }

        private void gvKey_DoubleClick(object sender, EventArgs e)
        {
            Sua();
        }

        private void LoadPc(string k)
        {
            using (var db = new MasterDataContext())
            {
                try
                {
                    var load = from pc in db.PCs
                               where pc.KeyComputer == k
                               select new
                               {
                                   pc.RowID,
                                   pc.KeyComputer,
                                   pc.TenMay,
                                   pc.Lock,
                                   pc.NgayKichHoat,
                                   pc.NgayHetHan,
                                   pc.GhiChu
                               };

                    gcPc.DataSource = load;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (gvPc.FocusedRowHandle == 0) gvPc.FocusedRowHandle = -1;
                gvPc.BestFitColumns();
            }
        }

        private void gvPc_MouseUp(object sender, MouseEventArgs e)
        {
            if (e.Button == MouseButtons.Right)
                popupMenu1.ShowPopup(Control.MousePosition);
        }

        private void barButtonItem_Xoa_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            if (gvPc.GetFocusedRowCellValue("RowID") != null)
            {
                if (DialogBox.Question("Bạn có chắc chắn muốn xóa \n PC: <" + gvPc.GetFocusedRowCellValue("TenMay") + "> \n ra khỏi hệ thống không ?") == DialogResult.Yes)
                {
                    try
                    {
                        using (var db = new MasterDataContext())
                        {
                            var queryPCs = from PCs in db.PCs
                                              where PCs.RowID == Convert.ToInt32(gvPc.GetFocusedRowCellValue("RowID"))
                                              select PCs;
                            foreach (var del in queryPCs)
                            {
                                db.PCs.DeleteOnSubmit(del);
                            }
                            db.SubmitChanges();
                        }
                        gvPc.DeleteSelectedRows();
                    }
                    catch (Exception x)
                    {
                        DialogBox.Infomation("PC: <" + gvPc.GetFocusedRowCellValue("TenMay") + "> \n Xóa không thành công. Vui lòng kiểm tra lại. \n\n " + x);
                    }
                }
            }
            else
                DialogBox.Infomation("Vui lòng chọn PC cần xóa. Xin cảm ơn");
        }

        private void barButtonItem_Sua_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {

        }
    }
}
