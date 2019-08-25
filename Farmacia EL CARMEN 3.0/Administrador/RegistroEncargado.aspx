<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/AdminMaster.master" AutoEventWireup="true" CodeBehind="RegistroEncargado.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.RegistroEncargado" %>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            width: 474px;
            height: 300px;
            position: relative;
            left: 539px;
            top: -724px;
            
        }
        .auto-style2 {
            width: 401px;
            height: 748px;
            position: relative;
            left: 133px;
            top: 48px;
        }
        .auto-style5 {
            position: absolute;
            left: 882px;
            top: 1001px;
        }
        </style>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
    <div id="caja_prin">          
        <div id="caja_registroP" style="margin-left: 120px">
            <br />
            <br />
            <br />
            <strong>
                <asp:Label ID="Label1" runat="server" Text="Registro De Personal" style="font-size: xx-large"></asp:Label>
            </strong>
            <br />
            <div class="auto-style2">
                <br />
                <asp:Label ID="Label10" runat="server" Text="Nombre :"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label11" runat="server" Text="Apellido :"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label16" runat="server" Text="Edad :"></asp:Label>
                <asp:TextBox ID="txtEdad" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label2" runat="server" Text="Usuario :"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label4" runat="server" Text="Correo :"></asp:Label>
                <asp:TextBox ID="txtCorreo" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label3" runat="server" Text="Contraseña :"></asp:Label>
                <asp:TextBox ID="txtContra" runat="server" Height="32px" Width="348px" TextMode="Password"></asp:TextBox>
                <br />
                <asp:Label ID="Label5" runat="server" Text="Dirección :"></asp:Label>
                <asp:TextBox ID="txtDireccion" runat="server" Height="32px" Width="348px"></asp:TextBox>
            </div>
            <br />
            <div class="auto-style1">
                <strong>
                <br />
                <asp:Label ID="Label14" runat="server" Text="Fecha de nacimiento:"></asp:Label>
                </strong>
                <br />
                <asp:TextBox ID="txtfechanac" runat="server" Height="32px" Width="299px" TextMode="Date"></asp:TextBox>
                <br />
                <br />
                <strong><asp:Label ID="Label9" runat="server" Text="Teléfono"></asp:Label>
                <br />
                </strong>
                <br />
                <asp:Label ID="Label8" runat="server" Text="Fijo :"></asp:Label>
                <asp:TextBox ID="txtFijo" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label7" runat="server" Text="Celular :"></asp:Label>
                <asp:TextBox ID="txtCelular" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label12" runat="server" Text="DUI :"></asp:Label>
                <asp:TextBox ID="txtDui" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <br />
                <asp:Label ID="Label13" runat="server" Text="AFP :"></asp:Label>
                <asp:TextBox ID="txtAfp" runat="server" Height="32px" Width="348px"></asp:TextBox>
                </div>
                <div>
                <asp:Button ID="Button2" runat="server" Text="Registrarse" Width="238px" OnClick="Button2_Click" Height="41px" CssClass="auto-style5" />
            </div>
        </div>
    </div>
</asp:Content>
