using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class ClienteMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cerrarSession_Click(object sender, EventArgs e)
        {
            Session["Login"] = null;
        }
    }
}