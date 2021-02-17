﻿using CapaControlador_SGP;
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
    public partial class frmModiCita : Form
    {
        string UsuarioAplicacion;
        clsVariableGlobal glo = new clsVariableGlobal();
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        public frmModiCita()
        {
            InitializeComponent();
            CargarCombobox();
            CargarCombobox4();
            rbtn_habilitado.Checked = true;
            UsuarioAplicacion = glo.usuariog;
            navegador1.Usuario = UsuarioAplicacion;
        }

        public void CargarCombobox()
        {
            //llenado de combobox de producto
            cmb_centro.DisplayMember = "nombre_centro";
            cmb_centro.ValueMember = "pk_id_centro";
            cmb_centro.DataSource = controlador.funcObtenerCamposComboboxPas("pk_id_centro", "nombre_centro", "tbl_centro", "estado");
            cmb_centro.SelectedIndex = -1;

        }
        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 3307;
            navegador1.tbl = "tbl_cita";
            navegador1.campoEstado = "estado_cita";

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
            navegador1.DatosActualizar = dvg_generar_cita;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "AYUDAS/AyudasMRP.chm";
            navegador1.ruta = "AyudaActivos.html";
            rbtn_habilitado.Checked = true;
            rbtn_deshabilitado.Checked = false;
        }

        private void rbtn_habilitado_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtn_habilitado.Checked == true)
            {
                txt_estado.Text = "1";
            }
        }

        private void rbtn_deshabilitado_CheckedChanged(object sender, EventArgs e)
        {
            if (rbtn_deshabilitado.Checked == true)
            {
                txt_estado.Text = "0";
            }
        }

        private void cmb_centro_SelectedIndexChanged(object sender, EventArgs e)
        {
            txt_estado.Text = "1";
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

        private void cmb_motivo_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        private void txt_motivo_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void txt_fecha_TextChanged(object sender, EventArgs e)
        {

        }

        private void dtp_fecha_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void dvg_generar_cita_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void frmModiCita_Load(object sender, EventArgs e)
        {

        }

        private void cmb_motivo_SelectedIndexChanged_1(object sender, EventArgs e)
        {
            txt_motivo.Text = "1";
            if (cmb_motivo.SelectedIndex != -1)
            {
                txt_motivo.Text = cmb_motivo.SelectedValue.ToString();
            }
        }
        public void CargarCombobox4()
        {
            //llenado de combobox de producto
            cmb_motivo.DisplayMember = "motivo";
            cmb_motivo.ValueMember = "pk_id_motivo";
            cmb_motivo.DataSource = controlador.funcObtenerCamposComboboxPas("pk_id_motivo", "motivo", "tbl_motivo", "estado");
            cmb_motivo.SelectedIndex = -1;

        }
    }
}