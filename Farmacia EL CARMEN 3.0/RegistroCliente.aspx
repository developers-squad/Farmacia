<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="RegistroCliente.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.RegistroCliente" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            width: 575px;
            height: 348px;
            position: absolute;
            top: 211px;
            float: right;
            left: 637px;
        }
        .auto-style2 {
            width: 434px;
            height: auto;
            position: absolute;
            top: 210px;
            float: left;
            left: 0px;
            margin-right: 0;
            margin-left: 200px
        }
        .auto-style3 {
            width: 899px;
            height: 413px;
            padding-left: 400px;
            margin-bottom: 300px;
            
            
        }
        .auto-style4 {
            position: relative;
            left: 580px;
            top: 418px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuItem" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div>
        <h1 class="align-center">Registro De Cliente</h1>
        <br />
        <div class="auto-style3">
            <div class="auto-style2">
                         <asp:Label ID="Label1" runat="server" Text="Nombre :"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" Height="32px" Width="348px"></asp:TextBox>
                         <br />
                        <asp:Label ID="Label10" runat="server" Text="Apellido :"></asp:Label>
                        <asp:TextBox ID="txtApellido" runat="server" Height="32px" Width="348px"></asp:TextBox>
                         <br />
                        <asp:Label ID="Label2" runat="server" Text="Usuario :"></asp:Label>
                        <asp:TextBox ID="txtUsuario" runat="server" Height="32px" Width="348px"></asp:TextBox>
                         <br />
                        <asp:Label ID="Label4" runat="server" Text="Correo :"></asp:Label>
                        <asp:TextBox ID="txtCorreo" runat="server" Height="32px" Width="348px"></asp:TextBox>
                         <br />
                        <asp:Label ID="Label3" runat="server" Text="Contraseña :"></asp:Label>
                        <asp:TextBox ID="txtContra" runat="server" Height="32px" Width="348px"></asp:TextBox>
                         <br />
                        <asp:Label ID="Label5" runat="server" Text="Dirección :"></asp:Label>
                        <asp:TextBox ID="txtDireccion" runat="server" Height="32px" Width="348px"></asp:TextBox>
                    </div>
                    <br />
                   <div class="auto-style1">
                        <strong>
                        <asp:Label ID="Label6" runat="server" Text="Teléfono "></asp:Label>
                        </strong>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Fijo :"></asp:Label>
                        <asp:TextBox ID="txtCelular" runat="server" Height="32px" Width="348px"></asp:TextBox>
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Celular :"></asp:Label>
                        <asp:TextBox ID="txtFijo" runat="server" Height="32px" Width="348px"></asp:TextBox>
                        <br />
                        <strong>
                        <asp:Label ID="Label9" runat="server" Text="Tipo de Cliente"></asp:Label>
                        </strong>
                        <br />
                        <br />
                    
                        <asp:RadioButton ID="rbtnComun" runat="server" Text="Común" />
                        <br />
                    
                        <asp:RadioButton ID="rbtnMayoreo" runat="server" Text="Mayoreo" />
                   </div>
                    
                    <br />
                    <asp:Button ID="btnGuardar" runat="server" Text="Registrarse" OnClick="Button2_Click" CssClass="auto-style4"/>
                    </div>
        </div>            
</asp:Content>
