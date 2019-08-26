<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeBehind="RegistroDeProducto.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.RegistroDeProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 449px;
            height: 469px;
            position: relative;
            top: -1px;
            left: 257px;
            font-weight:bold;
        }
        .auto-style2 {
            width: 386px;
            height: 227px;
            position: absolute;
            top: 234px;
            left: 717px;
        }
        .auto-style3 {
            position: relative;
            left: 1067px;
            top: -674px;
            height: 3.2em;
            width: 212px;
        }
        .auto-style4 {
            position: relative;
            left: 80px;
            top: 1px;
            width: 407px;
        }
        .auto-style5 {
            color: #E75B43; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
    <div id="caja_prin">
            <br />
                <h1 class="auto-style4">Registro De Producto</h1>
                    <br />
                    <div class="auto-style1">
                        <asp:Label ID="Label4" runat="server" Text="Nombre :"></asp:Label>
                        <asp:TextBox ID="txtnombre" runat="server" Height="32px" Width="348px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label3" runat="server" Text="Precio :"></asp:Label>
                        <asp:TextBox runat="server" ID="txtprecio" Height="32px" Width="348px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label5" runat="server" Text="Cantidad :"></asp:Label>
                        <asp:TextBox ID="txtcantidad" runat="server" Height="32px" Width="348px"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label6" runat="server" Text="Fecha de Vencimiento :"></asp:Label>
                        <asp:TextBox ID="txtfechanaci" runat="server" Height="32px" Width="348px"></asp:TextBox>
                    </div>
                   <div class="auto-style2">
                        <strong>
                        <asp:Label ID="Label8" runat="server" Text="Tipo:"></asp:Label>
                        </strong>
                        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" Height="40px" Width="310px" CssClass="auto-style5">
                        <asp:ListItem Text="Anti-Diarreico">Anti-Diarreico</asp:ListItem>
                        <asp:ListItem Text="Anti-Inflamatorio">Anti-Inflamatorio</asp:ListItem>
                        <asp:ListItem>Antibiotico</asp:ListItem>
                        <asp:ListItem>Anti-Alergicos</asp:ListItem>
                        <asp:ListItem>Anti-viral</asp:ListItem>
                        <asp:ListItem>Anti-infecciosos</asp:ListItem>
                        <asp:ListItem>Anti-pireticos</asp:ListItem>
                    </asp:DropDownList>
                    <br />
                        <strong>
                    <asp:Label ID="Label7" runat="server" Text="Url Imágen"></asp:Label>
                        <asp:TextBox ID="txtUrlImage" runat="server" Height="32px" Width="348px"></asp:TextBox>
                        </strong>
                        <br />
                   </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" Text="Guardar" OnClick="Button2_Click" CssClass="auto-style3" />
                </div>
</asp:Content>
