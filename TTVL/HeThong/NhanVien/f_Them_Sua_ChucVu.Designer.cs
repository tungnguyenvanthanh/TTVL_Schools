namespace TTVL.HeThong.NhanVien
{
    partial class f_Them_Sua_ChucVu
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

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(f_Them_Sua_ChucVu));
            this.txtTenQuyDanh = new DevExpress.XtraEditors.TextEdit();
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.btDongY = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenQuyDanh.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // txtTenQuyDanh
            // 
            this.txtTenQuyDanh.Location = new System.Drawing.Point(100, 24);
            this.txtTenQuyDanh.Name = "txtTenQuyDanh";
            this.txtTenQuyDanh.Size = new System.Drawing.Size(260, 20);
            this.txtTenQuyDanh.TabIndex = 4;
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(24, 27);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(63, 13);
            this.labelControl1.TabIndex = 3;
            this.labelControl1.Text = "Tên chức vụ:";
            // 
            // btDongY
            // 
            this.btDongY.Image = ((System.Drawing.Image)(resources.GetObject("btDongY.Image")));
            this.btDongY.Location = new System.Drawing.Point(150, 63);
            this.btDongY.Name = "btDongY";
            this.btDongY.Size = new System.Drawing.Size(76, 23);
            this.btDongY.TabIndex = 5;
            this.btDongY.Text = "Đồng ý";
            this.btDongY.Click += new System.EventHandler(this.btDongY_Click);
            // 
            // f_Them_Sua_ChucVu
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 111);
            this.Controls.Add(this.btDongY);
            this.Controls.Add(this.txtTenQuyDanh);
            this.Controls.Add(this.labelControl1);
            this.Name = "f_Them_Sua_ChucVu";
            this.Load += new System.EventHandler(this.f_Them_Sua_ChucVu_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtTenQuyDanh.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.SimpleButton btDongY;
        private DevExpress.XtraEditors.TextEdit txtTenQuyDanh;
        private DevExpress.XtraEditors.LabelControl labelControl1;
    }
}