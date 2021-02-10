using CapaModelo_SGP;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Odbc;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaControlador_SGP
{
    public class clsControladorPasaporte
    {
        clsModeloPasaporte Modelo = new clsModeloPasaporte();
        clsVariableGlobal glo = new clsVariableGlobal();
        public DataTable funcObtenerCamposCombobox(string Campo1, string Campo2, string Tabla, string Estado)
        {
            string Comando = string.Format("SELECT " + Campo1 + " ," + Campo2 + " FROM " + Tabla + " WHERE " + Estado + "= 1;");
            return Modelo.funcObtenerCamposCombobox(Comando);
        }
        public OdbcDataReader funcConsultaCombo(string Campo1, string Campo2, string Tabla, string Estado, string Codigo)
        {
            string Comando = string.Format("SELECT " + Campo1 + " FROM " + Tabla + " WHERE " + Estado + "= 1 AND " + Campo2 + " = " + Codigo + ";");
            return Modelo.funcConsulta(Comando);

        }

        public DataTable funcObtenerCamposComboboxMora(string Campo1, string Campo2, string Tabla, string Estado)
        {
            string Comando = string.Format("SELECT " + Campo1 + " ," + Campo2 + " FROM " + Tabla + " WHERE " + Campo1 + " = 3 or " + Campo1 + " = 4 or " + Campo1 + " = 5 ;");
            return Modelo.funcObtenerCamposCombobox(Comando);
        }

        public OdbcDataReader funcEliminar_perfil(string Codigo)
        {
            string Consulta = "UPDATE  control_producto SET resultado_control_producto = 'Finalizado', estado_control_producto = 0 where pk_id_control_producto = " + Codigo + ";";
            return Modelo.funcModificar(Consulta);
        }
        public OdbcDataReader funcConsultaDetallesCUI(string Tabla, string CodPedido)
        {
            string Consulta = "SELECT * FROM " + Tabla + " Where pk_cui = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }
        public OdbcDataReader funcConsultaDetallesBoleto(string Tabla, string CodPedido)
        {
            string Consulta = "SELECT * FROM " + Tabla + " Where pk_numero_boleto = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }
        public DataTable funcObtenerCamposComboboxPas(string Campo1, string Campo2, string Tabla, string Estado)
        {
            string Comando = string.Format("SELECT " + Campo1 + " ," + Campo2 + " FROM " + Tabla + " WHERE " + Estado + "= 1;");
            return Modelo.funcObtenerCamposCombobox(Comando);
        }
        public OdbcDataReader funcInsertarPasaporte()
        {
            string Consulta = "INSERT INTO tbl_pasaporte (pk_id_pasaporte, fk_id_tipo_pasaporte, fk_id_usuario_pasaporte, fecha_emision, fecha_vencimiento, numero_libreta, link_foto, estado) VALUES("+glo.pk_cuig+", 1 , "+glo.pk_cuig+","+ glo.fecha_emisiong +","+ glo.fecha_expiraciong +","+glo.nolibretag+","+glo.urlg+",1); ";
            return Modelo.funcInsertar(Consulta);
        }
        public OdbcDataReader funcActualizarPasaporte_perfil()
        {
            string Consulta = "UPDATE  tbl_pasaporte SET fecha_emision = "+glo.fecha_emisiong+", fecha_vencimiento = "+glo.fecha_expiraciong+" where pk_id_pasaporte = " + glo.pk_cuig + ";";
            return Modelo.funcModificar(Consulta);
        }
    }
}
