<%@ Page Title="" Language="C#" MasterPageFile="~/ClienteMaster.master" AutoEventWireup="true" CodeBehind="CompraCliente.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.CompraCliente" %>
<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Contenido" runat="server">
           <div id="caja_prin">
            <br />   
                <div id="caja_compra" role="checkbox">
                    <h1 style="width: 839px; position: relative; left: 123px; top: 0px">COMPRAS</h1>
                    <asp:TextBox ID="txtBuscar" runat="server" Width="359px" Height="28px" style="position: relative; left: 299px; top: 4px"></asp:TextBox>
                    <asp:Button ID="Button2" runat="server" Text="Buscar" Width="230px" OnClick="Button2_Click" style="position: relative; top: -38px; left: 712px; height: 42px" />
                    <br />
                    <br />
                    <br />
                    <br />
                  
                    <asp:GridView ID="GridView1" runat="server" Width="969px" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" Height="217px" HorizontalAlign="Center" OnPageIndexChanged="Button2_Click" OnSelectedIndexChanged="Button2_Click" style="margin-right: 46; position: relative; left: 157px; top: -52px;">
                        <Columns>
                            <asp:ImageField DataImageUrlField="IMAGEN" HeaderText="IMAGEN">
                            </asp:ImageField>
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" >
                            </asp:BoundField>
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" >
                            </asp:BoundField>
                            <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" >
                            </asp:BoundField>
                            <asp:TemplateField HeaderText="AGREGAR">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckItem" runat="server" AutoPostBack="True" Text="Agregar"/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                    <asp:ImageButton ID="ibtnCarrito" runat="server" ImageUrl="~/images/add-shopping-cart_opt.png" OnClick="ibtnCarrito_Click" style="width: 64px; height: 55px; position: absolute; top: 158px; left: 990px" />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FARMACIA_EL_CARMENConnectionString %>" SelectCommand="SELECT NOMBRE, CANTIDAD, PRECIO, IMAGEN FROM MERCADERIA WHERE (TIPO = 'ANALGESICO') ORDER BY NOMBRE, FECHA_VEN, PRECIO" DataSourceMode="DataReader"></asp:SqlDataSource>
                    <asp:ImageButton ID="ImageButton1" runat="server" DescriptionUrl="Solicitar" ImageUrl="~/images/google-forms_opt.png" style="top: 161px; width: 47px; height: 45px; position: absolute; left: 1068px" OnClick="ImageButton1_Click" />
                    <br />
                  </div>
               </div>
</asp:Content>
