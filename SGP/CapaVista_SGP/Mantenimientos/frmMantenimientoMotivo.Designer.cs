
namespace CapaVista_SGP.Mantenimientos
{
    partial class frmMantenimientoMotivo
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
            this.components = new System.ComponentModel.Container();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txt_id_motivo = new System.Windows.Forms.TextBox();
            this.txt_motivo = new System.Windows.Forms.TextBox();
            this.dgv_motivo = new System.Windows.Forms.DataGridView();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_estado = new System.Windows.Forms.TextBox();
            this.contextMenuStrip1 = new System.Windows.Forms.ContextMenuStrip(this.components);
            this.rbtn_habilitado = new System.Windows.Forms.RadioButton();
            this.rbtn_deshabilitado = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_motivo)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.navegador1.Location = new System.Drawing.Point(13, 29);
            this.navegador1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 114);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(51, 167);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(89, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "ID Motivo";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(51, 205);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Motivo";
            // 
            // txt_id_motivo
            // 
            this.txt_id_motivo.Location = new System.Drawing.Point(167, 163);
            this.txt_id_motivo.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_id_motivo.Name = "txt_id_motivo";
            this.txt_id_motivo.Size = new System.Drawing.Size(188, 22);
            this.txt_id_motivo.TabIndex = 3;
            this.txt_id_motivo.Tag = "pk_id_motivo";
            // 
            // txt_motivo
            // 
            this.txt_motivo.Location = new System.Drawing.Point(167, 205);
            this.txt_motivo.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_motivo.Name = "txt_motivo";
            this.txt_motivo.Size = new System.Drawing.Size(188, 22);
            this.txt_motivo.TabIndex = 4;
            this.txt_motivo.Tag = "motivo";
            // 
            // dgv_motivo
            // 
            this.dgv_motivo.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_motivo.Location = new System.Drawing.Point(453, 167);
            this.dgv_motivo.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgv_motivo.Name = "dgv_motivo";
            this.dgv_motivo.RowHeadersWidth = 51;
            this.dgv_motivo.Size = new System.Drawing.Size(957, 185);
            this.dgv_motivo.TabIndex = 5;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(51, 248);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 20);
            this.label3.TabIndex = 6;
            this.label3.Text = "Estado";
            // 
            // txt_estado
            // 
            this.txt_estado.Location = new System.Drawing.Point(167, 248);
            this.txt_estado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(188, 22);
            this.txt_estado.TabIndex = 7;
            this.txt_estado.Tag = "estado";
            // 
            // contextMenuStrip1
            // 
            this.contextMenuStrip1.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.contextMenuStrip1.Name = "contextMenuStrip1";
            this.contextMenuStrip1.Size = new System.Drawing.Size(61, 4);
            // 
            // rbtn_habilitado
            // 
            this.rbtn_habilitado.AutoSize = true;
            this.rbtn_habilitado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtn_habilitado.Location = new System.Drawing.Point(207, 295);
            this.rbtn_habilitado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rbtn_habilitado.Name = "rbtn_habilitado";
            this.rbtn_habilitado.Size = new System.Drawing.Size(104, 22);
            this.rbtn_habilitado.TabIndex = 9;
            this.rbtn_habilitado.TabStop = true;
            this.rbtn_habilitado.Text = "Habilitado";
            this.rbtn_habilitado.UseVisualStyleBackColor = true;
            this.rbtn_habilitado.CheckedChanged += new System.EventHandler(this.rbtn_habilitado_CheckedChanged);
            // 
            // rbtn_deshabilitado
            // 
            this.rbtn_deshabilitado.AutoSize = true;
            this.rbtn_deshabilitado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtn_deshabilitado.Location = new System.Drawing.Point(207, 324);
            this.rbtn_deshabilitado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rbtn_deshabilitado.Name = "rbtn_deshabilitado";
            this.rbtn_deshabilitado.Size = new System.Drawing.Size(131, 22);
            this.rbtn_deshabilitado.TabIndex = 10;
            this.rbtn_deshabilitado.TabStop = true;
            this.rbtn_deshabilitado.Text = "Deshabilitado";
            this.rbtn_deshabilitado.UseVisualStyleBackColor = true;
            this.rbtn_deshabilitado.CheckedChanged += new System.EventHandler(this.rbtn_deshabilitado_CheckedChanged);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.White;
            this.panel1.Controls.Add(this.label5);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1500, 63);
            this.panel1.TabIndex = 14;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.label5.Location = new System.Drawing.Point(12, 9);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(334, 38);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mantenimiento Motivo";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.panel2.Controls.Add(this.panel3);
            this.panel2.Location = new System.Drawing.Point(15, 82);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1473, 440);
            this.panel2.TabIndex = 15;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(200)))), ((int)(((byte)(200)))), ((int)(((byte)(169)))));
            this.panel3.Controls.Add(this.rbtn_deshabilitado);
            this.panel3.Controls.Add(this.rbtn_habilitado);
            this.panel3.Controls.Add(this.txt_estado);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.dgv_motivo);
            this.panel3.Controls.Add(this.txt_motivo);
            this.panel3.Controls.Add(this.txt_id_motivo);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Controls.Add(this.navegador1);
            this.panel3.Location = new System.Drawing.Point(20, 19);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1437, 389);
            this.panel3.TabIndex = 11;
            // 
            // frmMantenimientoMotivo
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(175)))), ((int)(((byte)(135)))));
            this.ClientSize = new System.Drawing.Size(1500, 544);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmMantenimientoMotivo";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmMantenimientoMotivo";
            ((System.ComponentModel.ISupportInitialize)(this.dgv_motivo)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel3.ResumeLayout(false);
            this.panel3.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.TextBox txt_id_motivo;
        private System.Windows.Forms.TextBox txt_motivo;
        private System.Windows.Forms.DataGridView dgv_motivo;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_estado;
        private System.Windows.Forms.ContextMenuStrip contextMenuStrip1;
        private System.Windows.Forms.RadioButton rbtn_habilitado;
        private System.Windows.Forms.RadioButton rbtn_deshabilitado;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
    }
}