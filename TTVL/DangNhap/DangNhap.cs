﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Linq;
using System.Threading.Tasks;
using System.Windows.Forms;
using DevExpress.XtraBars;
using TTVL_DLL;

namespace TTVL.DangNhap
{
    public partial class DangNhap : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public DangNhap()
        {
            InitializeComponent();
            txtTaiKhoan.Text = Properties.Settings.Default.TaiKhoan;
            txtMatKhau.Text = Properties.Settings.Default.MatKhau;
            CheckGhiNho.Checked = Properties.Settings.Default.Check;
        }

        void Login()
        {
            if (txtTaiKhoan.Text.Equals(""))
            {
                DialogBox.Error("Xin vui lòng nhập [Mã số], xin cám ơn");
                txtTaiKhoan.Focus();
                return;
            }

            if (txtMatKhau.Text.Equals(""))
            {
                DialogBox.Error("Xin vui lòng nhập [Mật khẩu], xin cám ơn");
                txtMatKhau.Focus();
                return;
            }

            using (var db = new MasterDataContext())
            {
                var QueryIP = db.NhanViens.SingleOrDefault(p => p.TaiKhoan == txtTaiKhoan.Text && p.MatKhau == txtMatKhau.Text);

                if (QueryIP == null)
                {
                    DialogBox.Error("[Tài khoản] hoặc [Mật khẩu] không đúng, xin vui lòng kiểm tra lại");
                }
                else
                {
                    if (CheckGhiNho.Checked)
                    {
                        Properties.Settings.Default.TaiKhoan = txtTaiKhoan.Text;
                        Properties.Settings.Default.MatKhau = txtMatKhau.Text;
                        Properties.Settings.Default.Check = CheckGhiNho.Checked;
                        Properties.Settings.Default.Save();
                    }
                    else
                    {
                        Properties.Settings.Default.TaiKhoan = "";
                        Properties.Settings.Default.MatKhau = "";
                        Properties.Settings.Default.Check = CheckGhiNho.Checked;
                        Properties.Settings.Default.Save();
                    }
                    this.DialogResult = DialogResult.OK;
                }
            }
        }
        private void btDangNhap_Click(object sender, EventArgs e)
        {
            Login();
        }

        private void btLienHe_ItemClick(object sender, ItemClickEventArgs e)
        {
            System.Diagnostics.Process.Start("http://thanhtungttvl.somee.com/html.html");
        }

        private void btQuenMatKhau_ItemClick(object sender, ItemClickEventArgs e)
        {

        }

        protected override bool ProcessCmdKey(ref Message msg, Keys keyData)
        {
            if (keyData == Keys.Enter)
            {
                Login();
            }
            return base.ProcessCmdKey(ref msg, keyData);
        }
    }
}