<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Administrador.aspx.cs" Inherits="JKOProyect.Administrador" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    
        <div class="transbox">
            <h1 class="trans">ADMINISTRACION DE LUCHADORES</h1>
            <div class="trans">
                <h2>AÑADIR LUCHADOR</h2>
                <asp:Label ID="lblIdLuchador" runat="server" Text="IdLuchador" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtIdLuchador" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Introduce el ID" ControlToValidate="txtIdLuchador" ValidationGroup="Anadir"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="Nombre" runat="server" Text="Nombre" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="Validar" runat="server" ErrorMessage="Introduce el nombre" ControlToValidate="txtNombre" ValidationGroup="Anadir"></asp:RequiredFieldValidator>
                <br />
                
                <asp:Label ID="Apellido" runat="server" Text="Apellido" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtApellido" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Introduce el Apellido" ControlToValidate="txtApellido" ValidationGroup="Anadir"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="IdModalidad" runat="server" Text="Modalidad" CssClass="trans"></asp:Label>
                <asp:DropDownList ID="DDL_Modalidad" runat="server" Width="100px"></asp:DropDownList>
               <%-- <asp:SqlDataSource ID="SqlDataSourceMod" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" SelectCommand="SELECT * FROM [JKO].[Categoria]" ></asp:SqlDataSource>--%>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Selecciona la MODALIDAD" ControlToValidate="DDL_Modalidad" ValidationGroup="Anadir"></asp:RequiredFieldValidator>
                <br />

                <asp:Label ID="IdCategoria" runat="server" Text="Categoria" CssClass="trans"></asp:Label>
                <asp:DropDownList ID="DDL_Categoria" runat="server" Width="100px"></asp:DropDownList>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Selecciona la CATEGORIA" ControlToValidate="DDL_Categoria" ValidationGroup="Anadir"></asp:RequiredFieldValidator>
                <br />             

                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="trans" Width="500px" />                
                <br />

                <asp:Label ID="Descripcion" runat="server" Text="Descripcion" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtDescripcion" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Añade una descripcion" ControlToValidate="txtDescripcion"  ValidationGroup="Anadir" ></asp:RequiredFieldValidator>
                <br />

                <asp:Button ID="IdAñadir" Text="Añadir Luchador" runat="server" OnClick="IdAñadir_Click" ValidationGroup="Anadir" />

            </div>
            <div class="trans">
                <h2>EDITAR/ELIMINAR LUCHADOR</h2>
                    <asp:Label ID="lblNombre" runat="server" Text="Nombre de Luchador" CssClass="trans"></asp:Label>
                    <asp:TextBox ID="txtBuscarLuchador" runat="server"></asp:TextBox>
                    <asp:Button ID="BtnBuscarElimin" Text="Buscar" runat="server" OnClick="BtnBuscarElimin_Click"/>
                    <asp:GridView ID="GridElimin" runat="server" CssClass="trans" AutoGenerateColumns="False" OnRowDeleting="GridElimin_RowDeletingEvent" OnRowEditing="GridElimin_RowEditing" OnRowCancelingEdit="GridElimin_RowCancelingEdit" OnRowUpdating="GridElimin_RowUpdating">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="IdLuchador" HeaderText="Id Luchador" />
                            <asp:BoundField DataField="Nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="Apellido" HeaderText="Apellido" />
                            <asp:BoundField DataField="IdModalidad" HeaderText="IdModalidad" />
                            <asp:BoundField DataField="IdCategoria" HeaderText="IdCategoria" />
                            <asp:BoundField DataField="ImagenLuchador" HeaderText="Imagen Luchador" />
                            <asp:BoundField DataField="DescripcionLuchador" HeaderText="Descripcion" />
                            <asp:CommandField ShowEditButton="True" />
                            <asp:CommandField ShowDeleteButton="True"  ButtonType="Button" />
                        </Columns>                       
                    </asp:GridView>
            </div>
        </div>

</body>
</html>
</asp:Content>
