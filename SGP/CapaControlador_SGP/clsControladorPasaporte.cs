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
        clsGlobalCita glo2 = new clsGlobalCita();
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
            string Consulta = "SELECT * FROM " + Tabla + " Where pk_id_usuario_pasaporte = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }

        public OdbcDataReader funcConsultaBanco(string Tabla, string CodPedido)
        {
            string Consulta = "SELECT estado_boleta FROM " + Tabla + " Where pk_numero_boleta = " + CodPedido + ";";
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
            string Consulta = "INSERT INTO tbl_pasaporte (pk_id_pasaporte, fk_id_tipo_pasaporte, fk_id_usuario_pasaporte, fecha_emision, fecha_vencimiento, numero_libreta, link_foto, link_cod_barras, link_cod_ocr, estado) VALUES("+glo.pk_cuig+", "+glo.tipog+" , "+glo.pk_cuig+",'"+ glo.fecha_emisiong +"','" + glo.fecha_expiraciong + "',123,'" + glo.urlg + "','" + glo.urlg + "','" + glo.urlg + "',1); ";
            return Modelo.funcInsertar(Consulta);
        }
        public OdbcDataReader funcInsertarCita()
        {
            string Consulta = "INSERT INTO tbl_cita (nombre_solicitante, apellido_solicitante, fk_numero_boleta, fk_id_centro, fecha_cita, hora_cita, fk_id_motivo_cita ,estado_cita) VALUES('"+ glo2.nombreg + "','" + glo2.apellidog + "'," + glo2.boletag + "," + glo2.centrog + ",'" + glo2.fechag + "','"+glo2.horag+"'," + glo2.motivog + ", 1 ); ";
            //string Consulta = "INSERT INTO tbl_cita(pk_cita, nombre_solicitante, apellido_solicitante, fk_numero_boleta, fk_id_centro, fecha_cita, hora_cita, fk_id_motivo_cita, estado_cita) VALUES('3', 'nombre1', 'apellido1', 123, 1, 2020 - 10 - 10, '08:00:00', 1, 1);";

            return Modelo.funcInsertar(Consulta);
        }

        public OdbcDataReader funcActualizarPasaporte_perfil()
        {
            string Consulta = "UPDATE  tbl_pasaporte SET fecha_emision = '"+glo.fecha_emisiong+"', fecha_vencimiento = '"+glo.fecha_expiraciong+"' where pk_id_pasaporte = " + glo.pk_cuig + ";";
            return Modelo.funcModificar(Consulta);
        }
        public OdbcDataReader funcConsultaDetallesBitacora()
        {
            string Consulta = "SELECT * FROM bitacora ;";
            return Modelo.funcConsulta(Consulta);
        }
        public OdbcDataReader funcConsultaDetallesBitacoraFiltro(string Campo, string Dato)
        {
            string Consulta = "SELECT * FROM bitacora Where " + Campo + " = " + Dato + ";";
            return Modelo.funcConsulta(Consulta);
        }
        public OdbcDataReader funcConsultaDetallespasaporte(string Tabla, string CodPedido)
        {
            string Consulta = "SELECT estado FROM " + Tabla + " Where pk_id_pasaporte = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }

        public OdbcDataReader funcConsultaDetallesCita(string CodPedido)
        {
            string Consulta = "SELECT estado_cita FROM tbl_cita Where pk_cita = " + CodPedido + ";";
            return Modelo.funcConsulta(Consulta);
        }

        public OdbcDataReader funcConsultaDetallesCitaImprimir()
        {
            string Consulta = "SELECT pk_cita FROM tbl_cita Where nombre_solicitante =  '"+ glo2.nombreg +"' and apellido_solicitante = '"+ glo2.apellidog +"' and fk_numero_boleta = "+ glo2.boletag +" and fk_id_centro = "+ glo2.centrog +" and fecha_cita = '"+ glo2.fechag +"' and hora_cita = '"+ glo2.horag +"' and estado_cita = 1  ;"  ;
            return Modelo.funcConsulta(Consulta);
        }
    }
}
