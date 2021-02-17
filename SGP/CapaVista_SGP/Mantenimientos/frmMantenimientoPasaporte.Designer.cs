
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.panel3 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tipo_pasaporte)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panel3.SuspendLayout();
            this.SuspendLayout();
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.navegador1.Location = new System.Drawing.Point(5, 14);
            this.navegador1.Margin = new System.Windows.Forms.Padding(5, 5, 5, 5);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1415, 114);
            this.navegador1.TabIndex = 0;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(47, 165);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(119, 20);
            this.label1.TabIndex = 1;
            this.label1.Text = "ID Pasaporte";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(47, 197);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(74, 20);
            this.label2.TabIndex = 2;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(47, 230);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(67, 20);
            this.label3.TabIndex = 3;
            this.label3.Text = "Estado";
            // 
            // txt_id
            // 
            this.txt_id.Location = new System.Drawing.Point(238, 163);
            this.txt_id.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_id.Name = "txt_id";
            this.txt_id.Size = new System.Drawing.Size(278, 22);
            this.txt_id.TabIndex = 4;
            this.txt_id.Tag = "pk_id_tipo_pasaporte";
            // 
            // txt_nombre
            // 
            this.txt_nombre.Location = new System.Drawing.Point(238, 195);
            this.txt_nombre.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_nombre.Name = "txt_nombre";
            this.txt_nombre.Size = new System.Drawing.Size(278, 22);
            this.txt_nombre.TabIndex = 5;
            this.txt_nombre.Tag = "nombre_pasaporte";
            // 
            // txt_estado
            // 
            this.txt_estado.Enabled = false;
            this.txt_estado.Location = new System.Drawing.Point(238, 228);
            this.txt_estado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(278, 22);
            this.txt_estado.TabIndex = 6;
            this.txt_estado.Tag = "estado";
            this.txt_estado.Visible = false;
            // 
            // dgv_tipo_pasaporte
            // 
            this.dgv_tipo_pasaporte.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgv_tipo_pasaporte.Location = new System.Drawing.Point(561, 163);
            this.dgv_tipo_pasaporte.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.dgv_tipo_pasaporte.Name = "dgv_tipo_pasaporte";
            this.dgv_tipo_pasaporte.RowHeadersWidth = 51;
            this.dgv_tipo_pasaporte.Size = new System.Drawing.Size(841, 178);
            this.dgv_tipo_pasaporte.TabIndex = 7;
            this.dgv_tipo_pasaporte.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dgv_tipo_pasaporte_CellContentClick);
            // 
            // rbtn_habilitado
            // 
            this.rbtn_habilitado.AutoSize = true;
            this.rbtn_habilitado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtn_habilitado.Location = new System.Drawing.Point(310, 258);
            this.rbtn_habilitado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rbtn_habilitado.Name = "rbtn_habilitado";
            this.rbtn_habilitado.Size = new System.Drawing.Size(115, 24);
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
            this.rbtn_deshabilitado.Location = new System.Drawing.Point(310, 286);
            this.rbtn_deshabilitado.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.rbtn_deshabilitado.Name = "rbtn_deshabilitado";
            this.rbtn_deshabilitado.Size = new System.Drawing.Size(145, 24);
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
            this.label5.Size = new System.Drawing.Size(387, 38);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mantenimiento Pasaporte";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.panel2.Controls.Add(this.panel3);
            this.panel2.Location = new System.Drawing.Point(11, 77);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1472, 431);
            this.panel2.TabIndex = 15;
            // 
            // panel3
            // 
            this.panel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(200)))), ((int)(((byte)(200)))), ((int)(((byte)(169)))));
            this.panel3.Controls.Add(this.rbtn_deshabilitado);
            this.panel3.Controls.Add(this.rbtn_habilitado);
            this.panel3.Controls.Add(this.dgv_tipo_pasaporte);
            this.panel3.Controls.Add(this.txt_estado);
            this.panel3.Controls.Add(this.txt_nombre);
            this.panel3.Controls.Add(this.txt_id);
            this.panel3.Controls.Add(this.label3);
            this.panel3.Controls.Add(this.label2);
            this.panel3.Controls.Add(this.label1);
            this.panel3.Controls.Add(this.navegador1);
            this.panel3.Location = new System.Drawing.Point(21, 21);
            this.panel3.Name = "panel3";
            this.panel3.Size = new System.Drawing.Size(1433, 378);
            this.panel3.TabIndex = 10;
            // 
            // frmMantenimientoPasaporte
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(175)))), ((int)(((byte)(135)))));
            this.ClientSize = new System.Drawing.Size(1500, 527);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Margin = new System.Windows.Forms.Padding(4, 4, 4, 4);
            this.Name = "frmMantenimientoPasaporte";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            ((System.ComponentModel.ISupportInitialize)(this.dgv_tipo_pasaporte)).EndInit();
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
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_id;
        private System.Windows.Forms.TextBox txt_nombre;
        private System.Windows.Forms.TextBox txt_estado;
        private System.Windows.Forms.DataGridView dgv_tipo_pasaporte;
        private System.Windows.Forms.RadioButton rbtn_habilitado;
        private System.Windows.Forms.RadioButton rbtn_deshabilitado;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Panel panel3;
    }
}