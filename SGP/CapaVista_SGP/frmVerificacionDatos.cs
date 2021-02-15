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
    public partial class frmVerificacionDatos : Form
    {
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        clsVariableGlobal glo = new clsVariableGlobal();
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
            CargarDetalles();
        }

        public void CargarDetalles()
        {
            if (txtCUI.Text != "")
            {
                dgvCUI.Rows.Clear();

                OdbcDataReader mostrar = controlador.funcConsultaDetallesCUI("tbl_usuario_pasaporte", txtCUI.Text);
                try
                {
                    while (mostrar.Read())
                    {
                        dgvCUI.Rows.Add(mostrar.GetString(0), mostrar.GetString(1), mostrar.GetString(2), mostrar.GetString(3), mostrar.GetString(4), mostrar.GetString(5), mostrar.GetString(6), mostrar.GetString(7), mostrar.GetString(8), mostrar.GetString(9), mostrar.GetString(10), mostrar.GetString(11), mostrar.GetString(12));
                       
                        glo.pk_cuig = mostrar.GetString(0);
                        glo.nombreg = mostrar.GetString(1);
                        glo.apellidog = mostrar.GetString(2);
                        glo.sexog = mostrar.GetString(3);
                        glo.fecha_nacimientog= mostrar.GetString(4);
                        glo.estado_civilg= mostrar.GetString(5);
                        glo.nacionalidadg= mostrar.GetString(6);
                        glo.dpi_padreg= mostrar.GetString(7);
                        glo.nombre_padreg= mostrar.GetString(8);
                        glo.apellido_padreg= mostrar.GetString(9);
                        glo.dpi_madreg= mostrar.GetString(10);
                        glo.nombre_madreg= mostrar.GetString(11);
                        glo.apellido_madreg= mostrar.GetString(12);
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            }
        }

        private void dgvCUI_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void frmVerificacionDatos_Load(object sender, EventArgs e)
        {

        }

        private void btnBoleto_Click(object sender, EventArgs e)
        {
            boleto();
        }
        private void boleto()
        {
            if (txtBoleto.Text != "")
            {

                OdbcDataReader mostrar = controlador.funcConsultaDetallesBoleto("tbl_municipalidad", txtBoleto.Text);
                try
                {
                    while (mostrar.Read())
                    {
                        txtEstadoBoleto.Text = mostrar.GetString(1);   
                        if (txtEstadoBoleto.Text == "1")
                        {
                            panelBoleta.BackColor = Color.Lime;
                        }
                        if (txtEstadoBoleto.Text == "0")
                        {
                            panelBoleta.BackColor = Color.Red;
                        }
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            }

        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
