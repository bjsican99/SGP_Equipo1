namespace CapaVista_SGP
{
    partial class frmModiCita
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
            this.panel2 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.navegador1 = new CapaVistaNavegador.Navegador();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.txt_cita = new System.Windows.Forms.TextBox();
            this.txt_nombre = new System.Windows.Forms.TextBox();
            this.txt_apellido = new System.Windows.Forms.TextBox();
            this.txt_numero_boleta = new System.Windows.Forms.TextBox();
            this.txt_centro = new System.Windows.Forms.TextBox();
            this.txt_fecha = new System.Windows.Forms.TextBox();
            this.txt_estado = new System.Windows.Forms.TextBox();
            this.txt_motivo = new System.Windows.Forms.TextBox();
            this.rbtn_habilitado = new System.Windows.Forms.RadioButton();
            this.rbtn_deshabilitado = new System.Windows.Forms.RadioButton();
            this.dvg_generar_cita = new System.Windows.Forms.DataGridView();
            this.dtp_fecha = new System.Windows.Forms.DateTimePicker();
            this.cmb_centro = new System.Windows.Forms.ComboBox();
            this.cmb_motivo = new System.Windows.Forms.ComboBox();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.label10 = new System.Windows.Forms.Label();
            this.txt_hora = new System.Windows.Forms.TextBox();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dvg_generar_cita)).BeginInit();
            this.SuspendLayout();
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.White;
            this.panel2.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel2.Controls.Add(this.label1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(1468, 54);
            this.panel2.TabIndex = 13;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 19.8F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.label1.Location = new System.Drawing.Point(3, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(247, 38);
            this.label1.TabIndex = 2;
            this.label1.Text = "Generando Cita";
            // 
            // navegador1
            // 
            this.navegador1.BackColor = System.Drawing.Color.Transparent;
            this.navegador1.Location = new System.Drawing.Point(69, 62);
            this.navegador1.Margin = new System.Windows.Forms.Padding(5);
            this.navegador1.Name = "navegador1";
            this.navegador1.Size = new System.Drawing.Size(1412, 129);
            this.navegador1.TabIndex = 1;
            this.navegador1.Load += new System.EventHandler(this.navegador1_Load);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(203, 219);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(32, 17);
            this.label2.TabIndex = 14;
            this.label2.Text = "Cita";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(203, 261);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(58, 17);
            this.label3.TabIndex = 15;
            this.label3.Text = "Nombre";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(203, 303);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(58, 17);
            this.label4.TabIndex = 16;
            this.label4.Text = "Apellido";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(203, 348);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(121, 17);
            this.label5.TabIndex = 17;
            this.label5.Text = "Numero de boleta";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(203, 395);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(50, 17);
            this.label6.TabIndex = 18;
            this.label6.Text = "Centro";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(203, 444);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(47, 17);
            this.label7.TabIndex = 19;
            this.label7.Text = "Fecha";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(203, 537);
            this.label8.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(52, 17);
            this.label8.TabIndex = 20;
            this.label8.Text = "Estado";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(203, 592);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(49, 17);
            this.label9.TabIndex = 21;
            this.label9.Text = "Motivo";
            // 
            // txt_cita
            // 
            this.txt_cita.Location = new System.Drawing.Point(369, 209);
            this.txt_cita.Margin = new System.Windows.Forms.Padding(4);
            this.txt_cita.Name = "txt_cita";
            this.txt_cita.Size = new System.Drawing.Size(132, 22);
            this.txt_cita.TabIndex = 22;
            this.txt_cita.Tag = "pk_cita";
            // 
            // txt_nombre
            // 
            this.txt_nombre.Location = new System.Drawing.Point(369, 251);
            this.txt_nombre.Margin = new System.Windows.Forms.Padding(4);
            this.txt_nombre.Name = "txt_nombre";
            this.txt_nombre.Size = new System.Drawing.Size(132, 22);
            this.txt_nombre.TabIndex = 23;
            this.txt_nombre.Tag = "nombre_solicitante";
            // 
            // txt_apellido
            // 
            this.txt_apellido.Location = new System.Drawing.Point(369, 303);
            this.txt_apellido.Margin = new System.Windows.Forms.Padding(4);
            this.txt_apellido.Name = "txt_apellido";
            this.txt_apellido.Size = new System.Drawing.Size(132, 22);
            this.txt_apellido.TabIndex = 24;
            this.txt_apellido.Tag = "apellido_solicitante";
            // 
            // txt_numero_boleta
            // 
            this.txt_numero_boleta.Location = new System.Drawing.Point(369, 348);
            this.txt_numero_boleta.Margin = new System.Windows.Forms.Padding(4);
            this.txt_numero_boleta.Name = "txt_numero_boleta";
            this.txt_numero_boleta.Size = new System.Drawing.Size(132, 22);
            this.txt_numero_boleta.TabIndex = 25;
            this.txt_numero_boleta.Tag = "fk_numero_boleta";
            // 
            // txt_centro
            // 
            this.txt_centro.Location = new System.Drawing.Point(369, 395);
            this.txt_centro.Margin = new System.Windows.Forms.Padding(4);
            this.txt_centro.Name = "txt_centro";
            this.txt_centro.Size = new System.Drawing.Size(132, 22);
            this.txt_centro.TabIndex = 26;
            this.txt_centro.Tag = "fk_id_centro";
            this.txt_centro.TextChanged += new System.EventHandler(this.txt_centro_TextChanged);
            // 
            // txt_fecha
            // 
            this.txt_fecha.Location = new System.Drawing.Point(369, 441);
            this.txt_fecha.Margin = new System.Windows.Forms.Padding(4);
            this.txt_fecha.Name = "txt_fecha";
            this.txt_fecha.Size = new System.Drawing.Size(132, 22);
            this.txt_fecha.TabIndex = 27;
            this.txt_fecha.Tag = "fecha_cita";
            this.txt_fecha.TextChanged += new System.EventHandler(this.txt_fecha_TextChanged);
            // 
            // txt_estado
            // 
            this.txt_estado.Location = new System.Drawing.Point(369, 537);
            this.txt_estado.Margin = new System.Windows.Forms.Padding(4);
            this.txt_estado.Name = "txt_estado";
            this.txt_estado.Size = new System.Drawing.Size(132, 22);
            this.txt_estado.TabIndex = 28;
            this.txt_estado.Tag = "estado_cita";
            // 
            // txt_motivo
            // 
            this.txt_motivo.Location = new System.Drawing.Point(369, 583);
            this.txt_motivo.Margin = new System.Windows.Forms.Padding(4);
            this.txt_motivo.Name = "txt_motivo";
            this.txt_motivo.Size = new System.Drawing.Size(132, 22);
            this.txt_motivo.TabIndex = 29;
            this.txt_motivo.Tag = "motivo_cita";
            this.txt_motivo.TextChanged += new System.EventHandler(this.txt_motivo_TextChanged);
            // 
            // rbtn_habilitado
            // 
            this.rbtn_habilitado.AutoSize = true;
            this.rbtn_habilitado.Location = new System.Drawing.Point(288, 665);
            this.rbtn_habilitado.Margin = new System.Windows.Forms.Padding(4);
            this.rbtn_habilitado.Name = "rbtn_habilitado";
            this.rbtn_habilitado.Size = new System.Drawing.Size(92, 21);
            this.rbtn_habilitado.TabIndex = 30;
            this.rbtn_habilitado.TabStop = true;
            this.rbtn_habilitado.Text = "Habilitado";
            this.rbtn_habilitado.UseVisualStyleBackColor = true;
            this.rbtn_habilitado.CheckedChanged += new System.EventHandler(this.rbtn_habilitado_CheckedChanged);
            // 
            // rbtn_deshabilitado
            // 
            this.rbtn_deshabilitado.AutoSize = true;
            this.rbtn_deshabilitado.Location = new System.Drawing.Point(288, 693);
            this.rbtn_deshabilitado.Margin = new System.Windows.Forms.Padding(4);
            this.rbtn_deshabilitado.Name = "rbtn_deshabilitado";
            this.rbtn_deshabilitado.Size = new System.Drawing.Size(115, 21);
            this.rbtn_deshabilitado.TabIndex = 31;
            this.rbtn_deshabilitado.TabStop = true;
            this.rbtn_deshabilitado.Text = "Deshabilitado";
            this.rbtn_deshabilitado.UseVisualStyleBackColor = true;
            this.rbtn_deshabilitado.CheckedChanged += new System.EventHandler(this.rbtn_deshabilitado_CheckedChanged);
            // 
            // dvg_generar_cita
            // 
            this.dvg_generar_cita.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dvg_generar_cita.Location = new System.Drawing.Point(591, 200);
            this.dvg_generar_cita.Margin = new System.Windows.Forms.Padding(4);
            this.dvg_generar_cita.Name = "dvg_generar_cita";
            this.dvg_generar_cita.RowHeadersWidth = 51;
            this.dvg_generar_cita.Size = new System.Drawing.Size(788, 170);
            this.dvg_generar_cita.TabIndex = 32;
            // 
            // dtp_fecha
            // 
            this.dtp_fecha.Location = new System.Drawing.Point(511, 441);
            this.dtp_fecha.Margin = new System.Windows.Forms.Padding(4);
            this.dtp_fecha.Name = "dtp_fecha";
            this.dtp_fecha.Size = new System.Drawing.Size(265, 22);
            this.dtp_fecha.TabIndex = 33;
            this.dtp_fecha.ValueChanged += new System.EventHandler(this.dtp_fecha_ValueChanged);
            // 
            // cmb_centro
            // 
            this.cmb_centro.FormattingEnabled = true;
            this.cmb_centro.Location = new System.Drawing.Point(511, 395);
            this.cmb_centro.Margin = new System.Windows.Forms.Padding(4);
            this.cmb_centro.Name = "cmb_centro";
            this.cmb_centro.Size = new System.Drawing.Size(160, 24);
            this.cmb_centro.TabIndex = 34;
            this.cmb_centro.Tag = "saltar";
            this.cmb_centro.SelectedIndexChanged += new System.EventHandler(this.cmb_centro_SelectedIndexChanged);
            // 
            // cmb_motivo
            // 
            this.cmb_motivo.FormattingEnabled = true;
            this.cmb_motivo.Location = new System.Drawing.Point(511, 582);
            this.cmb_motivo.Margin = new System.Windows.Forms.Padding(4);
            this.cmb_motivo.Name = "cmb_motivo";
            this.cmb_motivo.Size = new System.Drawing.Size(160, 24);
            this.cmb_motivo.TabIndex = 35;
            this.cmb_motivo.Tag = "saltar";
            this.cmb_motivo.SelectedIndexChanged += new System.EventHandler(this.cmb_motivo_SelectedIndexChanged);
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Time;
            this.dateTimePicker1.Location = new System.Drawing.Point(511, 486);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(4);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(265, 22);
            this.dateTimePicker1.TabIndex = 36;
            this.dateTimePicker1.ValueChanged += new System.EventHandler(this.dateTimePicker1_ValueChanged);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(207, 494);
            this.label10.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(39, 17);
            this.label10.TabIndex = 37;
            this.label10.Text = "Hora";
            // 
            // txt_hora
            // 
            this.txt_hora.Location = new System.Drawing.Point(369, 486);
            this.txt_hora.Margin = new System.Windows.Forms.Padding(4);
            this.txt_hora.Name = "txt_hora";
            this.txt_hora.Size = new System.Drawing.Size(132, 22);
            this.txt_hora.TabIndex = 38;
            this.txt_hora.Tag = "hora_cita";
            // 
            // frmModiCita
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(131)))), ((int)(((byte)(175)))), ((int)(((byte)(135)))));
            this.ClientSize = new System.Drawing.Size(1468, 756);
            this.Controls.Add(this.txt_hora);
            this.Controls.Add(this.label10);
            this.Controls.Add(this.dateTimePicker1);
            this.Controls.Add(this.cmb_motivo);
            this.Controls.Add(this.cmb_centro);
            this.Controls.Add(this.dtp_fecha);
            this.Controls.Add(this.dvg_generar_cita);
            this.Controls.Add(this.rbtn_deshabilitado);
            this.Controls.Add(this.rbtn_habilitado);
            this.Controls.Add(this.txt_motivo);
            this.Controls.Add(this.txt_estado);
            this.Controls.Add(this.txt_fecha);
            this.Controls.Add(this.txt_centro);
            this.Controls.Add(this.txt_numero_boleta);
            this.Controls.Add(this.txt_apellido);
            this.Controls.Add(this.txt_nombre);
            this.Controls.Add(this.txt_cita);
            this.Controls.Add(this.label9);
            this.Controls.Add(this.label8);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.label6);
            this.Controls.Add(this.label5);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.navegador1);
            this.Controls.Add(this.panel2);
            this.Margin = new System.Windows.Forms.Padding(3, 2, 3, 2);
            this.Name = "frmModiCita";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Fecha y hora";
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dvg_generar_cita)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label1;
        private CapaVistaNavegador.Navegador navegador1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txt_cita;
        private System.Windows.Forms.TextBox txt_nombre;
        private System.Windows.Forms.TextBox txt_apellido;
        private System.Windows.Forms.TextBox txt_numero_boleta;
        private System.Windows.Forms.TextBox txt_centro;
        private System.Windows.Forms.TextBox txt_fecha;
        private System.Windows.Forms.TextBox txt_estado;
        private System.Windows.Forms.TextBox txt_motivo;
        private System.Windows.Forms.RadioButton rbtn_habilitado;
        private System.Windows.Forms.RadioButton rbtn_deshabilitado;
        private System.Windows.Forms.DataGridView dvg_generar_cita;
        private System.Windows.Forms.DateTimePicker dtp_fecha;
        private System.Windows.Forms.ComboBox cmb_centro;
        private System.Windows.Forms.ComboBox cmb_motivo;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txt_hora;
    }
}