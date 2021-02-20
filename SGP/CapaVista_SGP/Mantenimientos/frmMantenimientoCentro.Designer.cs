
namespace CapaVista_SGP.Mantenimientos
{
    partial class frmMantenimientoCentro
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmMantenimientoCentro));
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtID = new System.Windows.Forms.TextBox();
            this.txtNombre = new System.Windows.Forms.TextBox();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.txtEstado = new System.Windows.Forms.TextBox();
            this.dgvCentro = new System.Windows.Forms.DataGridView();
            this.rbtnHabilidado = new System.Windows.Forms.RadioButton();
            this.rbtnDeshabilidado = new System.Windows.Forms.RadioButton();
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            ((System.ComponentModel.ISupportInitialize)(this.dgvCentro)).BeginInit();
            this.panel1.SuspendLayout();
            this.SuspendLayout();
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(69, 199);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(76, 17);
            this.label1.TabIndex = 0;
            this.label1.Text = "ID Centro";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(69, 228);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 17);
            this.label2.TabIndex = 1;
            this.label2.Text = "Nombre";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.Location = new System.Drawing.Point(69, 251);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(76, 17);
            this.label3.TabIndex = 2;
            this.label3.Text = "Direccion";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(69, 281);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 17);
            this.label4.TabIndex = 3;
            this.label4.Text = "Estado";
            // 
            // txtID
            // 
            this.txtID.Location = new System.Drawing.Point(163, 200);
            this.txtID.Name = "txtID";
            this.txtID.Size = new System.Drawing.Size(220, 20);
            this.txtID.TabIndex = 4;
            this.txtID.Tag = "pk_id_centro";
            // 
            // txtNombre
            // 
            this.txtNombre.Location = new System.Drawing.Point(163, 226);
            this.txtNombre.Name = "txtNombre";
            this.txtNombre.Size = new System.Drawing.Size(220, 20);
            this.txtNombre.TabIndex = 5;
            this.txtNombre.Tag = "nombre_centro";
            // 
            // txtDireccion
            // 
            this.txtDireccion.Location = new System.Drawing.Point(163, 255);
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.Size = new System.Drawing.Size(220, 20);
            this.txtDireccion.TabIndex = 6;
            this.txtDireccion.Tag = "direccion_centro";
            // 
            // txtEstado
            // 
            this.txtEstado.Location = new System.Drawing.Point(163, 285);
            this.txtEstado.Name = "txtEstado";
            this.txtEstado.Size = new System.Drawing.Size(220, 20);
            this.txtEstado.TabIndex = 7;
            this.txtEstado.Tag = "estado";
            // 
            // dgvCentro
            // 
            this.dgvCentro.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvCentro.Location = new System.Drawing.Point(439, 177);
            this.dgvCentro.Name = "dgvCentro";
            this.dgvCentro.RowHeadersWidth = 51;
            this.dgvCentro.Size = new System.Drawing.Size(637, 180);
            this.dgvCentro.TabIndex = 9;
            this.dgvCentro.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // rbtnHabilidado
            // 
            this.rbtnHabilidado.AutoSize = true;
            this.rbtnHabilidado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtnHabilidado.Location = new System.Drawing.Point(221, 320);
            this.rbtnHabilidado.Name = "rbtnHabilidado";
            this.rbtnHabilidado.Size = new System.Drawing.Size(99, 21);
            this.rbtnHabilidado.TabIndex = 10;
            this.rbtnHabilidado.TabStop = true;
            this.rbtnHabilidado.Text = "Habilitado";
            this.rbtnHabilidado.UseVisualStyleBackColor = true;
            // 
            // rbtnDeshabilidado
            // 
            this.rbtnDeshabilidado.AutoSize = true;
            this.rbtnDeshabilidado.Font = new System.Drawing.Font("Microsoft Sans Serif", 10.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.rbtnDeshabilidado.Location = new System.Drawing.Point(221, 343);
            this.rbtnDeshabilidado.Name = "rbtnDeshabilidado";
            this.rbtnDeshabilidado.Size = new System.Drawing.Size(116, 21);
            this.rbtnDeshabilidado.TabIndex = 11;
            this.rbtnDeshabilidado.TabStop = true;
            this.rbtnDeshabilidado.Text = "Desabilitado";
            this.rbtnDeshabilidado.UseVisualStyleBackColor = true;
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
            this.panel1.TabIndex = 13;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.label5.Location = new System.Drawing.Point(9, 7);
            this.label5.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(280, 31);
            this.label5.TabIndex = 3;
            this.label5.Text = "Mantenimiento Centro";
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.navegador1.Location = new System.Drawing.Point(15, 77);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1082, 94);
            this.navegador1.TabIndex = 12;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // frmMantenimientoCentro
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(175)))), ((int)(((byte)(135)))));
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(1125, 456);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.rbtnDeshabilidado);
            this.Controls.Add(this.rbtnHabilidado);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.dgvCentro);
            this.Controls.Add(this.label1);
            this.Controls.Add(this.txtEstado);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.txtDireccion);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.txtNombre);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.txtID);
            this.DoubleBuffered = true;
            this.Name = "frmMantenimientoCentro";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmMantenimientoCentro";
            this.Load += new System.EventHandler(this.frmMantenimientoCentro_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dgvCentro)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtID;
        private System.Windows.Forms.TextBox txtNombre;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.TextBox txtEstado;
        private System.Windows.Forms.DataGridView dgvCentro;
        private System.Windows.Forms.RadioButton rbtnHabilidado;
        private System.Windows.Forms.RadioButton rbtnDeshabilidado;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label5;
        private CapaVistaNavegador.Navegador navegador1;
    }
}