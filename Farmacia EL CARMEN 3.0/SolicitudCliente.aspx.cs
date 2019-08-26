using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class SolicitudCliente : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Session[""] = GridView1.SelectedRow.Cells[0].Text;

            Response.Redirect("formatosolicitudMayoreo.aspx");
        }
    }
}