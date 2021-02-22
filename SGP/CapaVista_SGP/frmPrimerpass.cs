using CapaControlador_SGP;
using CapaVistaSeguridad;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace CapaVista_SGP
{
    public partial class frmPrimerpass : Form
    {
        clsVariableGlobal glo = new clsVariableGlobal();
        clsControladorPasaporte controlador = new clsControladorPasaporte();
        clsFuncionesSeguridad seguridad = new clsFuncionesSeguridad();//instancia para los permisos por aplicacion
        clsVistaBitacora bit = new clsVistaBitacora();//instancia para la bitacora.
        clsValidaciones validaciones = new clsValidaciones();
        public frmPrimerpass()
        {
            InitializeComponent();
            cargar_dpi();
            CargarCombobox();
        }

        public void CargarCombobox()
        {
            //llenado de combobox de producto
            cmbtipo.DisplayMember = "nombre_pasaporte";
            cmbtipo.ValueMember = "pk_id_tipo_pasaporte";
            cmbtipo.DataSource = controlador.funcObtenerCamposComboboxPas("pk_id_tipo_pasaporte", "nombre_pasaporte", "tbl_tipo_pasaporte", "estado");
            cmbtipo.SelectedIndex = -1;
        }

        private void cargar_dpi()
        {
            txtapellido.Text = glo.apellidog;
            txtcui.Text = glo.pk_cuig;
            txtfechaN.Text = glo.fecha_nacimientog;
            txtnacionalidad.Text = glo.nacionalidadg;
            txtnombre.Text = glo.nombreg;
            txtnopasaporte.Text = glo.pk_cuig;
            txtsexo.Text = glo.sexog;       
        }

        private void label12_Click(object sender, EventArgs e)
        {
        }

        private void textBox7_TextChanged(object sender, EventArgs e)
        {
        }
        private void guardarglobal()
        {         
            glo.tipog = txtTipo1.Text;
            glo.autoridadg = txtautoridad.Text;
            glo.nolibretag = txtlibreta.Text;
            glo.urlg = txtURL.Text;

        }
        private void guardarpasaportedb()
        {
            controlador.funcInsertarPasaporte();
        }
        private void actualizarpasaportedb()
        {
            controlador.funcActualizarPasaporte_perfil();
        }
        private void button1_Click(object sender, EventArgs e)
        {
            if (seguridad.PermisosAcceso("310", glo.usuariog) == 1)
            {
                guardarglobal();
                if (rbtNuevo.Checked == true)
                {
                    guardarpasaportedb();
                }
                if (rbtRenovacion.Checked == true)
                {
                    actualizarpasaportedb();
                }
                bit.user(glo.usuariog);
                bit.insert("Imprimio pasaporte No."+txtcui.Text, 310);
                frmImpresionPasaporte impresionPasaporte = new frmImpresionPasaporte();
                impresionPasaporte.MdiParent = this.MdiParent;
                impresionPasaporte.Show();
            }
            else
            {
                bit.user(glo.usuariog);
                bit.insert("Trato de Ingresar a impresion de pasaporte", 310);
                MessageBox.Show("El Usuario No Cuenta Con Permisos De Acceso A La Aplicación");
            }

        }

        
        private void btnIngresar_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void panel3_Paint(object sender, PaintEventArgs e)
        {
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtTipo1.Text = "1";
            if (cmbtipo.SelectedIndex != -1)
            {
                txtTipo1.Text = cmbtipo.SelectedValue.ToString();
            }
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {
            dateTimePicker1.Value.ToString(dateTimePicker1.CustomFormat = "yyyy-MM-dd");
            txtfechae.Text = dateTimePicker1.Value.ToString(dateTimePicker1.CustomFormat = "yyyy-MM-dd");
        }

        private void dateTimePicker2_ValueChanged(object sender, EventArgs e)
        {
            dateTimePicker2.Value.ToString(dateTimePicker2.CustomFormat = "yyyy-MM-dd");
            txtfechafinal.Text = dateTimePicker2.Value.ToString(dateTimePicker2.CustomFormat = "yyyy-MM-dd");
            glo.fecha_emisiong = txtfechae.Text;
            glo.fecha_expiraciong = txtfechafinal.Text;
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {
        }

        private void label1_Click(object sender, EventArgs e)
        {
        }

        private void txtfechafinal_TextChanged(object sender, EventArgs e)
        {
        }

        private void button1_Click_1(object sender, EventArgs e)
        {
            // open file dialog   
            OpenFileDialog open = new OpenFileDialog();
            // image filters  
            open.Filter = "Image Files(*.jpg; *.jpeg; *.png; *.bmp)|*.jpg; *.jpeg; *.png; *.bmp";
            if (open.ShowDialog() == DialogResult.OK)
            {
                // display image in picture box  
                pictureBox1.Image = new Bitmap(open.FileName);
                // image file path  
                txtURL.Text = open.FileName;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (pictureBox1.Image != null)
            {
                pictureBox1.Image.Dispose();
                pictureBox1.Image = null;
                txtURL.Text = "";
            }
        }

        private void txtfechae_TextChanged(object sender, EventArgs e)
        {
        }

        private void rbtRenovacion_CheckedChanged(object sender, EventArgs e)
        {
           
        }

        private void rbtNuevo_CheckedChanged(object sender, EventArgs e)
        {
        }

        private void frmPrimerpass_Load(object sender, EventArgs e)
        {
        }

        private void txtlibreta_TextChanged(object sender, EventArgs e)
        {
        }

        private void btnVerificar_Click(object sender, EventArgs e)
        {
            int a, b;
            if (txtautoridad.Text != "" && txtlibreta.Text != "" && txtfechafinal.Text != "" && txtfechae.Text != "" && cmbtipo.SelectedItem != null && txtURL.Text != "")
            {
                a = 1;
            }
            else
            {
                if(txtautoridad.Text == "")
                {
                    MessageBox.Show("Falta Por llenar Autoridad");
                }
                if(txtlibreta.Text == "")
                {
                    MessageBox.Show("Falta El numero de libreta");
                }
                if(txtfechafinal.Text == "")
                {
                    MessageBox.Show("Falta Fecha de Expiración");
                }
                if(txtfechae.Text == "")
                {
                    MessageBox.Show("Falta Fecha de Emisión");
                }
                if(cmbtipo.SelectedItem == null)
                {
                    MessageBox.Show("Falta Tipo de Pasaporte");
                }
                if(txtURL.Text == "")
                {
                    MessageBox.Show("Falta Cargar la Imagen");
                }   
                a = 0;
            }

            if (rbtNuevo.Checked == true || rbtRenovacion.Checked == true)
            {
                b = 1;
            }
            else 
            {
                MessageBox.Show("Seleccione el tipo de tramite");
                b = 0;
            }
            if (a == 1 && b == 1)
            {
                btnSiguiente.Enabled = true;
            }
            else {
                btnSiguiente.Enabled = false;
            }
        }

        private void txtautoridad_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CamposLetras(e);
        }

        private void txtlibreta_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaciones.CampoNumerico(e);
        }
    }
}
