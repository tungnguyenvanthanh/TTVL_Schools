using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars.Docking2010.Views.WindowsUI;
using DevExpress.XtraEditors;
using TTVL_DLL;

namespace Login_TTVL
{
    public partial class f_Them_Sua : DevExpress.XtraEditors.XtraForm
    {
        public string maKey { get; set; }
        private KeyPC objKeyPC;
        private MasterDataContext db;
        public bool iSo { get; set; }

        public f_Them_Sua()
        {
            InitializeComponent();
            db = new MasterDataContext();
            LoadDataCobobox();
        }

        void LoadDataCobobox()
        {
            using (var dbLookUp = new MasterDataContext())
            {
                #region load lookUpEdit loại key
                var tbLoaiKey = (from tableLoaiKeys in dbLookUp.LoaiKeys
                                 select tableLoaiKeys).ToList();

                lookUpEdit_LoaiKEY.Properties.DataSource = tbLoaiKey;
                #endregion
            }
        }

        private void f_Them_Sua_Load(object sender, EventArgs e)
        {
            if (maKey != null)
            {
                objKeyPC = db.KeyPCs.SingleOrDefault(p => p.KeyComputer == maKey);

                if (objKeyPC != null)
                {
                    LoadDuLieu(maKey); // load dữ liệu
                }
                else
                {
                    DialogBox.Error("[Key] này không có trong hệ thống. Vui lòng kiểm tra lại, xin cảm ơn.");
                    this.Close();
                }
            }
            else
            {
                dateEdit_NgayHetHan.Properties.ReadOnly = true;
                objKeyPC = new KeyPC();
                txtKey.Text = MyCodeTTVL.MaHoaMd5($"{DateTime.Now}TTVLThanhtungP@ssword");
                db.KeyPCs.InsertOnSubmit(objKeyPC);
            }
        }

        private void bt_Luu_Click(object sender, EventArgs e)
        {
            if (DialogBox.Question("Bạn có chắc chắn muốn lưu ?") == DialogResult.Yes)
            {
                try
                {
                    objKeyPC.KeyComputer = txtKey.Text;
                    if(dateEdit_NgayKichHoat.Text != "")
                        objKeyPC.NgayKichHoat = dateEdit_NgayKichHoat.DateTime;
                    if(dateEdit_NgayHetHan.Text != "")
                        objKeyPC.NgayHetHan = dateEdit_NgayHetHan.DateTime;
                    objKeyPC.Lock = checkEdit_Khoa.Checked;
                    objKeyPC.GhiChu = memoEdit_GhiChu.Text;
                    if (Convert.ToInt32(lookUpEdit_LoaiKEY.GetColumnValue("RowID")) != 0)
                        objKeyPC.IDKey = Convert.ToInt32(lookUpEdit_LoaiKEY.GetColumnValue("RowID"));
                    else
                    {
                        if (!iSo)
                        {
                            DialogBox.Error("Vui lòng chọn [Loại Key], xin cảm ơn");
                            lookUpEdit_LoaiKEY.Focus();
                            return;
                        }
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

        void LoadDuLieu(string maRow)
        {
            using (var dbDuLieu = new MasterDataContext())
            {
                var load = from keypc in dbDuLieu.KeyPCs

                           join loaikey in dbDuLieu.LoaiKeys on keypc.IDKey equals loaikey.RowID
                               into makey
                           from loaikey in makey.DefaultIfEmpty()

                           where keypc.KeyComputer == maRow

                           select new
                           {
                               keypc.KeyComputer,
                               loaikey.Loai,
                               keypc.NgayKichHoat,
                               keypc.NgayHetHan,
                               keypc.Lock,
                               keypc.GhiChu
                           };
                foreach (var l in load)
                {
                    txtKey.Text = l.KeyComputer;
                    lookUpEdit_LoaiKEY.Properties.NullText = l.Loai;
                    dateEdit_NgayKichHoat.Text = l.NgayKichHoat.ToString();
                    dateEdit_NgayHetHan.Text = l.NgayHetHan.ToString();
                    memoEdit_GhiChu.Text = l.GhiChu;
                    try
                    {
                        checkEdit_Khoa.Checked = (bool)l.Lock;
                    }
                    catch (Exception)
                    {
                        // ignored
                    }
                }
            }
        }
    }
}