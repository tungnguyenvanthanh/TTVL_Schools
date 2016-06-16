namespace TTVL.HeThong.NhanVien
{
    partial class f_Them_Sua_QuyDanh
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(f_Them_Sua_QuyDanh));
            this.labelControl1 = new DevExpress.XtraEditors.LabelControl();
            this.txtTenQuyDanh = new DevExpress.XtraEditors.TextEdit();
            this.btDongY = new DevExpress.XtraEditors.SimpleButton();
            ((System.ComponentModel.ISupportInitialize)(this.txtTenQuyDanh.Properties)).BeginInit();
            this.SuspendLayout();
            // 
            // labelControl1
            // 
            this.labelControl1.Location = new System.Drawing.Point(22, 37);
            this.labelControl1.Name = "labelControl1";
            this.labelControl1.Size = new System.Drawing.Size(70, 13);
            this.labelControl1.TabIndex = 0;
            this.labelControl1.Text = "Tên quý danh:";
            // 
            // txtTenQuyDanh
            // 
            this.txtTenQuyDanh.Location = new System.Drawing.Point(98, 34);
            this.txtTenQuyDanh.Name = "txtTenQuyDanh";
            this.txtTenQuyDanh.Size = new System.Drawing.Size(260, 20);
            this.txtTenQuyDanh.TabIndex = 1;
            // 
            // btDongY
            // 
            this.btDongY.Image = ((System.Drawing.Image)(resources.GetObject("btDongY.Image")));
            this.btDongY.Location = new System.Drawing.Point(148, 73);
            this.btDongY.Name = "btDongY";
            this.btDongY.Size = new System.Drawing.Size(76, 23);
            this.btDongY.TabIndex = 2;
            this.btDongY.Text = "Đồng ý";
            this.btDongY.Click += new System.EventHandler(this.btDongY_Click);
            // 
            // dialog_Them_Sua_QuyDanh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(384, 111);
            this.Controls.Add(this.btDongY);
            this.Controls.Add(this.txtTenQuyDanh);
            this.Controls.Add(this.labelControl1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.KeyPreview = true;
            this.Name = "dialog_Them_Sua_QuyDanh";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Load += new System.EventHandler(this.dialog_Them_Sua_QuyDanh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.txtTenQuyDanh.Properties)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private DevExpress.XtraEditors.LabelControl labelControl1;
        private DevExpress.XtraEditors.TextEdit txtTenQuyDanh;
        private DevExpress.XtraEditors.SimpleButton btDongY;
    }
}