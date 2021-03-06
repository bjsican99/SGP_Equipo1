﻿using CapaControlador_SGP;
using CapaVista_SGP.Mantenimientos;
using CapaVista_SGP.Reportes;
using CapaVistaSeguridad;
using CapaVistaSeguridad.Formularios;
using CapaVistaSeguridad.Formularios.Mantenimientos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista_SGP
{
    public partial class frmPrincipal : Form
    {
        private int childFormNumber = 0;
        clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();//instancia para los permisos por aplicacion
        clsVistaBitacora bit = new clsVistaBitacora();//instancia para la bitacora.
        clsVariableGlobal glo = new clsVariableGlobal();
        public frmPrincipal()
        {
            InitializeComponent();
            
        }

        private void ShowNewForm(object sender, EventArgs e)
        {
            Form childForm = new Form();
            childForm.MdiParent = this;
            childForm.Text = "Ventana " + childFormNumber++;
            childForm.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Archivos de texto (*.txt)|*.txt|Todos los archivos (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void CutToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void PasteToolStripMenuItem_Click(object sender, EventArgs e)
        {
        }

        private void ToolBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void StatusBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            //statusStrip.Visible = statusBarToolStripMenuItem.Checked;
        }

        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }

        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }

        private void menuStrip_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void procesoToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void citasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("304", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso A Proceso Citas", 304);
                clsVariableGlobal glo = new clsVariableGlobal();
                glo.usuariog = txtusuario.Text;
                frmCita Cita = new frmCita();
                Cita.MdiParent = this;
                Cita.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de ingresar a Proceso Citas", 304);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }  
                
        }

        private void emisionPasaporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("308", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso A Proceso Proceso Emision Pasaporte (verificacion datos)", 308);
                frmVerificacionDatos verificacionDatos = new frmVerificacionDatos();
                verificacionDatos.MdiParent = this;
                verificacionDatos.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de ingresar a Proceso Emision Pasaporte (verificacion datos)", 308);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
            
        }

        private void frmPrincipal_Load(object sender, EventArgs e)
        {
            frmLogin frm = new frmLogin();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                txtusuario.Text = frm.usuario();
                glo.usuariog = txtusuario.Text;
            }

        }

        private void optionsToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void toolsMenu_Click(object sender, EventArgs e)
        {

        }

        private void cambioDeContrasenaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmCambioContraseña frmCambioContraseña = new frmCambioContraseña(txtusuario.Text);
            frmCambioContraseña.MdiParent = this;
            frmCambioContraseña.Show();
            bit.user(txtusuario.Text);
            bit.insert("Ingreso A Cambio de Contraseña", 11);
        }

        private void mantenimientoDeUsuarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("2", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso A Mantenimiento Usuario", 2);
                frmMantenimientoUsuario mantenimientoUsuario = new frmMantenimientoUsuario(txtusuario.Text);
                mantenimientoUsuario.MdiParent = this;
                mantenimientoUsuario.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de ingresar a Mantenimiento Usuario", 2);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void mantenimientoAplicacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("3", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso A Mantenimiento Aplicaciones", 3);
                frmAplicativo aplicativo = new frmAplicativo();
                aplicativo.MdiParent = this;
                aplicativo.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar A Mantenimiento Aplicaciones", 3);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void asignacionPerfilYAplicacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("6", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Asignacion de Perfil y Aplicaciones", 6);
                frmAsignacionDeAplicaciones perfil = new frmAsignacionDeAplicaciones();
                perfil.MdiParent = this;
                perfil.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar a Asignacion de perfil y aplicaciones", 6);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void mantenimientoModuloToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("8", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("ingreso a Mantenimiento Modulo", 8);
                frmModulo modulo = new frmModulo(txtusuario.Text);
                modulo.MdiParent = this;
                modulo.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar A Mantenimiento Modulo", 8);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void mantenimientoAPerfilToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("4", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Mantenimiento Perfil", 4);
                frmMantenimientoPerfil perfil = new frmMantenimientoPerfil(txtusuario.Text);
                perfil.MdiParent = this;
                perfil.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar A Mantenimiento Modulo", 4);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void asignacionDeAplicacionAPerfilToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("5", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Asignacion de Aplicaciones a Perfil", 5);
                frmAsignarAplicacionesAPerfil perfil = new frmAsignarAplicacionesAPerfil();
                perfil.MdiParent = this;
                perfil.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar A Asignacion de Aplicaciones a perfil", 5);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void cerrarSesionToolStripMenuItem_Click(object sender, EventArgs e)
        {
            frmLogin frm = new frmLogin();
            if (frm.ShowDialog() == DialogResult.OK)
            {
                txtusuario.Text = frm.usuario();
            }
        }

        private void centrosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("301", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Mantenimiento Centros", 301);
                frmMantenimientoCentro mantenimientoCentro = new frmMantenimientoCentro(txtusuario.Text);
                mantenimientoCentro.MdiParent = this;
                mantenimientoCentro.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar a Mantenimiento Centros", 301);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }


        }

        private void tipoPasaporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("302", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Mantenimiento Tipo Pasaporte", 302);
                frmMantenimientoPasaporte frmMantenimientoPasaporte = new frmMantenimientoPasaporte(txtusuario.Text);
                frmMantenimientoPasaporte.MdiParent = this;
                frmMantenimientoPasaporte.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar a Mantenimiento Tipo Pasaporte", 302);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void motivoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("303", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Mantenimiento Motivo de Gestion", 303);
                frmMantenimientoMotivo mantenimientoMotivo = new frmMantenimientoMotivo(txtusuario.Text);
                mantenimientoMotivo.MdiParent = this;
                mantenimientoMotivo.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ingresar a Mantenimiento Motivo de Gestion", 303);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void reporteBitacoraToolStripMenuItem_Click(object sender, EventArgs e)
        {
           
        }

        private void reporteDeCitasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("311", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Ver Reporte de Citas", 311);
                frmReporteCitas reportebita = new frmReporteCitas();
                reportebita.MdiParent = this;
                reportebita.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ver Reporte de Citas", 311);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void reporteDePasaportesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("312", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Ver Reporte de Pasaportes", 312);
                frmReportePasaporte reportebita = new frmReportePasaporte();
                reportebita.MdiParent = this;
                reportebita.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ver Reporte de Pasaportes", 312);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void reporteToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("12", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Ver Reporte de Bitacora", 12);
                frmReporteBitacora reportebita = new frmReporteBitacora();
                reportebita.MdiParent = this;
                reportebita.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ver Reporte Bitacora", 12);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void busquedaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("12", txtusuario.Text) == 1)
            {
                bit.user(txtusuario.Text);
                bit.insert("Ingreso a Ver Reporte de Bitacora", 12);
                frmBitacoraFiltro reportebita = new frmBitacoraFiltro();
                reportebita.MdiParent = this;
                reportebita.Show();
            }
            else
            {
                bit.user(txtusuario.Text);
                bit.insert("Trato de Ver Reporte Bitacora", 12);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }
    }
}
