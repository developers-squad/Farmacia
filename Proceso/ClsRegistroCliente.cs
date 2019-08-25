using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proceso
{
    public class ClsRegistroCliente : Conexion
    {
        private string nombre, apellido, direccion, telfijo, celular,
            correo, usuario, contrasenia, tipocliente;

        public string pNombre {
            get { return nombre; }
            set { nombre = value; }
        }
        public string pApellido {
            get { return apellido; }
            set { apellido = value; }
        }
        public string pDireccion {
            get { return direccion; }
            set { direccion = value; }
        }
        public string pTelfijo
        {
            get { return telfijo; }
            set { telfijo = value; }
        }
        public string pCelular
        {
            get { return celular; }
            set { celular = value; }
        }
        public string pCorreo
        {
            get { return correo; }
            set { correo = value; }
        }
        public string pUsuario
        {
            get { return usuario; }
            set { usuario = value; }
        }
        public string pContra
        {
            get { return contrasenia; }
            set { contrasenia = value; }
        }
        public string pTipo
        {
            get { return tipocliente; }
            set { tipocliente = value; }
        }

        public bool insertarCliente()
        {
            try
            {
                string sql = "INSERT INTO CLIENTE VALUES ('"+ this.nombre +"','"+ this.apellido +"',"+
                    "'"+ this.direccion +"','"+ this.telfijo +"', '"+ this.celular +"','"+ this.correo + "',"+
                    "'"+ this.usuario +"','"+ this.contrasenia +"','"+ this.tipocliente +"')";
                bool respuestaSQL = EjecutarSQL(sql);
                return respuestaSQL;
            }

            catch (Exception e)
            {
                throw new Exception("Error: ", e);
            }
        }

        public bool ActualizarCliente()
        {
            string cadenaSQLActualizar = "UPDATE CLIENTE SET NOMBRE = '"+this.nombre+"', APELLIDO = '"+this.apellido+"', DIRECCION = '"+this.direccion+"', TELFIJO = '"+ this.telfijo +"', CELULAR = '"+celular+"', CORREO = '"+this.correo+"', CONTRASENIA = '"+this.contrasenia+"' WHERE(USUARIO = '"+this.usuario+"')";
            bool respuestaSQL = EjecutarSQL(cadenaSQLActualizar);
            return respuestaSQL;
        }
    }
}
