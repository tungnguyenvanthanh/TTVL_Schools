namespace TTVL.UserControl
{
    partial class ctlNhanVien
    {
        /// <summary> 
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary> 
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Component Designer generated code

        /// <summary> 
        /// Required method for Designer support - do not modify 
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(ctlNhanVien));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.barButtonItem_Nap = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Them = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Sua = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Xoa = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Import = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Khoa = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem_Rest = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.imageCollection1 = new DevExpress.Utils.ImageCollection(this.components);
            this.barButtonItem8 = new DevExpress.XtraBars.BarButtonItem();
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.gcNhanVien = new DevExpress.XtraGrid.GridControl();
            this.gvNhanVien = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.gcLichSu = new DevExpress.XtraGrid.GridControl();
            this.gvLichSu = new DevExpress.XtraGrid.Views.Grid.GridView();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcNhanVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvNhanVien)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcLichSu)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvLichSu)).BeginInit();
            this.SuspendLayout();
            // 
            // barManager1
            // 
            this.barManager1.Bars.AddRange(new DevExpress.XtraBars.Bar[] {
            this.bar1});
            this.barManager1.DockControls.Add(this.barDockControlTop);
            this.barManager1.DockControls.Add(this.barDockControlBottom);
            this.barManager1.DockControls.Add(this.barDockControlLeft);
            this.barManager1.DockControls.Add(this.barDockControlRight);
            this.barManager1.Form = this;
            this.barManager1.Images = this.imageCollection1;
            this.barManager1.Items.AddRange(new DevExpress.XtraBars.BarItem[] {
            this.barButtonItem_Nap,
            this.barButtonItem_Them,
            this.barButtonItem_Sua,
            this.barButtonItem_Xoa,
            this.barButtonItem_Import,
            this.barButtonItem_Khoa,
            this.barButtonItem_Rest,
            this.barButtonItem8});
            this.barManager1.MaxItemId = 8;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 0;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Nap, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Them, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Sua, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Xoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Import, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Khoa, "", true, true, true, 0, null, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.barButtonItem_Rest, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph)});
            this.bar1.OptionsBar.AllowQuickCustomization = false;
            this.bar1.OptionsBar.DrawDragBorder = false;
            this.bar1.OptionsBar.UseWholeRow = true;
            this.bar1.Text = "Tools";
            // 
            // barButtonItem_Nap
            // 
            this.barButtonItem_Nap.Caption = "Nạp";
            this.barButtonItem_Nap.Id = 0;
            this.barButtonItem_Nap.ImageIndex = 0;
            this.barButtonItem_Nap.Name = "barButtonItem_Nap";
            // 
            // barButtonItem_Them
            // 
            this.barButtonItem_Them.Caption = "Thêm";
            this.barButtonItem_Them.Id = 1;
            this.barButtonItem_Them.ImageIndex = 2;
            this.barButtonItem_Them.Name = "barButtonItem_Them";
            // 
            // barButtonItem_Sua
            // 
            this.barButtonItem_Sua.Caption = "Sửa";
            this.barButtonItem_Sua.Id = 2;
            this.barButtonItem_Sua.ImageIndex = 3;
            this.barButtonItem_Sua.Name = "barButtonItem_Sua";
            // 
            // barButtonItem_Xoa
            // 
            this.barButtonItem_Xoa.Caption = "Xóa";
            this.barButtonItem_Xoa.Id = 3;
            this.barButtonItem_Xoa.ImageIndex = 1;
            this.barButtonItem_Xoa.Name = "barButtonItem_Xoa";
            // 
            // barButtonItem_Import
            // 
            this.barButtonItem_Import.Caption = "Import";
            this.barButtonItem_Import.Id = 4;
            this.barButtonItem_Import.ImageIndex = 6;
            this.barButtonItem_Import.Name = "barButtonItem_Import";
            // 
            // barButtonItem_Khoa
            // 
            this.barButtonItem_Khoa.Caption = "Khóa";
            this.barButtonItem_Khoa.Id = 5;
            this.barButtonItem_Khoa.ImageIndex = 5;
            this.barButtonItem_Khoa.Name = "barButtonItem_Khoa";
            // 
            // barButtonItem_Rest
            // 
            this.barButtonItem_Rest.Caption = "Rest password";
            this.barButtonItem_Rest.Id = 6;
            this.barButtonItem_Rest.ImageIndex = 7;
            this.barButtonItem_Rest.Name = "barButtonItem_Rest";
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Size = new System.Drawing.Size(1380, 31);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 678);
            this.barDockControlBottom.Size = new System.Drawing.Size(1380, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 31);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 647);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(1380, 31);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 647);
            // 
            // imageCollection1
            // 
            this.imageCollection1.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("imageCollection1.ImageStream")));
            this.imageCollection1.Images.SetKeyName(0, "43_Refresh.png");
            this.imageCollection1.Images.SetKeyName(1, "1463571754_trash.png");
            this.imageCollection1.Images.SetKeyName(2, "1463571766_add.png");
            this.imageCollection1.Images.SetKeyName(3, "1463571866_edit.png");
            this.imageCollection1.Images.SetKeyName(4, "1463572033_unlock.png");
            this.imageCollection1.Images.SetKeyName(5, "1463572073_lock.png");
            this.imageCollection1.Images.SetKeyName(6, "Import-export-icon.png");
            this.imageCollection1.Images.SetKeyName(7, "sync-icon.png");
            // 
            // barButtonItem8
            // 
            this.barButtonItem8.Caption = "Mở khóa";
            this.barButtonItem8.Id = 7;
            this.barButtonItem8.ImageIndex = 4;
            this.barButtonItem8.Name = "barButtonItem8";
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.FixedPanel = DevExpress.XtraEditors.SplitFixedPanel.Panel2;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 31);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gcNhanVien);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.gcLichSu);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(1380, 647);
            this.splitContainerControl1.SplitterPosition = 276;
            this.splitContainerControl1.TabIndex = 9;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // gcNhanVien
            // 
            this.gcNhanVien.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcNhanVien.Location = new System.Drawing.Point(0, 0);
            this.gcNhanVien.MainView = this.gvNhanVien;
            this.gcNhanVien.MenuManager = this.barManager1;
            this.gcNhanVien.Name = "gcNhanVien";
            this.gcNhanVien.Size = new System.Drawing.Size(1380, 366);
            this.gcNhanVien.TabIndex = 0;
            this.gcNhanVien.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvNhanVien});
            // 
            // gvNhanVien
            // 
            this.gvNhanVien.GridControl = this.gcNhanVien;
            this.gvNhanVien.Name = "gvNhanVien";
            this.gvNhanVien.OptionsView.ShowAutoFilterRow = true;
            // 
            // gcLichSu
            // 
            this.gcLichSu.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcLichSu.Location = new System.Drawing.Point(0, 0);
            this.gcLichSu.MainView = this.gvLichSu;
            this.gcLichSu.MenuManager = this.barManager1;
            this.gcLichSu.Name = "gcLichSu";
            this.gcLichSu.Size = new System.Drawing.Size(1380, 276);
            this.gcLichSu.TabIndex = 0;
            this.gcLichSu.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvLichSu});
            // 
            // gvLichSu
            // 
            this.gvLichSu.GridControl = this.gcLichSu;
            this.gvLichSu.Name = "gvLichSu";
            this.gvLichSu.OptionsView.ShowAutoFilterRow = true;
            // 
            // ctlNhanVien
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainerControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "ctlNhanVien";
            this.Size = new System.Drawing.Size(1380, 678);
            this.Load += new System.EventHandler(this.ctlNhanVien_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcNhanVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvNhanVien)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcLichSu)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvLichSu)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraBars.BarManager barManager1;
        private DevExpress.XtraBars.Bar bar1;
        private DevExpress.XtraBars.BarDockControl barDockControlTop;
        private DevExpress.XtraBars.BarDockControl barDockControlBottom;
        private DevExpress.XtraBars.BarDockControl barDockControlLeft;
        private DevExpress.XtraBars.BarDockControl barDockControlRight;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Nap;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Them;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Sua;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Xoa;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Import;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Khoa;
        private DevExpress.XtraBars.BarButtonItem barButtonItem_Rest;
        private DevExpress.Utils.ImageCollection imageCollection1;
        private DevExpress.XtraBars.BarButtonItem barButtonItem8;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraGrid.GridControl gcNhanVien;
        private DevExpress.XtraGrid.Views.Grid.GridView gvNhanVien;
        private DevExpress.XtraGrid.GridControl gcLichSu;
        private DevExpress.XtraGrid.Views.Grid.GridView gvLichSu;
    }
}
