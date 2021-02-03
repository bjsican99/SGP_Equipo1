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
        public frmCita()
        {
            InitializeComponent();
        }

        private void frmCita_Load(object sender, EventArgs e)
        {

        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            frmNuevaCita nuevacita = new frmNuevaCita();
            nuevacita.MdiParent = this.MdiParent;
            nuevacita.Show();

        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            frmVerificar verificar = new frmVerificar();
            verificar.MdiParent = this.MdiParent;
            verificar.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmModiCita modiCita = new frmModiCita();
            modiCita.MdiParent = this.MdiParent;
            modiCita.Show();

        }
    }
}
