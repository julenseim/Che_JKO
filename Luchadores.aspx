<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Luchadores.aspx.cs" Inherits="JKOProyect.Luchadores" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <h1>Luchadores</h1>
     <div class="transbox">
        <div class="trans">
            
            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource5">
                <Columns>
                    <asp:ImageField DataImageUrlField="ImagenLuchador" DataImageUrlFormatString="~/img/{0}" HeaderText="Luchador">
                    </asp:ImageField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:DAM_Compartido_DEVConnectionString %>" SelectCommand="SELECT [Nombre], [IdCategoria], [DescripcionLuchador], [ImagenLuchador] FROM JKO.Luchadores"></asp:SqlDataSource>
            </div>
         <a class="trans" href="Administrador.aspx">ADMINISTRAR LUCHADORES</a>
         </div>
</body>
</html>
</asp:Content>