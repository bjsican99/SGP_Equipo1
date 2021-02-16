using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaControlador_SGP
{
    public class clsGlobalCita
    {
        static string pk_cita;
        static string boleta;
        static string nombre;
        static string apellido;
        static string telefono;
        static string dpi;
        static string centro_cita;
        static string fecha_cita;
        static string hora_cita;
        static string motivo_cita;
        static string estado_cita;

        public string estadog
        {
            get { return estado_cita; }
            set { estado_cita = value; }
        }

        public string motivog
        {
            get { return motivo_cita; }
            set { motivo_cita = value; }
        }
        public string citag
        {
            get { return pk_cita; }
            set { pk_cita = value; }
        }
        public string boletag
        {
            get { return boleta; }
            set { boleta = value; }
        }

        public string nombreg
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string apellidog
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public string telefonog
        {
            get { return telefono; }
            set { telefono = value; }
        }

        public string dpig
        {
            get { return dpi; }
            set { dpi = value; }
        }
        public string centrog
        {
            get { return centro_cita; }
            set { centro_cita = value; }
        }

        public string fechag
        {
            get { return fecha_cita; }
            set { fecha_cita = value; }
        }

        public string horag
        {
            get { return hora_cita; }
            set { hora_cita = value; }
        }
    }
}
