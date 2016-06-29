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
                    var login = from l in db.Logins
                        select l;

                    gc.DataSource = login;
                }
                catch (Exception)
                {
                    MessageBox.Show("Kết nối server thất bại, hãy kiểm tra lại mạng Internet của bạn.", "Warning", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }
                if (gv.FocusedRowHandle == 0) gv.FocusedRowHandle = -1;
                gv.BestFitColumns();
            }
        }
        void Them()
        {
            var f = new f_Them_Sua();
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
                string maRow = gv.GetFocusedRowCellValue("RowID").ToString();

                var f = new f_Them_Sua();
                f.maRow = maRow;
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

        }
    }
}
