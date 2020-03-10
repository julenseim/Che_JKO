<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Index.aspx.cs" Inherits="JKOProyect.Index" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

<html>
<head>
<link rel="stylesheet" type="text/css" href="styles.css" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<%--    <style>
ul {
    list-style-type:none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
    
}

li {
    float: left;
}

li a {
    display: inline-block;
    color: rgb(255, 198, 0);
    text-align: center;
    padding: 20px 20px;
    text-decoration: blink ;
}

li a:hover {
    background-color: #111;
}
body {
   background-image: url('../Imagenes/punos.jpg')
   }

.auto-style1 {
	vertical-align: top;
	}


div.menu  {
	margin:0px 0px 0px 0px;
	
	}

.contenedor {
  width: 1000px;
  height:1000px;
  margin: 0 auto;
  text-align:center;
}
body {
	background-attachment:fixed;
	background-repeat:no-repeat;
	background-size:cover;
	}
div.transbox {
    margin: 30px;
    background-color: rgba(0, 0, 0, 0.5);
    border: 1px solid black;
  }

.trans {
    margin: 5%;
    font-weight: bold;
    color:rgb(255, 198, 0);
}
        .Logo {
            /*background-image: url('img/logooo.PNG');*/
            background-size: auto;
            background-repeat: no-repeat;
            background-attachment: fixed;
            width: 1000px;
            height: 200px;
        }

</style>--%>

</head>
<body style="background-image: url('img/punos.jpg'); background-repeat: no-repeat; background-attachment:fixed; background-size:auto;">
    
<%--    <div style="width:100";>

</div>--%>
    

<div class="contenedor">
    <div class="transbox">
        <h1 class="trans">VIDA MMA</h1>
            <h2 class="trans">INICIAR SESION</h2>
                <asp:Label ID="Label1" runat="server" Text="Usuario" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtUsuario" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Falta Usuario" ControlToValidate="txtUsuario" ForeColor="Yellow"></asp:RequiredFieldValidator></br>
                <asp:Label ID="Label2" runat="server" Text="Contraseña" CssClass="trans"></asp:Label>
                <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Falta Password" ControlToValidate="txtPassword" ForeColor="Yellow"></asp:RequiredFieldValidator></br>
                <asp:Button ID="btnIniciarSesion" runat="server" Text="Iniciar" OnClick="Iniciar_Click" /></br>
  	        <a class="trans" href="Registro.aspx">REGISTRATE</a>
        <a class="trans" href="PasswordRecovery.aspx">RECUPERAR CONTRASEÑA</a>
    </div>
</div>

</body>
</html>
</asp:Content>