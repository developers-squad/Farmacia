using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proceso
{
    public class ClsEncargado : Conexion
    {
        private string nombre;
        private string apellido;
        private string usuario;
        private string correo;
        private string password;
        private string direcion;
        private string dui;
        private string afp;
        private string fechaNac;
        private string telFijo;
        private string celu;

        private int edad;

        public string pNombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public string pApellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public string pUsuario
        {
            get { return usuario; }
            set { usuario = value; }
        }

        public string pCorreo
        {
            get { return correo; }
            set { correo = value; }
        }

        public string pPasword
        {
            get { return password; }
            set { password = value; }
        }

        public string pDireccion
        {
            get { return direcion; }
            set { direcion = value; }
        }

        public string pDui
        {
            get { return dui; }
            set { dui = value; }
        }

        public string pAfp
        {
            get { return afp; }
            set { afp = value; }
        }

        public string pFecha
        {
            get { return fechaNac; }
            set { fechaNac = value; }
        }

        public string pTelFijo
        {
            get { return telFijo; }
            set { telFijo = value; }
        }

        public string pCelu
        {
            get { return celu; }
            set { celu = value; }
        }

        public int pEdad
        {
            get { return edad; }
            set { edad = value; }
        }

        public bool insertarEncargado()
        {
            try
            {
                string sql = "INSERT INTO ENCARGADO VALUES ('"+this.nombre+"', '"+this.apellido+"', "+this.edad+", '"+this.fechaNac+"', '"+this.direcion+"', '"+this.correo+"', '"+this.usuario+"', '"+this.password+"', '"+this.dui+"', '"+this.afp+"')";
                bool respuestaSQL = EjecutarSQL(sql);
                return respuestaSQL;
            }

            catch (Exception e)
            {
                throw new Exception("Error", e);
            }
        }
    }
}
