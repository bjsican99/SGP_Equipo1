using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista_SGP.Mantenimientos
{
    public partial class frmMantenimientoCentro : Form
    {
        string UsuarioAplicacion;
        public frmMantenimientoCentro(string usuario)
        {
            InitializeComponent();
            //Manda el nombre se usuario al navegador
            rbtnHabilidado.Checked = true;
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3307;
            navegador1.tbl = "tbl_centro";
            navegador1.campoEstado = "estado";

            //se agregan los componentes del formulario a la lista tipo control

            foreach (Control C in this.Controls)
            {

                if (C.Tag != null)
                {
                    if (C.Tag.ToString() == "saltar")
                    {

                    }
                    else
                    {
                        if (C is TextBox)
                        {
                            lista.Add(C);

                        }
                        else if (C is ComboBox)
                        {
                            lista.Add(C);

                        }
                        else if (C is DateTimePicker)
                        {
                            lista.Add(C);

                        }
                    }

                }


            }

            navegador1.control = lista;
            navegador1.formulario = this;
            navegador1.DatosActualizar = dgvCentro;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
            rbtnDeshabilidado.Checked = true;
            rbtnDeshabilidado.Checked = false;
        }

        private void frmMantenimientoCentro_Load(object sender, EventArgs e)
        {

        }
    }
}
