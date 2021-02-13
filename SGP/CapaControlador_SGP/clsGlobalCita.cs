using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace CapaControlador_SGP
{
    public class clsGlobalCita
    {
        static string boleta;
        static string nombre;
        static string apellido;
        static string telefono;
        static string dpi;

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
    }
}
