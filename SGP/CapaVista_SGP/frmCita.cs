using CapaControlador_SGP;
using CapaVistaSeguridad;
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
    public partial class frmCita : Form
    {
        clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();//instancia para los permisos por aplicacion
        clsVistaBitacora bit = new clsVistaBitacora();//instancia para la bitacora.
        clsVariableGlobal glo = new clsVariableGlobal();//variable para el usuario 
        public frmCita()
        {
            InitializeComponent();
        }

        private void frmCita_Load(object sender, EventArgs e)
        {

        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("305", glo.usuariog) == 1)
            {
                bit.user(glo.usuariog);
                bit.insert("Ingreso a Nuevo Cita", 305);
                frmNuevaCita nuevacita = new frmNuevaCita();
                nuevacita.MdiParent = this.MdiParent;
                nuevacita.Show();
            }
            else
            {
                bit.user(glo.usuariog);
                bit.insert("Trato de Ingresar a Nueva Cita", 305);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("306", glo.usuariog) == 1)
            {
                bit.user(glo.usuariog);
                bit.insert("Ingreso a Verificar Cita", 306);
                frmVerificar verificar = new frmVerificar();
                verificar.MdiParent = this.MdiParent;
                verificar.Show();
            }
            else
            {
                bit.user(glo.usuariog);
                bit.insert("Trato de Ingresar a Verificar Cita", 306);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
                
        }

        private void button1_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("307", glo.usuariog) == 1)
            {
                bit.user(glo.usuariog);
                bit.insert("Ingreso a Modificar Cita", 307);
                frmModiCita modiCita = new frmModiCita();
                modiCita.MdiParent = this.MdiParent;
                modiCita.Show();
            }
            else
            {
                bit.user(glo.usuariog);
                bit.insert("Trato de Ingresar a Modificar Cita", 307);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }
                

        }
    }
}
