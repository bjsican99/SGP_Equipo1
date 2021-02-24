using CapaControlador_SGP;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.Odbc;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista_SGP
{
    public partial class frmImprimir : Form
    {
        clsGlobalCita glob = new clsGlobalCita();
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        public frmImprimir()
        {
            InitializeComponent();
            cargarGlobal();

        }

        private void cargarGlobal()
        {
            label_apellido.Text = glob.apellidog;
            label_centro.Text = glob.centrog;
            label_dpi.Text = glob.dpig;
            label_fecha.Text = glob.fechag;
            label_hora.Text = glob.horag;
            label_motivo.Text = glob.motivog;
            label_nombre.Text = glob.nombreg;
            label_telefono.Text = glob.telefonog;
            consultaNumero();
        }

        private void consultaNumero()
        {                 
            
                OdbcDataReader mostrar = controlador.funcConsultaDetallesCitaImprimir();
                try
                {
                    while (mostrar.Read())
                    {
                    label_numero_cita.Text = mostrar.GetString(0);
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            CaptureScreen();
            printDocument1.Print();
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void printDocument1_PrintPage(object sender, System.Drawing.Printing.PrintPageEventArgs e)
        {
            e.Graphics.DrawImage(memoryImage, 0, 0);
        }

        Bitmap memoryImage;
        private void CaptureScreen()
        {
           
            Graphics myGraphics = this.CreateGraphics();
            Size s = this.Size;
            memoryImage = new Bitmap(s.Width, s.Height, myGraphics);
            Graphics memoryGraphics = Graphics.FromImage(memoryImage);
            memoryGraphics.CopyFromScreen(this.Location.X, this.Location.Y, -15, -80, s);
        }
    }
}
