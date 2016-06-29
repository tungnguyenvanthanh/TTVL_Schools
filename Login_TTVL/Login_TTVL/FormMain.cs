using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using DevExpress.XtraTab;
using TTVL_DLL;

namespace Login_TTVL
{
    public partial class FormMain : DevExpress.XtraBars.Ribbon.RibbonForm
    {
        public FormMain()
        {
            InitializeComponent();
        }

        private void btDanhSach_ItemClick(object sender, DevExpress.XtraBars.ItemClickEventArgs e)
        {
            DialogBox.ShowWaitForm();
            int t = 0;
            foreach (XtraTabPage tab in xtraTabControl_Main.TabPages)
            {
                if (tab.Text == "Danh sách tài khoản")
                {
                    xtraTabControl_Main.SelectedTabPage = tab;
                    t = 1;
                }
            }
            if (t == 0)
            {
                MyCodeTTVL.AddTabPageToXtraTabControl(xtraTabControl_Main, 7, "Danh sách tài khoản", new Main());
            }
            DialogBox.HideWaitForm();
        }

        private void xtraTabControl_Main_CloseButtonClick(object sender, EventArgs e)
        {
            try
            {
                var closePageButtonEventArgs = e as DevExpress.XtraTab.ViewInfo.ClosePageButtonEventArgs;
                if (closePageButtonEventArgs != null)
                {
                    XtraTabPage page = (XtraTabPage)closePageButtonEventArgs.Page;
                    xtraTabControl_Main.TabPages.Remove(page);
                    xtraTabControl_Main.SelectedTabPageIndex = xtraTabControl_Main.TabPages.Count - 1;
                    GC.Collect();
                }
            }
            catch
            {
                // ignored
            }
        }

        private void xtraTabControl_Main_ControlAdded(object sender, ControlEventArgs e)
        {
            xtraTabControl_Main.SelectedTabPageIndex = xtraTabControl_Main.TabPages.Count - 1;
        }
    }
}
