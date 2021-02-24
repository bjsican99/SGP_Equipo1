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
    public partial class frmFechaCita : Form
    {
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        clsGlobalCita glo = new clsGlobalCita();
        public frmFechaCita()
        {
            InitializeComponent();
            CargarCombobox();
            CargarCombobox2();
        }

        private void label1_Click(object sender, EventArgs e)
        {
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            
            
            GuardarGlobal();
            guardarcita(); 
            frmImprimir imprimir = new frmImprimir();
            imprimir.MdiParent = this.MdiParent;

            
            
            imprimir.Show();
        }
        private void GuardarGlobal()
        {
            clsGlobalCita Global = new clsGlobalCita();
            Global.centrog = txt_centro.Text;
            Global.fechag = txt_fecha.Text;
            Global.horag = txt_hora.Text;
            Global.motivog = txt_motivo.Text;
           
        }
        private void guardarcita()
        {
            controlador.funcInsertarCita();
        }


        private void button1_Click(object sender, EventArgs e)
        {
            btnSalir.Enabled = false;
            txt_motivo.Text = "";
            txt_centro.Text = "";
            txt_fecha.Text = "";
            txt_hora.Text = "";
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_centro.Text = "1";
            if (cmb_centro.SelectedIndex != -1)
            {
                txt_centro.Text = cmb_centro.SelectedValue.ToString();
            }
        }

        private void txt_centro_TextChanged(object sender, EventArgs e)
        {
            if ((txt_centro.Text != "") && (int.Parse(txt_centro.Text) > 4))
            {
                OdbcDataReader reader = controlador.funcConsultaCombo("pk_id_centro", "tbl_centro", "estado", "nombre_centro", txt_centro.Text);
                if (reader.Read())
                {
                    cmb_centro.Text = reader.GetString(0);
                }
                else
                {
                    cmb_centro.SelectedIndex = -1;
                }
            }
        }
        public void CargarCombobox()
        {
            //llenado de combobox de producto
            cmb_centro.DisplayMember = "nombre_centro";
            cmb_centro.ValueMember = "pk_id_centro";
            cmb_centro.DataSource = controlador.funcObtenerCamposComboboxPas("pk_id_centro", "nombre_centro", "tbl_centro", "estado");
            cmb_centro.SelectedIndex = -1;

        }

        public void CargarCombobox2()
        {
            //llenado de combobox de producto
            cmb_motivo.DisplayMember = "motivo";
            cmb_motivo.ValueMember = "pk_id_motivo";
            cmb_motivo.DataSource = controlador.funcObtenerCamposComboboxPas("pk_id_motivo","motivo", "tbl_motivo", "estado");
            cmb_motivo.SelectedIndex = -1;

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            dateTimePicker1.Value.ToString(dateTimePicker1.CustomFormat = "yyyy-MM-dd");
            txt_fecha.Text = dateTimePicker1.Value.ToString(dateTimePicker1.CustomFormat = "yyyy-MM-dd");
            glo.fechag = txt_fecha.Text;        
        }
   

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            if ((txt_motivo.Text != "") && (int.Parse(txt_motivo.Text) > 4))
            {
                OdbcDataReader reader = controlador.funcConsultaCombo("pk_id_motivo", "tbl_motivo", "estado", "motivo", txt_motivo.Text);
                if (reader.Read())
                {
                    cmb_motivo.Text = reader.GetString(0);
                }
                else
                {
                    cmb_motivo.SelectedIndex = -1;
                }
            }
        }

        private void comboBox1_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            txt_motivo.Text = "1";
            if (cmb_motivo.SelectedIndex != -1)
            {
                txt_motivo.Text = cmb_motivo.SelectedValue.ToString();
            }
        }

        private void txt_hora_TextChanged(object sender, EventArgs e)
        {
            glo.horag = txt_hora.Text;     
        }

        private void txt_fecha_TextChanged(object sender, EventArgs e)
        {
        }

        private void comboBox1_SelectedIndexChanged_2(object sender, EventArgs e)
        {
        }

        private void comboBox1_SelectedIndexChanged_3(object sender, EventArgs e)
        {
 
        }

        private void cmb_hora_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_hora.Text = cmb_hora.SelectedItem.ToString();
        }

        private void btn_validar_Click(object sender, EventArgs e)
        {
            if(txt_motivo.Text != "" && txt_centro.Text != "" && txt_fecha.Text != "" && txt_hora.Text != "")
            {
                btnSalir.Enabled = true;
                txt_motivo.Enabled = false;
                txt_centro.Enabled = false;
                txt_fecha.Enabled = false;
                txt_hora.Enabled = false;
            }
            else
            {
                MessageBox.Show("Verificar Campos");
            }
        }
    }
}
