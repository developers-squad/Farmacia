using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using Proceso;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }


        protected void btnIniciarsesion_Click1(object sender, EventArgs e)
        {
            Conexion con = new Conexion();

            if (txtUsuario.Text != "" && txtContra.Text != "")
            {
                if (con.iniciarSesionEncargado(txtUsuario.Text, txtContra.Text))
                {
                    Response.Redirect("HomeEncargado.aspx");
                    //Session["USUARIO"].ToString();
                }
                else if (con.iniciarSesionCliente(txtUsuario.Text, txtContra.Text))
                {
                    //Session["Login"] = txtUsuario.Text;
                    Response.Redirect("CompraCliente.aspx");
                    Response.Write("<script>alert('Bienbenido "+ txtUsuario.Text +"')</script>");
                }
                else
                {
                    Response.Write("<script>alert('Usuario no Existe')</script>" + txtUsuario.Text);
                }
            }
            else if (txtUsuario.Text != "" && txtContra.Text == "")
            {
                Response.Write("<script>alert('Ingrese su contraseña')</script>" + txtUsuario.Text);
            }
            else if (txtUsuario.Text == "" && txtContra.Text != "")
            {
                Response.Write("<script>alert('Ingrese un usuario')</script>" + txtUsuario.Text);
            }
            else
            {
                Response.Write("<script>alert('Porfavor ingrese usuario y contrase')</script>" + txtUsuario.Text);
            }
        }
    }
}