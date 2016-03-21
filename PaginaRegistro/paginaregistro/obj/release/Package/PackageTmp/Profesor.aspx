<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="PaginaRegistro.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 444px">
    <form id="form1" runat="server">
        <strong><span class="auto-style1">Gestion Web de Tareas-Dedicacion - Profesores</span></strong><br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="318px" style="text-align: center; background-color: #CCCCFF" Width="170px">
            <br />
            <br />
            <asp:HyperLink ID="hlAsig" runat="server" style="text-align: left">Asignaturas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlTareas" runat="server" NavigateUrl="~/TareasProfesor.aspx" style="text-align: left">Tareas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlGrupos" runat="server" style="text-align: left">Grupos</asp:HyperLink>
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
