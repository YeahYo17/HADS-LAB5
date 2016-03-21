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
        <asp:Panel ID="Panel1" runat="server" Height="400px" style="text-align: center; background-color: #3366CC" Width="170px">
            <br />
            <br />
            <strong>
            <asp:HyperLink ID="hlTareasGen" runat="server" NavigateUrl="~/TareasAlumno.aspx" style="text-align: left; color: #FFFFFF;">Tareas Genericas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlTareasProp" runat="server" style="text-align: left; color: #FFFFFF;">Tareas Propias</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlGrupos" runat="server" style="text-align: left; color: #FFFFFF;">Grupos</asp:HyperLink>
            </strong>
        </asp:Panel>
    
    </div>
    </form>
</body>
</html>
