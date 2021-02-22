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

namespace CapaVista_SGP.Reportes
{
    public partial class frmBitacoraFiltro : Form
    {
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        string campo, dato;
        public frmBitacoraFiltro()
        {
            InitializeComponent();
        }

        private void frmBitacoraFiltro_Load(object sender, EventArgs e)
        {

        }

        private void btnPrint_Click(object sender, EventArgs e)
        {
            DGVPrinter printer = new DGVPrinter();
            printer.Title = "Reporte Bitacora";//header
            printer.SubTitle = string.Format("Date: {0}", DateTime.Now.Date);
            printer.SubTitleFormatFlags = StringFormatFlags.LineLimit | StringFormatFlags.NoClip;
            printer.PageNumbers = true;
            printer.PageNumberInHeader = false;
            printer.PorportionalColumns = true;
            printer.HeaderCellAlignment = StringAlignment.Near;
            printer.Footer = "FoxLearn";//Foote
            printer.FooterSpacing = 15;
            printer.PrintDataGridView(dgvBitacora);
        }

        private void btnActualizar_Click(object sender, EventArgs e)
        {
            CargarDetalles();
        }
        public void CargarDetalles()
        {
            dgvBitacora.Rows.Clear();

            OdbcDataReader mostrar = controlador.funcConsultaDetallesBitacora();
            try
            {
                while (mostrar.Read())
                {
                    dgvBitacora.Rows.Add(mostrar.GetString(0), mostrar.GetString(1), mostrar.GetString(2), mostrar.GetString(3), mostrar.GetString(4), mostrar.GetString(5), mostrar.GetString(6));

                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }
        public void CargarDetallesFiltro()
        {
            dgvBitacora.Rows.Clear();

            OdbcDataReader mostrar = controlador.funcConsultaDetallesBitacoraFiltro(campo, dato);
            try
            {
                while (mostrar.Read())
                {
                    dgvBitacora.Rows.Add(mostrar.GetString(0), mostrar.GetString(1), mostrar.GetString(2), mostrar.GetString(3), mostrar.GetString(4), mostrar.GetString(5), mostrar.GetString(6));

                }
            }
            catch (Exception err)
            {
                Console.WriteLine(err.Message);
            }
        }

        private void rbUser_CheckedChanged(object sender, EventArgs e)
        {
            btnFiltrar.Enabled = true;
        }

        private void rbIP_CheckedChanged(object sender, EventArgs e)
        {
            btnFiltrar.Enabled = true;
        }

        private void rbAplicacion_CheckedChanged(object sender, EventArgs e)
        {
            btnFiltrar.Enabled = true;
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (rbUser.Checked==false && rbIP.Checked==false && rbAplicacion.Checked==false)
            {
                MessageBox.Show("Seleccione el campo a filtar");
            }
            if (rbUser.Checked == true && txtUser.Text != "")
            {
                campo = "fk_idusuario_bitacora";
                dato = txtUser.Text;
                CargarDetallesFiltro();
            }
            if (rbIP.Checked == true && txtIP.Text != "")
            {
                campo = "direccionhost_bitacora";
                dato = "'" + txtIP.Text + "'";
                CargarDetallesFiltro();
            }
            if (rbAplicacion.Checked == true && txtAplicacion.Text != "")
            {
                campo = "fk_idaplicacion_bitacora";
                dato = txtAplicacion.Text;
                CargarDetallesFiltro();
            }
          
        }
    }
}
