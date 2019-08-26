<%@ Page Title="" Language="C#" MasterPageFile="~/Administrador/AdminMaster.master" AutoEventWireup="true" CodeBehind="AdminProducto.aspx.cs" Inherits="Farmacia_EL_CARMEN_3._0.AdminProducto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style1 {
            margin-right: 245px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Contenido" runat="server">
     <div id="caja_prin">
            <br />
                <div id="caja_administradorProduc">
                    <br />
                    <h1>ADMINISTRAR PRODUCTOS</h1>
                    <br />
                    <asp:GridView ID="GridView1" runat="server" Height="96px" Width="999px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" CssClass="auto-style1" DataKeyNames="ID_MERC" DataSourceID="SqlDataSource1" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
                        <Columns>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                            <asp:BoundField DataField="ID_MERC" HeaderText="ID_MERC" InsertVisible="False" ReadOnly="True" SortExpression="ID_MERC" />
                            <asp:BoundField DataField="NOMBRE" HeaderText="NOMBRE" SortExpression="NOMBRE" />
                            <asp:BoundField DataField="FECHA_VEN" HeaderText="FECHA_VEN" SortExpression="FECHA_VEN" />
                            <asp:BoundField DataField="CANTIDAD" HeaderText="CANTIDAD" SortExpression="CANTIDAD" />
                            <asp:BoundField DataField="PRECIO" HeaderText="PRECIO" SortExpression="PRECIO" />
                            <asp:BoundField DataField="TIPO" HeaderText="TIPO" SortExpression="TIPO" />
                        </Columns>
                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                        <RowStyle BackColor="White" ForeColor="#003399" />
                        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                        <SortedAscendingCellStyle BackColor="#EDF6F6" />
                        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                        <SortedDescendingCellStyle BackColor="#D6DFDF" />
                        <SortedDescendingHeaderStyle BackColor="#002876" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:FARMACIA_EL_CARMENConnectionString %>" DeleteCommand="DELETE FROM [MERCADERIA] WHERE [ID_MERC] = @original_ID_MERC AND [NOMBRE] = @original_NOMBRE AND [FECHA_VEN] = @original_FECHA_VEN AND [CANTIDAD] = @original_CANTIDAD AND [PRECIO] = @original_PRECIO AND [TIPO] = @original_TIPO" InsertCommand="INSERT INTO [MERCADERIA] ([NOMBRE], [FECHA_VEN], [CANTIDAD], [PRECIO], [TIPO]) VALUES (@NOMBRE, @FECHA_VEN, @CANTIDAD, @PRECIO, @TIPO)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [MERCADERIA]" UpdateCommand="UPDATE [MERCADERIA] SET [NOMBRE] = @NOMBRE, [FECHA_VEN] = @FECHA_VEN, [CANTIDAD] = @CANTIDAD, [PRECIO] = @PRECIO, [TIPO] = @TIPO WHERE [ID_MERC] = @original_ID_MERC AND [NOMBRE] = @original_NOMBRE AND [FECHA_VEN] = @original_FECHA_VEN AND [CANTIDAD] = @original_CANTIDAD AND [PRECIO] = @original_PRECIO AND [TIPO] = @original_TIPO">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ID_MERC" Type="Int32" />
                            <asp:Parameter Name="original_NOMBRE" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_FECHA_VEN" />
                            <asp:Parameter Name="original_CANTIDAD" Type="Int32" />
                            <asp:Parameter Name="original_PRECIO" Type="Decimal" />
                            <asp:Parameter Name="original_TIPO" Type="String" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="NOMBRE" Type="String" />
                            <asp:Parameter DbType="Date" Name="FECHA_VEN" />
                            <asp:Parameter Name="CANTIDAD" Type="Int32" />
                            <asp:Parameter Name="PRECIO" Type="Decimal" />
                            <asp:Parameter Name="TIPO" Type="String" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="NOMBRE" Type="String" />
                            <asp:Parameter DbType="Date" Name="FECHA_VEN" />
                            <asp:Parameter Name="CANTIDAD" Type="Int32" />
                            <asp:Parameter Name="PRECIO" Type="Decimal" />
                            <asp:Parameter Name="TIPO" Type="String" />
                            <asp:Parameter Name="original_ID_MERC" Type="Int32" />
                            <asp:Parameter Name="original_NOMBRE" Type="String" />
                            <asp:Parameter DbType="Date" Name="original_FECHA_VEN" />
                            <asp:Parameter Name="original_CANTIDAD" Type="Int32" />
                            <asp:Parameter Name="original_PRECIO" Type="Decimal" />
                            <asp:Parameter Name="original_TIPO" Type="String" />
                        </UpdateParameters>
                    </asp:SqlDataSource>
                    </div>
         </div>
</asp:Content>
