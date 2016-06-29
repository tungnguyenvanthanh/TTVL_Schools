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

namespace Login_TTVL
{
    public partial class f_Them_Sua : DevExpress.XtraEditors.XtraForm
    {
        public string maRow { get; set; }
        private Login objLogin;
        private MasterDataContext db;
        public f_Them_Sua()
        {
            InitializeComponent();
            db = new MasterDataContext();
        }
    }
}