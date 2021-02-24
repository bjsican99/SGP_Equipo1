
namespace CapaVista_SGP.Mantenimientos
{
    partial class frmMantenimientoPasaporte
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMantenimientoPasaporte));
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_id = new System.Windows.Forms.TextBox();
            this.txt_nombre = new System.Windows.Forms.TextBox();
            this.txt_estado = new System.Windows.Forms.TextBox();
            this.dgv_tipo_pasaporte = new System.Windows.Forms.DataGridView();
            this.rbtn_habilitado = new System.Windows.Forms.RadioButton();
            this.rbtn_deshabilitado = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tipo_pasaporte)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.navegador1.Location = new System.Drawing.Point(27, 84);
            this.navegador1.Margin = new System.Windows.Forms.Padding(4);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1065, 93);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(60, 207);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(102, 17);
            this.label1.TabIndex = 1;
            this.label1.Text = "ID Pasaporte";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(60, 233);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 17);
            this.label2.TabIndex = 2;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(60, 260);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 17);
            this.label3.TabIndex = 3;
            this.label3.Text = "Estado";
            // 
            // txt_id
            // 
            this.txt_id.Location = new System.Drawing.Point(203, 205);
            this.txt_id.Name = "txt_id";
            this.txt_id.Size = new System.Drawing.Size(210, 20);
            this.txt_id.TabIndex = 4;
            this.txt_id.Tag = "pk_id_tipo_pasaporte";
            // 
            // txt_nombre
            // 
            this.txt_nombre.Location = new System.Drawing.Point(203, 231);
            this.txt_nombre.Name = "txt_nombre";
            this.txt_nombre.Size = new System.Drawing.Size(210, 20);
            this.txt_nombre.TabIndex = 5;
            this.txt_nombre.Tag = "nombre_pasaporte";
            // 
            // txt_estado
            // 
            this.txt_estado.Enabled = false;
            this.txt_estado.Location = new System.Drawing.Point(203, 258);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(210, 20);
            this.txt_estado.TabIndex = 6;
            this.txt_estado.Tag = "estado";
            this.txt_estado.Visible = false;
            // 
            // dgv_tipo_pasaporte
            // 
            this.dgv_tipo_pasaporte.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_tipo_pasaporte.Location = new System.Drawing.Point(438, 193);
            this.dgv_tipo_pasaporte.Name = "dgv_tipo_pasaporte";
            this.dgv_tipo_pasaporte.RowHeadersWidth = 51;
            this.dgv_tipo_pasaporte.Size = new System.Drawing.Size(631, 145);
            this.dgv_tipo_pasaporte.TabIndex = 7;
            this.dgv_tipo_pasaporte.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_tipo_pasaporte_CellContentClick);
            // 
            // rbtn_habilitado
            // 
            this.rbtn_habilitado.AutoSize = true;
            this.rbtn_habilitado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtn_habilitado.Location = new System.Drawing.Point(257, 283);
            this.rbtn_habilitado.Name = "rbtn_habilitado";
            this.rbtn_habilitado.Size = new System.Drawing.Size(99, 21);
            this.rbtn_habilitado.TabIndex = 8;
            this.rbtn_habilitado.TabStop = true;
            this.rbtn_habilitado.Text = "Habilitado";
            this.rbtn_habilitado.UseVisualStyleBackColor = true;
            this.rbtn_habilitado.CheckedChanged += new System.EventHandler(this.rbtn_habilitado_CheckedChanged);
            // 
            // rbtn_deshabilitado
            // 
            this.rbtn_deshabilitado.AutoSize = true;
            this.rbtn_deshabilitado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtn_deshabilitado.Location = new System.Drawing.Point(257, 305);
            this.rbtn_deshabilitado.Name = "rbtn_deshabilitado";
            this.rbtn_deshabilitado.Size = new System.Drawing.Size(125, 21);
            this.rbtn_deshabilitado.TabIndex = 9;
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
            this.panel1.Margin = new System.Windows.Forms.Padding(2);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(1125, 51);
            this.panel1.TabIndex = 14;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.label5.Location = new System.Drawing.Point(9, 7);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(322, 31);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mantenimiento Pasaporte";
            // 
            // frmMantenimientoPasaporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(175)))), ((int)(((byte)(135)))));
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1125, 449);
            this.Controls.Add(this.rbtn_deshabilitado);
            this.Controls.Add(this.rbtn_habilitado);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dgv_tipo_pasaporte);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.txt_estado);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txt_nombre);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txt_id);
            this.Controls.Add(this.label3);
            this.DoubleBuffered = true;
            this.Name = "frmMantenimientoPasaporte";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Mantenimiento Tipo Pasaporte";
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tipo_pasaporte)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_id;
        private System.Windows.Forms.TextBox txt_nombre;
        private System.Windows.Forms.TextBox txt_estado;
        private System.Windows.Forms.DataGridView dgv_tipo_pasaporte;
        private System.Windows.Forms.RadioButton rbtn_habilitado;
        private System.Windows.Forms.RadioButton rbtn_deshabilitado;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
    }
}