using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proceso;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class RegistroEncargado : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsEncargado en = new ClsEncargado();

            en.pNombre = txtNombre.Text;
            en.pApellido = txtApellido.Text;
            en.pEdad = Convert.ToInt32(txtEdad.Text);
            en.pUsuario = txtUsuario.Text;
            en.pCorreo = txtCorreo.Text;
            en.pPasword = txtContra.Text;
            en.pDireccion = txtDireccion.Text;
            en.pFecha = txtfechanac.Text;
            en.pTelFijo = txtFijo.Text;
            en.pCelu = txtCelular.Text;
            en.pDui = txtDui.Text;
            en.pAfp = txtAfp.Text;
            

            bool respuestaSQL = en.insertarEncargado();

            if (respuestaSQL == true)
            {
                Response.Redirect("Login.aspx");
                //Response.Write("<script>alert('Guardado con Exito')</script>");
                txtNombre.Text = "";
                txtApellido.Text = "";
                txtUsuario.Text = "";
                txtCorreo.Text = "";
                txtContra.Text = "";
                txtDireccion.Text = "";
                txtDui.Text = "";
                txtAfp.Text = "";
                txtfechanac.Text = "";
                txtEdad.Text = "";
                txtFijo.Text = "";
                txtCelular.Text = "";
            }

            else
            {
                Response.Write("<script>alert('No se pudo Guardar')</script>");
            }
        }
    }
}