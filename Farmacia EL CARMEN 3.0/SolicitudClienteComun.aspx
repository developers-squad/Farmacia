<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/AdminMaster.master" AutoEventWireup="true" CodeBehind="SolicitudClienteComun.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.SolicitudClienteComun" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
     <div id="caja_prin">
            <br />
                <div id="caja_soliComun">
                    <h1>SOLICITUDES DE CLIENTES COMUNES</h1>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Width="581px">
                    </asp:GridView>
                    <br />
                 </div>
         </div>
</asp:Content>
