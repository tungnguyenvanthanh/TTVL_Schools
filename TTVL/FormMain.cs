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
using DevExpress.XtraTab;
using TTVL.Dialog;
using TTVL.UserControl;
using TTVL_DLL;

namespace TTVL
{//jdhzzzzzzzzzzzzz
    public partial class FormMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FormMain()
        {
            InitializeComponent();
        }

        // Đóng TabControl
        private void xtraTabControl_TTVL_CloseButtonClick(object sender, EventArgs e)
        {
            foreach (XtraTabPage tab in xtraTabControl_TTVL.TabPages)
            {
                if (tab.Text != " Home Main")
                {
                    DevExpress.XtraTab.ViewInfo.ClosePageButtonEventArgs arg = e as DevExpress.XtraTab.ViewInfo.ClosePageButtonEventArgs;
                    (arg.Page as XtraTabPage).Dispose();
                    return;
                }
            }
        }
        // Nhảy tới TabControl vừa mở
        private void xtraTabControl_TTVL_ControlAdded(object sender, ControlEventArgs e)
        {
            xtraTabControl_TTVL.SelectedTabPageIndex = xtraTabControl_TTVL.TabPages.Count - 1;
        }

        private void Item_HeThong_TaiKhoan_DanhMuc_Thoat_ItemClick(object sender, ItemClickEventArgs e)
        {
            Application.Exit();
        }

        private void Item_HeThong_TaiKhoan_DanhMuc_ThongTinTaiKhoan_ItemClick(object sender, ItemClickEventArgs e)
        {
            
        }

        private void Item_HeThong_NhanVien_DanhSach_ItemClick(object sender, ItemClickEventArgs e)
        {
            DialogBox.ShowWaitForm();
            int t = 0;
            foreach (XtraTabPage tab in xtraTabControl_TTVL.TabPages)
            {
                if (tab.Text == "Danh sách nhân viên")
                {
                    xtraTabControl_TTVL.SelectedTabPage = tab;
                    t = 1;
                }
            }
            if (t == 0)
            {
                AddTabPageToXtraTabControl add = new AddTabPageToXtraTabControl();
                add.Add(xtraTabControl_TTVL, -1, "Danh sách nhân viên", new ctlNhanVien());
            }
            DialogBox.HideWaitForm();
        }

        private void Item_HeThong_NhanVien_QuyDanh_ItemClick(object sender, ItemClickEventArgs e)
        {
            dialogQuyDanh quyDanh = new dialogQuyDanh();
            quyDanh.ShowDialog();
        }
    }
}
