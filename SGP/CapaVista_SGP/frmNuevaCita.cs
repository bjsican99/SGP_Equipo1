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
    public partial class frmNuevaCita : Form
    {
        clsValidaciones validaciones = new clsValidaciones();
        public frmNuevaCita()
        {
            InitializeComponent();
            txt_nombre.Enabled = false;
            txt_apellido.Enabled = false;
            txt_telefono.Enabled = false;
            txt_dpi.Enabled = false;
            btnSiguiente.Enabled = false;

        }

        private void label2_Click(object sender, EventArgs e){}

        private void label1_Click(object sender, EventArgs e){}

        private void btnIngresar_Click(object sender, EventArgs e)
        {
            btnSiguiente.Enabled = false;
            txtBoleta.Enabled = true;
            txt_nombre.Text = "";
            txt_apellido.Text = "";
            txt_telefono.Text = "";
            txt_dpi.Text = "";
            txtBoleta.Text = "";
            lblbbanco.Text = "";
        }

        private void button1_Click(object sender, EventArgs e)
        {
            GuardarGlobal();
            frmFechaCita fecha = new frmFechaCita();
            fecha.MdiParent = this.MdiParent;
            fecha.Show();
        }

        private void GuardarGlobal() {

            clsGlobalCita Global = new clsGlobalCita();
            Global.boletag = txtBoleta.Text;
            Global.nombreg = txt_nombre.Text;
            Global.apellidog = txt_apellido.Text;
            Global.telefonog = txt_telefono.Text;
            Global.dpig = txt_dpi.Text;

        }
        private void VerificarBanco()
        {
            clsControladorPasaporte controlador = new clsControladorPasaporte();

            if ((txtBoleta.Text != "") && (int.Parse(txtBoleta.Text) > 4))
            {
                

                    OdbcDataReader reader = controlador.funcConsultaBanco("tbl_banco", txtBoleta.Text);
                try
                {
                    if (reader.Read())
                    {
                        txtEstadoBanco.Text = reader.GetString(0);
                    }
                }
                catch (Exception err)
                {
                    Console.WriteLine(err.Message);
                }

            }
        }

        private void btnSalir_Click(object sender, EventArgs e)
        {
            VerificarBanco();
            if (txtEstadoBanco.Text == "1")
            {
                txt_nombre.Enabled = true;
                txt_apellido.Enabled = true;
                txt_telefono.Enabled = true;
                txt_dpi.Enabled = true;
                lblbbanco.Text = "Boleta Valida";
                txtBoleta.Enabled = false;
            }
            else {
                lblbbanco.Text = "No Valida";
            }
           
        }

        private void txt_nombre_TextChanged(object sender, EventArgs e){}

        private void txtBoleta_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void txt_nombre_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CamposLetrasTexto(e);
        }

        private void txt_apellido_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CamposLetrasTexto(e);
        }

        private void txt_telefono_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void txt_dpi_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }

        private void btn_aceptar_Click(object sender, EventArgs e)
        {
            if(txtBoleta.Text != "" && txt_nombre.Text != "" && txt_apellido.Text != "" && txt_telefono.Text != "" && txt_dpi.Text != "")
            {
                btnSiguiente.Enabled = true;
                txt_nombre.Enabled = false;
                txt_apellido.Enabled = false;
                txt_telefono.Enabled = false;
                txt_dpi.Enabled = false;
            }
            else
            {
                MessageBox.Show("Verificar Campos");
            }
        }

        private void btnAyuda_Click(object sender, EventArgs e)
        {

            Help.ShowHelp(this, "HTML/Ayudas.chm", "AyudaNuevaCita.html");
        }
    }
}
