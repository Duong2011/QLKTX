﻿namespace thuVienControls
{
    partial class gd_nguoidung
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
            this.tableLayoutPanel1 = new System.Windows.Forms.TableLayoutPanel();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btn_tailai = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.btn_Them = new System.Windows.Forms.Button();
            this.cbm_vaitro = new System.Windows.Forms.ComboBox();
            this.cbm_trangthai = new System.Windows.Forms.ComboBox();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_matkhau = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_tennguoidung = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.data_nguoidung = new System.Windows.Forms.DataGridView();
            this.tableLayoutPanel1.SuspendLayout();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.data_nguoidung)).BeginInit();
            this.SuspendLayout();
            // 
            // tableLayoutPanel1
            // 
            this.tableLayoutPanel1.ColumnCount = 1;
            this.tableLayoutPanel1.ColumnStyles.Add(new System.Windows.Forms.ColumnStyle(System.Windows.Forms.SizeType.Percent, 50F));
            this.tableLayoutPanel1.Controls.Add(this.panel1, 0, 0);
            this.tableLayoutPanel1.Controls.Add(this.panel2, 0, 1);
            this.tableLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.tableLayoutPanel1.Name = "tableLayoutPanel1";
            this.tableLayoutPanel1.RowCount = 2;
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 46.32107F));
            this.tableLayoutPanel1.RowStyles.Add(new System.Windows.Forms.RowStyle(System.Windows.Forms.SizeType.Percent, 53.67893F));
            this.tableLayoutPanel1.Size = new System.Drawing.Size(1273, 598);
            this.tableLayoutPanel1.TabIndex = 0;
            this.tableLayoutPanel1.Paint += new System.Windows.Forms.PaintEventHandler(this.tableLayoutPanel1_Paint);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btn_tailai);
            this.panel1.Controls.Add(this.button1);
            this.panel1.Controls.Add(this.btn_Them);
            this.panel1.Controls.Add(this.cbm_vaitro);
            this.panel1.Controls.Add(this.cbm_trangthai);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.txt_matkhau);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.txt_tennguoidung);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(3, 3);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1267, 270);
            this.panel1.TabIndex = 1;
            // 
            // btn_tailai
            // 
            this.btn_tailai.Location = new System.Drawing.Point(744, 184);
            this.btn_tailai.Name = "btn_tailai";
            this.btn_tailai.Size = new System.Drawing.Size(132, 40);
            this.btn_tailai.TabIndex = 12;
            this.btn_tailai.Text = "Tải Lại";
            this.btn_tailai.UseVisualStyleBackColor = true;
            this.btn_tailai.Click += new System.EventHandler(this.button2_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(547, 184);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(132, 40);
            this.button1.TabIndex = 11;
            this.button1.Text = "Lưu";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btn_Them
            // 
            this.btn_Them.Location = new System.Drawing.Point(305, 184);
            this.btn_Them.Name = "btn_Them";
            this.btn_Them.Size = new System.Drawing.Size(132, 40);
            this.btn_Them.TabIndex = 10;
            this.btn_Them.Text = "Thêm";
            this.btn_Them.UseVisualStyleBackColor = true;
            this.btn_Them.Click += new System.EventHandler(this.btn_Them_Click);
            // 
            // cbm_vaitro
            // 
            this.cbm_vaitro.Enabled = false;
            this.cbm_vaitro.FormattingEnabled = true;
            this.cbm_vaitro.Location = new System.Drawing.Point(706, 113);
            this.cbm_vaitro.Name = "cbm_vaitro";
            this.cbm_vaitro.Size = new System.Drawing.Size(209, 24);
            this.cbm_vaitro.TabIndex = 9;
            // 
            // cbm_trangthai
            // 
            this.cbm_trangthai.Enabled = false;
            this.cbm_trangthai.FormattingEnabled = true;
            this.cbm_trangthai.Location = new System.Drawing.Point(706, 44);
            this.cbm_trangthai.Name = "cbm_trangthai";
            this.cbm_trangthai.Size = new System.Drawing.Size(209, 24);
            this.cbm_trangthai.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(575, 119);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(45, 16);
            this.label3.TabIndex = 6;
            this.label3.Text = "Vai trò";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(575, 47);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(73, 16);
            this.label4.TabIndex = 4;
            this.label4.Text = "Trạng Thái";
            // 
            // txt_matkhau
            // 
            this.txt_matkhau.Location = new System.Drawing.Point(305, 113);
            this.txt_matkhau.Name = "txt_matkhau";
            this.txt_matkhau.Size = new System.Drawing.Size(210, 22);
            this.txt_matkhau.TabIndex = 3;
            this.txt_matkhau.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_matkhau_KeyPress);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(156, 116);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 16);
            this.label2.TabIndex = 2;
            this.label2.Text = "Mật khẩu";
            // 
            // txt_tennguoidung
            // 
            this.txt_tennguoidung.Location = new System.Drawing.Point(305, 41);
            this.txt_tennguoidung.Name = "txt_tennguoidung";
            this.txt_tennguoidung.Size = new System.Drawing.Size(210, 22);
            this.txt_tennguoidung.TabIndex = 1;
            this.txt_tennguoidung.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txt_tennguoidung_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(156, 44);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(100, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Tên người dùng";
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.data_nguoidung);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(3, 280);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1267, 315);
            this.panel2.TabIndex = 2;
            // 
            // data_nguoidung
            // 
            this.data_nguoidung.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.data_nguoidung.Location = new System.Drawing.Point(227, 3);
            this.data_nguoidung.Name = "data_nguoidung";
            this.data_nguoidung.RowHeadersWidth = 51;
            this.data_nguoidung.RowTemplate.Height = 24;
            this.data_nguoidung.Size = new System.Drawing.Size(730, 312);
            this.data_nguoidung.TabIndex = 13;
            this.data_nguoidung.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.data_nguoidung_CellContentClick_1);
            // 
            // gd_nguoidung
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.Controls.Add(this.tableLayoutPanel1);
            this.Name = "gd_nguoidung";
            this.Size = new System.Drawing.Size(1273, 601);
            this.tableLayoutPanel1.ResumeLayout(false);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.data_nguoidung)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TableLayoutPanel tableLayoutPanel1;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_matkhau;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_tennguoidung;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cbm_vaitro;
        private System.Windows.Forms.Button btn_tailai;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btn_Them;
        private System.Windows.Forms.ComboBox cbm_trangthai;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.DataGridView data_nguoidung;
        private System.Windows.Forms.Panel panel2;
    }
}
