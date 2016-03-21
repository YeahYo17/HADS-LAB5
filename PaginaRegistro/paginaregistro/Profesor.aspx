﻿<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Profesor.aspx.vb" Inherits="PaginaRegistro.Profesor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        #form1 {
            height: 492px;
        }
        .auto-style1 {
            font-size: xx-large;
        }
    </style>
</head>
<body style="height: 500px">
    <form id="form1" runat="server">
        <br />
        <asp:Panel ID="Panel1" runat="server" Height="400px" style="text-align: center; background-color: #3366CC" Width="170px" BorderStyle="Inset">
            <strong>
            <br />
            <br />
            <asp:HyperLink ID="hlAsig" runat="server" style="text-align: left; color: #FFFFFF;">Asignaturas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlTareas" runat="server" NavigateUrl="~/TareasProfesor.aspx" style="text-align: left; color: #FFFFFF;">Tareas</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlGrupos" runat="server" style="text-align: left; color: #FFFFFF;">Grupos</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlAsig0" runat="server" NavigateUrl="~/InsertarTareaXMLDocument.aspx" style="text-align: left; color: #FFFFFF;">Importar y, XMLDocument</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlAsig1" runat="server" NavigateUrl="~/Exportar.aspx" style="text-align: left; color: #FFFFFF;">Exportar</asp:HyperLink>
            <br />
            <br />
            <br />
            <asp:HyperLink ID="hlAsig2" runat="server" NavigateUrl="~/InsertarTareaDataSet.aspx" style="text-align: left; color: #FFFFFF;">Importar y, DataSet</asp:HyperLink>
            </strong>
        </asp:Panel>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Panel ID="Panel2" runat="server" BorderStyle="Inset" HorizontalAlign="Center" style="z-index: 1; left: 194px; top: 34px; position: absolute; height: 400px; width: 729px; text-align: center; margin-top: 0px; background-color: #99CCFF">
            <strong><span class="auto-style1">
            <br />
            <br />
            <br />
            Gestion Web de Tareas-Dedicacion<br />
            <br />
            Profesores</span></strong></asp:Panel>
    </form>
</body>
</html>
