<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="SolicitudaBodega.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.SolicitudaBodega" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div id="caja_prin">
            <br /> 
                <div id="caja_soliBodegaClienteComun">
                 <asp:Label ID="Label2" runat="server" Text="FARMACIA EL CARMEN"></asp:Label>
                 <br />
                    <br />
                    <br />
                    <asp:Label ID="Label3" runat="server" Text="SOLICITUD A BODEGA"></asp:Label>
                    <br />
                    <br />
                    <asp:Label ID="Label4" runat="server" Text="Nombre de Medicamento :"></asp:Label>
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <asp:Label ID="Label5" runat="server" Text="Cantidad :"></asp:Label>
                    <asp:TextBox ID="TextBox2" runat="server" Width="70px"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Agregar" />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Width="581px">
                    </asp:GridView>
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Pedir" />
                    <br />
                </div>
        </div>
</asp:Content>
