﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace TTVL.Form
{
    public partial class Form1 : System.Windows.Forms.Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            using (var db = new MasterDataContext())
            {
                NhanVien nv = new NhanVien();
                nv.MaNhanVien = txtMaNhanVien.Text;
                nv.TaiKhoan = txtTenDangNhap.Text;
                nv.MatKhau = txtTenDangNhap.Text;
                db.NhanViens.InsertOnSubmit(nv);
                db.SubmitChanges();
                MessageBox.Show("Tạo thành công", "Thông báo");
            }
        }
    }
}