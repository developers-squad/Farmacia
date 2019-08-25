<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="Historialdefacturas.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.Historialdefacturas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div id="caja_prin">
            <br />
                <div id="caja_Historial">
                    <h1>HISTORIAL DE FACTURA</h1>
                    <br />
                   <br />
                    ;<asp:Label ID="Label3" runat="server" Text="N# de factura :"></asp:Label>
                  
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    <asp:Button ID="Button1" runat="server" Text="Buscar" />
                    <br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Width="641px">
                    </asp:GridView>
                    </div>
        </div>
</asp:Content>
