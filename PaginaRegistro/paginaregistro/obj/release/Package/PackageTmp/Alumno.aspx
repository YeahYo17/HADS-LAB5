<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Alumno.aspx.vb" Inherits="PaginaRegistro.Alumno" %>

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
<body>
    <form id="form1" runat="server">
    <div>
    
        <strong><span class="auto-style1">Gestion Web de Tareas-Dedicacion - Alumnos</span></strong><br />
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="318px" style="text-align: center; background-color: #CCCCFF" Width="170px">
            <br />
            <br />
            <asp:HyperLink ID="hlTareasGen" runat="server" style="text-align: left" NavigateUrl="~/TareasAlumno.aspx">Tareas Genericas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlTareasProp" runat="server" style="text-align: left">Tareas Propias</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlGrupos" runat="server" style="text-align: left">Grupos</asp:HyperLink>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
