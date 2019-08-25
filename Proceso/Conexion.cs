using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Proceso
{
    public class Conexion
    {
        //funcion que regresa la conexion
        private string mensaje;
        SqlConnection conn;
        SqlTransaction tran;
        public string Mensaje
        {
            get { return mensaje; }
            set { mensaje = value; }
        }

        public Conexion()
        {
            //Cadena de Conexion Para SQL Server:
            String cadenaconexion = "Data Source=localhost;Initial Catalog=FARMACIA_EL_CARMEN;Integrated Security=True";
            conn = new SqlConnection(cadenaconexion);
        }

        public bool EjecutarSQL(String SentenciaSQL)
        {
            try
            {
                conn.Open();
                SqlCommand miComando = new SqlCommand();
                miComando.Connection = conn;
                miComando.CommandText = SentenciaSQL;
                miComando.ExecuteNonQuery();
                mensaje = "Proceso Ejecutado con Exito";
                return true;
            }
            catch (Exception e)
            {
                mensaje = "Tenemos el siguiente Fatality: " + e.Message;
                return false;
            }
            finally
            {
                conn.Close();
            }
        }

        //dataset representa una memoria cache de datos en memoria
        public DataSet ConsultarSQL(String SentenciaSQL)
        {
            //exepcion
            try
            {
                conn.Open(); //abre la conexion
                SqlDataAdapter objRes = new SqlDataAdapter(SentenciaSQL, conn);
                DataSet datos = new DataSet();
                objRes.Fill(datos, "TablaConsultada");
                mensaje = "La consulta de datos fue Exitosa";
                return datos;
            }
            catch (Exception ex)
            {
                DataSet datos2 = new DataSet();
                mensaje = "HA OCURRIDO UN ERROR " + ex.Message;
                return datos2;
            }
            finally
            {
                conn.Close(); // cierra la conexion
            }
        }


        public bool iniciarSesionEncargado(string aliasUsuario, string contraseña)
        {
            try
            {
                conn.Open();
                SqlCommand cmd = new SqlCommand("LOGEO_ENCARGADO", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@USUARIO", aliasUsuario));
                cmd.Parameters.Add(new SqlParameter("@CONTRASEÑA", contraseña));

                int result = Convert.ToInt32(cmd.ExecuteScalar());
                return result > 0;
            }
            catch(Exception e)
            {
                throw new Exception ("Error: ", e);
            }
        }

        public bool iniciarSesionCliente(string aliasUsuario, string contraseña)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("LOGEO_CLIENTE", conn);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.Add(new SqlParameter("@USUARIO", aliasUsuario));
                cmd.Parameters.Add(new SqlParameter("@CONTRASEÑA", contraseña));

                int result = Convert.ToInt32(cmd.ExecuteScalar());
                return result > 0;
            }
            catch(Exception e)
            {
                throw new Exception("Error ", e);
            }
        }
    }
}
