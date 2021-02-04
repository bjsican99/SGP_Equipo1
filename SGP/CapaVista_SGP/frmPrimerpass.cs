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
    public partial class frmPrimerpass : Form
    {
        public frmPrimerpass()
        {
            InitializeComponent();
        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {

        }

        private void label13_Click(object sender, EventArgs e)
        {

        }

        private void textBox8_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            frmImpresionPasaporte impresionPasaporte = new frmImpresionPasaporte();
            impresionPasaporte.MdiParent = this.MdiParent;
            impresionPasaporte.Show();
        }

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
