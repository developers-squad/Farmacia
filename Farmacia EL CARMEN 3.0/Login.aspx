<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="css/LoginDesign.css" type="text/css"/>
    <style type="text/css">
        .Contentimg {
            height: 300px;
            position: relative;
            top: 106px;
            margin-right: 20px;
            padding: 20px;
            left: 68px;
            width: 334px;
        }
        .ContentTxtbox {
            height: 295px;
            position: relative;
            top: -232px;
            width: 480px;
            left: 448px;
            margin-right: 20px;
            padding: 20px;
        }
        .divimagen {
            height: 179px;
            width: 333px;
        }
        .auto-style5 {
            position: relative;
            left: 47px;
            top: 31px;
        }
        .auto-style6 {
            width: 128px;
            height: 19px;
            position: absolute;
            left: 162px;
            top: 269px;
        }
        .auto-style7 {
            height: 149px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Menu" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="menuItem" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="Cajapadre">
         
        <div class="Contentimg">
            <div class="divimagen">
                <asp:Image ID="Image1" runat="server" Height="176px" ImageUrl="~/images/logotipo.PNG" Width="330px" />
            </div>
            <div>
                <p>Farmacia el Carmen.....</p>
            </div>
        </div>
            <div class="ContentTxtbox">
                <div>
                <asp:Label ID="label1" runat="server" Text="Usuario"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server" Height="32px" Width="348px"></asp:TextBox>
                <asp:Label ID="label2" runat="server" Text="Contraseña"></asp:Label>
                <asp:TextBox ID="txtContra" runat="server" Height="32px" Width="348px" TextMode="Password"></asp:TextBox>
                </div>
                <div class="auto-style7">
                    <asp:Button ID="btnIniciarsesion" runat="server"  Text="Iniciar Sesión" CssClass="auto-style5" OnClick="btnIniciarsesion_Click1"/>
                    <asp:HyperLink ID="LinkRegistro" runat="server" CssClass="auto-style6" NavigateUrl="~/RegistroCliente.aspx">Crear una cuenta</asp:HyperLink>
                </div>
            </div>
    </div>
</asp:Content>
