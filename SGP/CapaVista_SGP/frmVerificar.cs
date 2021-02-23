using CapaControlador_SGP;
using CapaVistaSeguridad;
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
    public partial class frmVerificar : Form
    {
        clsValidaciones validaciones = new clsValidaciones();
        clsVistaBitacora bit = new clsVistaBitacora();//instancia para la bitacora.
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        clsVariableGlobal glo = new clsVariableGlobal();
        public frmVerificar()
        {
            InitializeComponent();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            boleto();
        }
        private void boleto()
        {
            if (txt_cita.Text != "")
            {

                OdbcDataReader mostrar = controlador.funcConsultaDetallesBoleto("tbl_cita", txt_cita.Text);
                try
                {
                    while (mostrar.Read())
                    {
                        txtEstadoBoleto.Text = mostrar.GetString(1);
                        if (txtEstadoBoleto.Text == "1")
                        {
                            pnl_cita.BackColor = Color.Lime;
                            bit.user(glo.usuariog);
                            bit.insert("Boleto No." + txt_cita.Text + " VALIDO para " + txt_cita.Text, 308);

                        }
                        if (txtEstadoBoleto.Text == "0")
                        {
                            pnl_cita.BackColor = Color.Red;
                            bit.user(glo.usuariog);
                            bit.insert("Boleto No." + txt_cita.Text + " NO VALIDO para " + txt_cita.Text, 308);
                        }
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }
            }
        }
    }
}
