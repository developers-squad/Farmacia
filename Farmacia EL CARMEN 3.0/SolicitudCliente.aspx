<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/AdminMaster.master" AutoEventWireup="true" CodeBehind="SolicitudCliente.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.SolicitudCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
      <div id="caja_prin">
            <br />
                <div id="caja_soliComun">
                  <br />
                    <h1>SOLICITUD DE CLIENTE</h1>
                    <br />
                    <h1><strong>
                    <asp:Label ID="Label3" runat="server" Text="SOLICITUDES DE CLIENTES MAYOREO"></asp:Label>
                        </strong></h1>
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Width="987px" AutoGenerateColumns="False" DataKeyNames="ID_CLIENTE" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:BoundField DataField="ID_CLIENTE" HeaderText="ID_CLIENTE" InsertVisible="False" ReadOnly="True" SortExpression="ID_CLIENTE" />
                            <asp:BoundField DataField="USUARIO" HeaderText="USUARIO" SortExpression="USUARIO" />
                            <asp:BoundField DataField="FECHA" HeaderText="FECHA" SortExpression="FECHA" />
                            <asp:HyperLinkField HeaderText="Detalles de Solicitud" NavigateUrl="~/formatosolicitudMayoreo.aspx" Text="Detalle" />
                        </Columns>
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FARMACIA_EL_CARMENConnectionString %>" SelectCommand="SELECT CLIENTE.ID_CLIENTE, CLIENTE.USUARIO, SOLICITUD.FECHA FROM CLIENTE INNER JOIN SOLICITUD ON CLIENTE.ID_CLIENTE = SOLICITUD.ID_CLIENTE WHERE (CLIENTE.TIPOCLIENTE = 'MAYOREO')"></asp:SqlDataSource>
                    <br />
                    </div>
          </div>
</asp:Content>
