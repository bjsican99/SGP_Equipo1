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
        public OdbcDataReader funcConsultaDetalles(string Tabla, string CodPedido)
        {
            string Consulta = "SELECT * FROM " + Tabla + " Where fk_id_pedido_encabezado = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }

        public DataTable funcObtenerCUI(string Campo1, string Campo2, string Tabla, string Estado)
        {
            string Comando = string.Format("SELECT * FROM" + Tabla + " WHERE " + Campo1 + " =  or " + Campo1 + " = 4 or " + Campo1 + " = 5 ;");
            return Modelo.funcObtenerCamposCombobox(Comando);
        }
    }
}
