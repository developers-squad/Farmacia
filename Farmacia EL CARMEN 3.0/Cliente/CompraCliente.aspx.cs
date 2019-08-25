using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Proceso;
using System.Data.SqlClient;

namespace Farmacia_EL_CARMEN_3._0
{
    public partial class CompraCliente : System.Web.UI.Page
    {

        SqlConnection cn = new SqlConnection("Data Source=localhost;Initial Catalog=FARMACIA_EL_CARMEN;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            //txtBuscar.Text = Session["login"].ToString();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT * FROM MERCADERIA WHERE NOMBRE LIKE '%" + txtBuscar.Text + "%'";
            SqlDataSource1.DataBind();
        }

        protected void ibtnCarrito_Click(object sender, ImageClickEventArgs e)
        {

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            /*CheckBox Check;
            int contador = 0;
            foreach (GridViewRow gridRow in GridView1.Rows)
            {
                Check = (CheckBox)gridRow.FindControl("CheckItem");
                if (Check.Checked)
                {
                    Session["NOMBRE"] = GridView1.SelectedRow.Cells[1].Text;
                    Session["CANTIDAD"] = GridView1.SelectedRow.Cells[2].Text;
                    Session["PRECIO"] = GridView1.SelectedRow.Cells[3].Text;
                    contador++;
                    Response.Redirect("formatosolicitudMayoreo.aspx");
                }*/
        }
    }
}