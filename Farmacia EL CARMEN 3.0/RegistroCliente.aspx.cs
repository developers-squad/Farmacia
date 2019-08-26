using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Proceso;
using System.Data;
using System.Data.SqlClient;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class RegistroCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["Login"] != null)
            {
                txtUsuario.Enabled = false;

                SqlConnection cn = new SqlConnection("Data Source=localhost;Initial Catalog=FARMACIA_EL_CARMEN;Integrated Security=True");
                SqlCommand cmd = new SqlCommand("SELECT * FROM CLIENTE WHERE USUARIO = @USUARIO", cn);
                cmd.Parameters.AddWithValue("@USUARIO", Session["Login"].ToString());
                cn.Open();
                SqlDataReader registro = cmd.ExecuteReader();
                if (registro.Read())
                {
                    txtNombre.Text = registro["NOMBRE"].ToString();
                    txtApellido.Text = registro["APELLIDO"].ToString();
                    txtUsuario.Text = registro["USUARIO"].ToString();
                    txtCorreo.Text = registro["CORREO"].ToString();
                    txtContra.Text = registro["CONTRASENIA"].ToString();
                    txtDireccion.Text = registro["DIRECCION"].ToString();
                    txtFijo.Text = registro["TELFIJO"].ToString();
                    txtCelular.Text = registro["CELULAR"].ToString();
                    if (registro["TIPOCLIENTE"].Equals("comun"))
                    {
                        rbtnComun.Checked = true;
                        rbtnMayoreo.Checked = false;
                    }

                    else if(registro["TIPOCLIENTE"].Equals("mayoreo"))
                    {
                        rbtnMayoreo.Checked = true;
                        rbtnComun.Checked = false;
                    }
                }
                btnGuardar.Text = "Actualizar";
            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsRegistroCliente c = new ClsRegistroCliente();

            rbtnComun.Text = "Comun";
            rbtnMayoreo.Text = "Mayoreo";

            if (Session["Login"] != null)
            {
               
                c.pNombre = txtNombre.Text;
                c.pApellido = txtApellido.Text;
                c.pDireccion = txtDireccion.Text;
                c.pTelfijo = txtFijo.Text;
                c.pCelular = txtCelular.Text;
                c.pCorreo = txtCorreo.Text;
                c.pContra = txtContra.Text;

                bool respuestaSQL = c.ActualizarCliente();
                if (respuestaSQL == true)
                    Response.Redirect("CompraCliente.aspx");
                else
                    Response.Write("<script>alert('No se pudo actualizar sus datos')</script>");
            }
            else if (Session["Login"] == null)
            {
                c.pNombre = txtNombre.Text;
                c.pApellido = txtApellido.Text;
                c.pDireccion = txtDireccion.Text;
                c.pTelfijo = txtFijo.Text;
                c.pCelular = txtCelular.Text;
                c.pUsuario = txtUsuario.Text;
                c.pCorreo = txtCorreo.Text;
                c.pContra = txtContra.Text;

                if (rbtnComun.Enabled == true)
                    c.pTipo = rbtnComun.Text;
                else
                    c.pTipo = rbtnMayoreo.Text;

                bool respuestaSQL = c.insertarCliente();


                if (respuestaSQL == true) {
                    txtNombre.Text = "";
                    txtApellido.Text = "";
                    txtDireccion.Text = "";
                    txtFijo.Text = "";
                    txtCelular.Text = "";
                    txtUsuario.Text = "";
                    txtCorreo.Text = "";
                    txtContra.Text = "";
                    Response.Redirect("Login.aspx");
                }
                else
                    Response.Write("<script>alert('La cuenta no pudo ser creada intentelo mas tarde')</script>");
            }
        }
    }
}