using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proceso
{
    public class ClsProductos : Conexion
    {
        private string nombre;
        private double precio;
        private string fechaVenc;
        private int cantidad;
        private string tipo;
        private string image;

        public string pNombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public double pPrecio
        {
            get { return precio; }
            set { precio = value; }
        }

        public string pFechaVenc
        {
            get { return fechaVenc; }
            set { fechaVenc = value; }
        }

        public int pCantidad
        {
            get { return cantidad; }
            set { cantidad = value; }
        }

        public string pTipo {
            get { return tipo; }
            set { tipo = value; }
        }

        public string pImage {
            get { return image; }
            set { image = value; }
        }

        public bool insertarProducto()
        {
            try

            {
                string  sql = "INSERT INTO MERCADERIA VALUES ('"+ this.nombre+"', '"+ this.fechaVenc +"',"+
                    ""+ this.cantidad +", "+ this.precio + ", '" + this.image + "', '" + this.tipo +"')";
                bool respuestaSql = EjecutarSQL(sql);
                return respuestaSql;


            }
            catch (Exception e)
            {
                throw new Exception("Error ", e);
            }
        }

        public DataSet ConsultarProducto(string Nombre)
        {
            string cadenaSQLConsultar = "SELECT * FROM MERCADERIA WHERE NOMBRE LIKE '" + Nombre + "%'";
            DataSet ConsultaResultante = ConsultarSQL(cadenaSQLConsultar);
            return ConsultaResultante;
        }
    }
}