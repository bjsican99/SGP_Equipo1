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
    public partial class frmVerificacionDatos : Form
    {
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        public frmVerificacionDatos()
        {
            InitializeComponent();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            frmPrimerpass frmPrimerpass = new frmPrimerpass();
            frmPrimerpass.MdiParent = this.MdiParent;
            frmPrimerpass.Show();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnModificar_Click(object sender, EventArgs e)
        {
            consultacui();
        }

        public void consultacui()
        {
           
        }
    }
}
