using CapaControlador_SGP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Drawing.Printing;
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
            pictureBox1.Image = new Bitmap(glo.urlg);

        }

        private void frmImpresionPasaporte_Load(object sender, EventArgs e)
        {
        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.DrawImage(memoryImage, 0, 0);
        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            btnPrint.Visible = false;

            CaptureScreen();
            printDocument1.Print();
            this.Close();

        }
    
        Bitmap memoryImage;
        private void CaptureScreen()
        {
            btnPrint.Visible = false;
            Graphics myGraphics = this.CreateGraphics();
            Size s = this.Size;
            memoryImage = new Bitmap(s.Width, s.Height, myGraphics);
            Graphics memoryGraphics = Graphics.FromImage(memoryImage);
            memoryGraphics.CopyFromScreen(this.Location.X, this.Location.Y, 0, 0, s);
        }
    }
}
