﻿using System;
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
    public partial class frmMantenimientoMotivo : Form
    {
        string UsuarioAplicacion;
        public frmMantenimientoMotivo(string usuario)
        {
            InitializeComponent();
            rbtn_habilitado.Checked = true;
            UsuarioAplicacion = usuario;
            navegador1.Usuario = UsuarioAplicacion;
            txt_estado.Text = "1";
        }

        private void navegador1_Load(object sender, EventArgs e)
        {
            List<string> CamposTabla = new List<string>();
            List<Control> lista = new List<Control>();
            //llenado de  parametros para la aplicacion 
            navegador1.aplicacion = 303;
            navegador1.tbl = "tbl_motivo";
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
            navegador1.DatosActualizar = dgv_motivo;
            navegador1.procActualizarData();
            navegador1.procCargar();
            navegador1.ayudaRuta = "HTML/Ayudas.chm";
            navegador1.ruta = "AyudaMotivo.html";
            rbtn_habilitado.Checked = true;
            rbtn_deshabilitado.Checked = false;
        }

        private void rbtn_habilitado_CheckedChanged(object sender, EventArgs e)
        {
            
                txt_estado.Text = "1";
            
        }

        private void rbtn_deshabilitado_CheckedChanged(object sender, EventArgs e)
        {
           
                txt_estado.Text = "0";
            
        }
    }
}
