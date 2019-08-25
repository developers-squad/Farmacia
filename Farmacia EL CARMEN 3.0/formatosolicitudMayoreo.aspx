<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="formatosolicitudMayoreo.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.formatosolicitudMayoreo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div>

        <asp:Label ID="Label1" runat="server" Text="Nombre Producto"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbnameProducto" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label2" runat="server" Text="Cantidad"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbCantidad" runat="server"></asp:Label>
        <br />
        <asp:Label ID="Label3" runat="server" Text="Precio"></asp:Label>
&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lbPrecio" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Total"></asp:Label>

    </div>
    </asp:Content>
