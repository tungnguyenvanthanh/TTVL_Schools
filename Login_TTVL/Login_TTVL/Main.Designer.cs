namespace Login_TTVL
{
    partial class Main
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(Main));
            this.barManager1 = new DevExpress.XtraBars.BarManager(this.components);
            this.bar1 = new DevExpress.XtraBars.Bar();
            this.btThem = new DevExpress.XtraBars.BarButtonItem();
            this.btSua = new DevExpress.XtraBars.BarButtonItem();
            this.btXoa = new DevExpress.XtraBars.BarButtonItem();
            this.barButtonItem4 = new DevExpress.XtraBars.BarButtonItem();
            this.barDockControlTop = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlBottom = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlLeft = new DevExpress.XtraBars.BarDockControl();
            this.barDockControlRight = new DevExpress.XtraBars.BarDockControl();
            this.imageCollection1 = new DevExpress.Utils.ImageCollection(this.components);
            this.gcKey = new DevExpress.XtraGrid.GridControl();
            this.gvKey = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.RowID = new DevExpress.XtraGrid.Columns.GridColumn();
            this.KeyComputer = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn2 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn1 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn3 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn4 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn5 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.splitContainerControl1 = new DevExpress.XtraEditors.SplitContainerControl();
            this.gcPc = new DevExpress.XtraGrid.GridControl();
            this.gvPc = new DevExpress.XtraGrid.Views.Grid.GridView();
            this.RowIDpc = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn7 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn8 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn9 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn10 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn11 = new DevExpress.XtraGrid.Columns.GridColumn();
            this.gridColumn6 = new DevExpress.XtraGrid.Columns.GridColumn();
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcKey)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvKey)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).BeginInit();
            this.splitContainerControl1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gcPc)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPc)).BeginInit();
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
            this.btThem,
            this.btSua,
            this.btXoa,
            this.barButtonItem4});
            this.barManager1.MaxItemId = 4;
            // 
            // bar1
            // 
            this.bar1.BarName = "Tools";
            this.bar1.DockCol = 0;
            this.bar1.DockRow = 0;
            this.bar1.DockStyle = DevExpress.XtraBars.BarDockStyle.Top;
            this.bar1.LinksPersistInfo.AddRange(new DevExpress.XtraBars.LinkPersistInfo[] {
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btThem, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btSua, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(DevExpress.XtraBars.BarLinkUserDefines.PaintStyle, this.btXoa, DevExpress.XtraBars.BarItemPaintStyle.CaptionGlyph),
            new DevExpress.XtraBars.LinkPersistInfo(this.barButtonItem4)});
            this.bar1.OptionsBar.AllowQuickCustomization = false;
            this.bar1.OptionsBar.DrawDragBorder = false;
            this.bar1.OptionsBar.UseWholeRow = true;
            this.bar1.Text = "Tools";
            // 
            // btThem
            // 
            this.btThem.Caption = "Thêm";
            this.btThem.Id = 0;
            this.btThem.ImageIndex = 2;
            this.btThem.Name = "btThem";
            this.btThem.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btThem_ItemClick);
            // 
            // btSua
            // 
            this.btSua.Caption = "Sửa";
            this.btSua.Id = 1;
            this.btSua.ImageIndex = 1;
            this.btSua.Name = "btSua";
            this.btSua.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btSua_ItemClick);
            // 
            // btXoa
            // 
            this.btXoa.Caption = "Xóa";
            this.btXoa.Id = 2;
            this.btXoa.ImageIndex = 0;
            this.btXoa.Name = "btXoa";
            this.btXoa.ItemClick += new DevExpress.XtraBars.ItemClickEventHandler(this.btXoa_ItemClick);
            // 
            // barButtonItem4
            // 
            this.barButtonItem4.Id = 3;
            this.barButtonItem4.Name = "barButtonItem4";
            // 
            // barDockControlTop
            // 
            this.barDockControlTop.CausesValidation = false;
            this.barDockControlTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.barDockControlTop.Location = new System.Drawing.Point(0, 0);
            this.barDockControlTop.Size = new System.Drawing.Size(914, 31);
            // 
            // barDockControlBottom
            // 
            this.barDockControlBottom.CausesValidation = false;
            this.barDockControlBottom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.barDockControlBottom.Location = new System.Drawing.Point(0, 571);
            this.barDockControlBottom.Size = new System.Drawing.Size(914, 0);
            // 
            // barDockControlLeft
            // 
            this.barDockControlLeft.CausesValidation = false;
            this.barDockControlLeft.Dock = System.Windows.Forms.DockStyle.Left;
            this.barDockControlLeft.Location = new System.Drawing.Point(0, 31);
            this.barDockControlLeft.Size = new System.Drawing.Size(0, 540);
            // 
            // barDockControlRight
            // 
            this.barDockControlRight.CausesValidation = false;
            this.barDockControlRight.Dock = System.Windows.Forms.DockStyle.Right;
            this.barDockControlRight.Location = new System.Drawing.Point(914, 31);
            this.barDockControlRight.Size = new System.Drawing.Size(0, 540);
            // 
            // imageCollection1
            // 
            this.imageCollection1.ImageStream = ((DevExpress.Utils.ImageCollectionStreamer)(resources.GetObject("imageCollection1.ImageStream")));
            this.imageCollection1.Images.SetKeyName(0, "btnXoa.png");
            this.imageCollection1.Images.SetKeyName(1, "edit-validated-icon.png");
            this.imageCollection1.Images.SetKeyName(2, "plus-icon.png");
            this.imageCollection1.Images.SetKeyName(3, "key-icon.png");
            // 
            // gcKey
            // 
            this.gcKey.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcKey.Location = new System.Drawing.Point(0, 0);
            this.gcKey.MainView = this.gvKey;
            this.gcKey.MenuManager = this.barManager1;
            this.gcKey.Name = "gcKey";
            this.gcKey.Size = new System.Drawing.Size(914, 330);
            this.gcKey.TabIndex = 4;
            this.gcKey.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvKey});
            // 
            // gvKey
            // 
            this.gvKey.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.RowID,
            this.KeyComputer,
            this.gridColumn2,
            this.gridColumn1,
            this.gridColumn3,
            this.gridColumn4,
            this.gridColumn5,
            this.gridColumn6});
            this.gvKey.GridControl = this.gcKey;
            this.gvKey.Name = "gvKey";
            this.gvKey.OptionsBehavior.Editable = false;
            this.gvKey.OptionsView.ColumnAutoWidth = false;
            this.gvKey.OptionsView.ShowAutoFilterRow = true;
            this.gvKey.OptionsView.ShowGroupPanel = false;
            this.gvKey.RowClick += new DevExpress.XtraGrid.Views.Grid.RowClickEventHandler(this.gvKey_RowClick);
            // 
            // RowID
            // 
            this.RowID.Caption = "RowID";
            this.RowID.FieldName = "RowID";
            this.RowID.Name = "RowID";
            // 
            // KeyComputer
            // 
            this.KeyComputer.Caption = "Key";
            this.KeyComputer.FieldName = "KeyComputer";
            this.KeyComputer.Name = "KeyComputer";
            this.KeyComputer.Visible = true;
            this.KeyComputer.VisibleIndex = 0;
            // 
            // gridColumn2
            // 
            this.gridColumn2.Caption = "Loại Key";
            this.gridColumn2.FieldName = "Loai";
            this.gridColumn2.Name = "gridColumn2";
            this.gridColumn2.Visible = true;
            this.gridColumn2.VisibleIndex = 1;
            // 
            // gridColumn1
            // 
            this.gridColumn1.Caption = "Kích hoạt";
            this.gridColumn1.FieldName = "KichHoat";
            this.gridColumn1.Name = "gridColumn1";
            this.gridColumn1.Visible = true;
            this.gridColumn1.VisibleIndex = 2;
            // 
            // gridColumn3
            // 
            this.gridColumn3.Caption = "Ngày kích hoạt";
            this.gridColumn3.FieldName = "NgayKichHoat";
            this.gridColumn3.Name = "gridColumn3";
            this.gridColumn3.Visible = true;
            this.gridColumn3.VisibleIndex = 3;
            // 
            // gridColumn4
            // 
            this.gridColumn4.Caption = "Ngày hết hạn";
            this.gridColumn4.FieldName = "NgayHetHan";
            this.gridColumn4.Name = "gridColumn4";
            this.gridColumn4.Visible = true;
            this.gridColumn4.VisibleIndex = 4;
            // 
            // gridColumn5
            // 
            this.gridColumn5.Caption = "Khóa Key";
            this.gridColumn5.FieldName = "Lock";
            this.gridColumn5.Name = "gridColumn5";
            this.gridColumn5.Visible = true;
            this.gridColumn5.VisibleIndex = 5;
            // 
            // splitContainerControl1
            // 
            this.splitContainerControl1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainerControl1.FixedPanel = DevExpress.XtraEditors.SplitFixedPanel.Panel2;
            this.splitContainerControl1.Horizontal = false;
            this.splitContainerControl1.Location = new System.Drawing.Point(0, 31);
            this.splitContainerControl1.Name = "splitContainerControl1";
            this.splitContainerControl1.Panel1.Controls.Add(this.gcKey);
            this.splitContainerControl1.Panel1.Text = "Panel1";
            this.splitContainerControl1.Panel2.Controls.Add(this.gcPc);
            this.splitContainerControl1.Panel2.Text = "Panel2";
            this.splitContainerControl1.Size = new System.Drawing.Size(914, 540);
            this.splitContainerControl1.SplitterPosition = 205;
            this.splitContainerControl1.TabIndex = 9;
            this.splitContainerControl1.Text = "splitContainerControl1";
            // 
            // gcPc
            // 
            this.gcPc.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gcPc.Location = new System.Drawing.Point(0, 0);
            this.gcPc.MainView = this.gvPc;
            this.gcPc.MenuManager = this.barManager1;
            this.gcPc.Name = "gcPc";
            this.gcPc.Size = new System.Drawing.Size(914, 205);
            this.gcPc.TabIndex = 0;
            this.gcPc.ViewCollection.AddRange(new DevExpress.XtraGrid.Views.Base.BaseView[] {
            this.gvPc});
            // 
            // gvPc
            // 
            this.gvPc.Columns.AddRange(new DevExpress.XtraGrid.Columns.GridColumn[] {
            this.RowIDpc,
            this.gridColumn7,
            this.gridColumn8,
            this.gridColumn9,
            this.gridColumn10,
            this.gridColumn11});
            this.gvPc.GridControl = this.gcPc;
            this.gvPc.Name = "gvPc";
            this.gvPc.OptionsBehavior.Editable = false;
            this.gvPc.OptionsView.ColumnAutoWidth = false;
            this.gvPc.OptionsView.ShowAutoFilterRow = true;
            this.gvPc.OptionsView.ShowGroupPanel = false;
            // 
            // RowIDpc
            // 
            this.RowIDpc.Caption = "RowID";
            this.RowIDpc.FieldName = "RowID";
            this.RowIDpc.Name = "RowIDpc";
            // 
            // gridColumn7
            // 
            this.gridColumn7.Caption = "Tên máy";
            this.gridColumn7.FieldName = "TenMay";
            this.gridColumn7.Name = "gridColumn7";
            this.gridColumn7.Visible = true;
            this.gridColumn7.VisibleIndex = 0;
            // 
            // gridColumn8
            // 
            this.gridColumn8.Caption = "Khóa máy";
            this.gridColumn8.FieldName = "Lock";
            this.gridColumn8.Name = "gridColumn8";
            this.gridColumn8.Visible = true;
            this.gridColumn8.VisibleIndex = 1;
            // 
            // gridColumn9
            // 
            this.gridColumn9.Caption = "Ngày kích hoạt";
            this.gridColumn9.FieldName = "NgayKichHoat";
            this.gridColumn9.Name = "gridColumn9";
            this.gridColumn9.Visible = true;
            this.gridColumn9.VisibleIndex = 2;
            // 
            // gridColumn10
            // 
            this.gridColumn10.Caption = "Ngày hết hạn";
            this.gridColumn10.FieldName = "NgayHetHan";
            this.gridColumn10.Name = "gridColumn10";
            this.gridColumn10.Visible = true;
            this.gridColumn10.VisibleIndex = 3;
            // 
            // gridColumn11
            // 
            this.gridColumn11.Caption = "Ghi chú";
            this.gridColumn11.FieldName = "GhiChu";
            this.gridColumn11.Name = "gridColumn11";
            this.gridColumn11.Visible = true;
            this.gridColumn11.VisibleIndex = 4;
            // 
            // gridColumn6
            // 
            this.gridColumn6.Caption = "Ghi chú";
            this.gridColumn6.FieldName = "GhiChu";
            this.gridColumn6.Name = "gridColumn6";
            this.gridColumn6.Visible = true;
            this.gridColumn6.VisibleIndex = 6;
            // 
            // Main
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.splitContainerControl1);
            this.Controls.Add(this.barDockControlLeft);
            this.Controls.Add(this.barDockControlRight);
            this.Controls.Add(this.barDockControlBottom);
            this.Controls.Add(this.barDockControlTop);
            this.Name = "Main";
            this.Size = new System.Drawing.Size(914, 571);
            this.Load += new System.EventHandler(this.Main_Load);
            ((System.ComponentModel.ISupportInitialize)(this.barManager1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.imageCollection1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gcKey)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvKey)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainerControl1)).EndInit();
            this.splitContainerControl1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.gcPc)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.gvPc)).EndInit();
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
        private DevExpress.XtraBars.BarButtonItem btThem;
        private DevExpress.XtraBars.BarButtonItem btSua;
        private DevExpress.XtraBars.BarButtonItem btXoa;
        private DevExpress.XtraBars.BarButtonItem barButtonItem4;
        private DevExpress.Utils.ImageCollection imageCollection1;
        private DevExpress.XtraGrid.GridControl gcKey;
        private DevExpress.XtraGrid.Views.Grid.GridView gvKey;
        private DevExpress.XtraGrid.Columns.GridColumn RowID;
        private DevExpress.XtraGrid.Columns.GridColumn KeyComputer;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn2;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn3;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn4;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn5;
        private DevExpress.XtraEditors.SplitContainerControl splitContainerControl1;
        private DevExpress.XtraGrid.GridControl gcPc;
        private DevExpress.XtraGrid.Views.Grid.GridView gvPc;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn1;
        private DevExpress.XtraGrid.Columns.GridColumn RowIDpc;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn7;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn8;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn9;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn10;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn11;
        private DevExpress.XtraGrid.Columns.GridColumn gridColumn6;
    }
}
