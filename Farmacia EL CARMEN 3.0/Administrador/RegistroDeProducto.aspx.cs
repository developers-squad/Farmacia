using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proceso;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Data;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class RegistroDeProducto : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ClsProductos p = new ClsProductos();

            string itemseleccionado = DropDownList1.SelectedItem.Text;

            p.pNombre = txtnombre.Text;
            p.pPrecio = double.Parse(txtprecio.Text);
            p.pCantidad = int.Parse(txtcantidad.Text);
            p.pFechaVenc = txtfechanaci.Text;
            p.pTipo = itemseleccionado;
            p.pImage = txtUrlImage.Text;

            bool respuestasql = p.insertarProducto();
          if( respuestasql == true)
            {
                Response.Write("<script>alert('guardado')</script>");
                txtnombre.Text = "";
                txtprecio.Text = "";
                txtcantidad.Text = "";
                txtfechanaci.Text = "";
            }
            else
            {
                Response.Write("<script>alert('Error al guardar')</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }
    }
}