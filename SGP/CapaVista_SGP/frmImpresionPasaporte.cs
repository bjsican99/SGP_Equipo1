using CapaControlador_SGP;
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
    public partial class frmImpresionPasaporte : Form
    {
        clsVariableGlobal glo = new clsVariableGlobal();
        public frmImpresionPasaporte()
        {
            InitializeComponent();
            cargar();
        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }
        private void cargar(){
            txtApellido.Text = glo.apellidog;
            txtAutoridad.Text = glo.autoridadg;
            txtCui.Text = glo.pk_cuig;
            txtEmision.Text = glo.fecha_emisiong;
            txtLibreta.Text = glo.nolibretag;
            txtNacimiento.Text = glo.fecha_nacimientog;
            txtNacionalidad.Text = glo.nacionalidadg;
            txtNombre.Text = glo.nombreg;
            txtPasaporte.Text = glo.pk_cuig;
            txttipo.Text = glo.tipog;
            txtVencimiento.Text = glo.fecha_expiraciong;
            txtgenero.Text = glo.sexog;
            txtnaci.Text = glo.nacionalidadg;
            
        }

        private void frmImpresionPasaporte_Load(object sender, EventArgs e)
        {
        }
    }
}
