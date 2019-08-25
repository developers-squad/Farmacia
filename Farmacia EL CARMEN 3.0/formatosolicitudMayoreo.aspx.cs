using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class formatosolicitudMayoreo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
            lbnameProducto.Text = (String) Session["NOMBRE"];
            lbCantidad.Text = (String)Session["CANTIDAD"];
            lbPrecio.Text = (String)Session["PRECIO"];
        }
    }
}