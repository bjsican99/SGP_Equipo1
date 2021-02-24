
namespace CapaVista_SGP
{
    partial class frmPrincipal
    {
        /// <summary>
        /// Variable del diseñador necesaria.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Limpiar los recursos que se estén usando.
        /// </summary>
        /// <param name="disposing">true si los recursos administrados se deben desechar; false en caso contrario.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Código generado por el Diseñador de Windows Forms

        /// <summary>
        /// Método necesario para admitir el Diseñador. No se puede modificar
        /// el contenido de este método con el editor de código.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmPrincipal));
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.fileMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.exitToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cerrarSesionToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.centrosToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.tipoPasaporteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.motivoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.procesoToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.citasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.emisionPasaporteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.toolsMenu = new System.Windows.Forms.ToolStripMenuItem();
            this.optionsToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cambioDeContrasenaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoDeUsuarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoAplicacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionPerfilYAplicacionesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoModuloToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.perfilesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.mantenimientoAPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.asignacionDeAplicacionAPerfilToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.bitacoraToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.busquedaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteBitacoraToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteDeCitasToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reporteDePasaportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.statusStrip = new System.Windows.Forms.StatusStrip();
            this.toolStripStatusLabel = new System.Windows.Forms.ToolStripStatusLabel();
            this.toolTip = new System.Windows.Forms.ToolTip(this.components);
            this.txtusuario = new System.Windows.Forms.TextBox();
            this.menuStrip.SuspendLayout();
            this.statusStrip.SuspendLayout();
            this.SuspendLayout();
            // 
            // menuStrip
            // 
            this.menuStrip.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.menuStrip.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.fileMenu,
            this.mantenimientosToolStripMenuItem,
            this.procesoToolStripMenuItem,
            this.toolsMenu,
            this.reportesToolStripMenuItem});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(4, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(946, 24);
            this.menuStrip.TabIndex = 0;
            this.menuStrip.Text = "MenuStrip";
            this.menuStrip.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip_ItemClicked);
            // 
            // fileMenu
            // 
            this.fileMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.exitToolStripMenuItem,
            this.cerrarSesionToolStripMenuItem});
            this.fileMenu.ForeColor = System.Drawing.Color.White;
            this.fileMenu.ImageTransparentColor = System.Drawing.SystemColors.ActiveBorder;
            this.fileMenu.Name = "fileMenu";
            this.fileMenu.Size = new System.Drawing.Size(60, 20);
            this.fileMenu.Text = "&Archivo";
            // 
            // exitToolStripMenuItem
            // 
            this.exitToolStripMenuItem.Name = "exitToolStripMenuItem";
            this.exitToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.exitToolStripMenuItem.Text = "&Salir";
            this.exitToolStripMenuItem.Click += new System.EventHandler(this.ExitToolsStripMenuItem_Click);
            // 
            // cerrarSesionToolStripMenuItem
            // 
            this.cerrarSesionToolStripMenuItem.Name = "cerrarSesionToolStripMenuItem";
            this.cerrarSesionToolStripMenuItem.Size = new System.Drawing.Size(142, 22);
            this.cerrarSesionToolStripMenuItem.Text = "Cerrar sesion";
            this.cerrarSesionToolStripMenuItem.Click += new System.EventHandler(this.cerrarSesionToolStripMenuItem_Click);
            // 
            // mantenimientosToolStripMenuItem
            // 
            this.mantenimientosToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.centrosToolStripMenuItem,
            this.tipoPasaporteToolStripMenuItem,
            this.motivoToolStripMenuItem});
            this.mantenimientosToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.mantenimientosToolStripMenuItem.Name = "mantenimientosToolStripMenuItem";
            this.mantenimientosToolStripMenuItem.Size = new System.Drawing.Size(106, 20);
            this.mantenimientosToolStripMenuItem.Text = "Mantenimientos";
            // 
            // centrosToolStripMenuItem
            // 
            this.centrosToolStripMenuItem.Name = "centrosToolStripMenuItem";
            this.centrosToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.centrosToolStripMenuItem.Text = "Centros";
            this.centrosToolStripMenuItem.Click += new System.EventHandler(this.centrosToolStripMenuItem_Click);
            // 
            // tipoPasaporteToolStripMenuItem
            // 
            this.tipoPasaporteToolStripMenuItem.Name = "tipoPasaporteToolStripMenuItem";
            this.tipoPasaporteToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.tipoPasaporteToolStripMenuItem.Text = "Tipo Pasaporte";
            this.tipoPasaporteToolStripMenuItem.Click += new System.EventHandler(this.tipoPasaporteToolStripMenuItem_Click);
            // 
            // motivoToolStripMenuItem
            // 
            this.motivoToolStripMenuItem.Name = "motivoToolStripMenuItem";
            this.motivoToolStripMenuItem.Size = new System.Drawing.Size(152, 22);
            this.motivoToolStripMenuItem.Text = "Motivo";
            this.motivoToolStripMenuItem.Click += new System.EventHandler(this.motivoToolStripMenuItem_Click);
            // 
            // procesoToolStripMenuItem
            // 
            this.procesoToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.citasToolStripMenuItem,
            this.emisionPasaporteToolStripMenuItem});
            this.procesoToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.procesoToolStripMenuItem.Name = "procesoToolStripMenuItem";
            this.procesoToolStripMenuItem.Size = new System.Drawing.Size(61, 20);
            this.procesoToolStripMenuItem.Text = "Proceso";
            this.procesoToolStripMenuItem.Click += new System.EventHandler(this.procesoToolStripMenuItem_Click);
            // 
            // citasToolStripMenuItem
            // 
            this.citasToolStripMenuItem.Name = "citasToolStripMenuItem";
            this.citasToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.citasToolStripMenuItem.Text = "Citas";
            this.citasToolStripMenuItem.Click += new System.EventHandler(this.citasToolStripMenuItem_Click);
            // 
            // emisionPasaporteToolStripMenuItem
            // 
            this.emisionPasaporteToolStripMenuItem.Name = "emisionPasaporteToolStripMenuItem";
            this.emisionPasaporteToolStripMenuItem.Size = new System.Drawing.Size(171, 22);
            this.emisionPasaporteToolStripMenuItem.Text = "Emision Pasaporte";
            this.emisionPasaporteToolStripMenuItem.Click += new System.EventHandler(this.emisionPasaporteToolStripMenuItem_Click);
            // 
            // toolsMenu
            // 
            this.toolsMenu.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.optionsToolStripMenuItem});
            this.toolsMenu.ForeColor = System.Drawing.Color.White;
            this.toolsMenu.Name = "toolsMenu";
            this.toolsMenu.Size = new System.Drawing.Size(90, 20);
            this.toolsMenu.Text = "&Herramientas";
            this.toolsMenu.Click += new System.EventHandler(this.toolsMenu_Click);
            // 
            // optionsToolStripMenuItem
            // 
            this.optionsToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.cambioDeContrasenaToolStripMenuItem,
            this.mantenimientoDeUsuarioToolStripMenuItem,
            this.mantenimientoAplicacionesToolStripMenuItem,
            this.asignacionPerfilYAplicacionesToolStripMenuItem,
            this.mantenimientoModuloToolStripMenuItem,
            this.perfilesToolStripMenuItem,
            this.bitacoraToolStripMenuItem});
            this.optionsToolStripMenuItem.Name = "optionsToolStripMenuItem";
            this.optionsToolStripMenuItem.Size = new System.Drawing.Size(127, 22);
            this.optionsToolStripMenuItem.Text = "Seguridad";
            this.optionsToolStripMenuItem.Click += new System.EventHandler(this.optionsToolStripMenuItem_Click);
            // 
            // cambioDeContrasenaToolStripMenuItem
            // 
            this.cambioDeContrasenaToolStripMenuItem.Name = "cambioDeContrasenaToolStripMenuItem";
            this.cambioDeContrasenaToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.cambioDeContrasenaToolStripMenuItem.Text = "0011- Cambio de Contrasena";
            this.cambioDeContrasenaToolStripMenuItem.Click += new System.EventHandler(this.cambioDeContrasenaToolStripMenuItem_Click);
            // 
            // mantenimientoDeUsuarioToolStripMenuItem
            // 
            this.mantenimientoDeUsuarioToolStripMenuItem.Name = "mantenimientoDeUsuarioToolStripMenuItem";
            this.mantenimientoDeUsuarioToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.mantenimientoDeUsuarioToolStripMenuItem.Text = "0002- Mantenimiento de Usuario";
            this.mantenimientoDeUsuarioToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoDeUsuarioToolStripMenuItem_Click);
            // 
            // mantenimientoAplicacionesToolStripMenuItem
            // 
            this.mantenimientoAplicacionesToolStripMenuItem.Name = "mantenimientoAplicacionesToolStripMenuItem";
            this.mantenimientoAplicacionesToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.mantenimientoAplicacionesToolStripMenuItem.Text = "0003- Mantenimiento Aplicaciones";
            this.mantenimientoAplicacionesToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoAplicacionesToolStripMenuItem_Click);
            // 
            // asignacionPerfilYAplicacionesToolStripMenuItem
            // 
            this.asignacionPerfilYAplicacionesToolStripMenuItem.Name = "asignacionPerfilYAplicacionesToolStripMenuItem";
            this.asignacionPerfilYAplicacionesToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.asignacionPerfilYAplicacionesToolStripMenuItem.Text = "0006- Asignacion Perfil y Aplicaciones";
            this.asignacionPerfilYAplicacionesToolStripMenuItem.Click += new System.EventHandler(this.asignacionPerfilYAplicacionesToolStripMenuItem_Click);
            // 
            // mantenimientoModuloToolStripMenuItem
            // 
            this.mantenimientoModuloToolStripMenuItem.Name = "mantenimientoModuloToolStripMenuItem";
            this.mantenimientoModuloToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.mantenimientoModuloToolStripMenuItem.Text = "0008- Mantenimiento Modulo";
            this.mantenimientoModuloToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoModuloToolStripMenuItem_Click);
            // 
            // perfilesToolStripMenuItem
            // 
            this.perfilesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mantenimientoAPerfilToolStripMenuItem,
            this.asignacionDeAplicacionAPerfilToolStripMenuItem});
            this.perfilesToolStripMenuItem.Name = "perfilesToolStripMenuItem";
            this.perfilesToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.perfilesToolStripMenuItem.Text = "Perfiles";
            // 
            // mantenimientoAPerfilToolStripMenuItem
            // 
            this.mantenimientoAPerfilToolStripMenuItem.Name = "mantenimientoAPerfilToolStripMenuItem";
            this.mantenimientoAPerfilToolStripMenuItem.Size = new System.Drawing.Size(277, 22);
            this.mantenimientoAPerfilToolStripMenuItem.Text = "0004- Mantenimiento a Perfil";
            this.mantenimientoAPerfilToolStripMenuItem.Click += new System.EventHandler(this.mantenimientoAPerfilToolStripMenuItem_Click);
            // 
            // asignacionDeAplicacionAPerfilToolStripMenuItem
            // 
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Name = "asignacionDeAplicacionAPerfilToolStripMenuItem";
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Size = new System.Drawing.Size(277, 22);
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Text = "0005- Asignacion de aplicacion a perfil";
            this.asignacionDeAplicacionAPerfilToolStripMenuItem.Click += new System.EventHandler(this.asignacionDeAplicacionAPerfilToolStripMenuItem_Click);
            // 
            // bitacoraToolStripMenuItem
            // 
            this.bitacoraToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.reporteToolStripMenuItem,
            this.busquedaToolStripMenuItem});
            this.bitacoraToolStripMenuItem.Name = "bitacoraToolStripMenuItem";
            this.bitacoraToolStripMenuItem.Size = new System.Drawing.Size(274, 22);
            this.bitacoraToolStripMenuItem.Text = "Bitacora";
            // 
            // reporteToolStripMenuItem
            // 
            this.reporteToolStripMenuItem.Name = "reporteToolStripMenuItem";
            this.reporteToolStripMenuItem.Size = new System.Drawing.Size(126, 22);
            this.reporteToolStripMenuItem.Text = "Reporte";
            this.reporteToolStripMenuItem.Click += new System.EventHandler(this.reporteToolStripMenuItem_Click);
            // 
            // busquedaToolStripMenuItem
            // 
            this.busquedaToolStripMenuItem.Name = "busquedaToolStripMenuItem";
            this.busquedaToolStripMenuItem.Size = new System.Drawing.Size(126, 22);
            this.busquedaToolStripMenuItem.Text = "Busqueda";
            this.busquedaToolStripMenuItem.Click += new System.EventHandler(this.busquedaToolStripMenuItem_Click);
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.DropDownItems.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.reporteBitacoraToolStripMenuItem,
            this.reporteDeCitasToolStripMenuItem,
            this.reporteDePasaportesToolStripMenuItem});
            this.reportesToolStripMenuItem.ForeColor = System.Drawing.Color.White;
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            // 
            // reporteBitacoraToolStripMenuItem
            // 
            this.reporteBitacoraToolStripMenuItem.Name = "reporteBitacoraToolStripMenuItem";
            this.reporteBitacoraToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.reporteBitacoraToolStripMenuItem.Text = "Reporte Bitacora";
            this.reporteBitacoraToolStripMenuItem.Click += new System.EventHandler(this.reporteBitacoraToolStripMenuItem_Click);
            // 
            // reporteDeCitasToolStripMenuItem
            // 
            this.reporteDeCitasToolStripMenuItem.Name = "reporteDeCitasToolStripMenuItem";
            this.reporteDeCitasToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.reporteDeCitasToolStripMenuItem.Text = "Reporte De Citas";
            this.reporteDeCitasToolStripMenuItem.Click += new System.EventHandler(this.reporteDeCitasToolStripMenuItem_Click);
            // 
            // reporteDePasaportesToolStripMenuItem
            // 
            this.reporteDePasaportesToolStripMenuItem.Name = "reporteDePasaportesToolStripMenuItem";
            this.reporteDePasaportesToolStripMenuItem.Size = new System.Drawing.Size(192, 22);
            this.reporteDePasaportesToolStripMenuItem.Text = "Reporte De Pasaportes";
            this.reporteDePasaportesToolStripMenuItem.Click += new System.EventHandler(this.reporteDePasaportesToolStripMenuItem_Click);
            // 
            // statusStrip
            // 
            this.statusStrip.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.statusStrip.ImageScalingSize = new System.Drawing.Size(20, 20);
            this.statusStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.toolStripStatusLabel});
            this.statusStrip.Location = new System.Drawing.Point(0, 436);
            this.statusStrip.Name = "statusStrip";
            this.statusStrip.Size = new System.Drawing.Size(946, 22);
            this.statusStrip.TabIndex = 2;
            this.statusStrip.Text = "StatusStrip";
            // 
            // toolStripStatusLabel
            // 
            this.toolStripStatusLabel.Name = "toolStripStatusLabel";
            this.toolStripStatusLabel.Size = new System.Drawing.Size(42, 17);
            this.toolStripStatusLabel.Text = "Estado";
            // 
            // txtusuario
            // 
            this.txtusuario.Enabled = false;
            this.txtusuario.Location = new System.Drawing.Point(834, 4);
            this.txtusuario.Name = "txtusuario";
            this.txtusuario.Size = new System.Drawing.Size(100, 20);
            this.txtusuario.TabIndex = 4;
            // 
            // frmPrincipal
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(14)))), ((int)(((byte)(36)))), ((int)(((byte)(48)))));
            this.BackgroundImage = ((System.Drawing.Image)(resources.GetObject("$this.BackgroundImage")));
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(946, 458);
            this.Controls.Add(this.txtusuario);
            this.Controls.Add(this.statusStrip);
            this.Controls.Add(this.menuStrip);
            this.DoubleBuffered = true;
            this.IsMdiContainer = true;
            this.MainMenuStrip = this.menuStrip;
            this.Name = "frmPrincipal";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "frmPrincipal";
            this.WindowState = System.Windows.Forms.FormWindowState.Maximized;
            this.Load += new System.EventHandler(this.frmPrincipal_Load);
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.statusStrip.ResumeLayout(false);
            this.statusStrip.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }
        #endregion


        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.StatusStrip statusStrip;
        private System.Windows.Forms.ToolStripStatusLabel toolStripStatusLabel;
        private System.Windows.Forms.ToolStripMenuItem fileMenu;
        private System.Windows.Forms.ToolStripMenuItem exitToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem toolsMenu;
        private System.Windows.Forms.ToolStripMenuItem optionsToolStripMenuItem;
        private System.Windows.Forms.ToolTip toolTip;
        private System.Windows.Forms.ToolStripMenuItem procesoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem citasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem centrosToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem tipoPasaporteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem emisionPasaporteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cambioDeContrasenaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoDeUsuarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoAplicacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionPerfilYAplicacionesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoModuloToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem perfilesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem mantenimientoAPerfilToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem asignacionDeAplicacionAPerfilToolStripMenuItem;
        private System.Windows.Forms.TextBox txtusuario;
        private System.Windows.Forms.ToolStripMenuItem cerrarSesionToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem motivoToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteDeCitasToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteDePasaportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteBitacoraToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem bitacoraToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reporteToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem busquedaToolStripMenuItem;
    }
}



