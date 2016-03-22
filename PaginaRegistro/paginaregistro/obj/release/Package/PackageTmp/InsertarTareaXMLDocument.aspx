﻿<%@ Page Language="vb" Debug="true" AutoEventWireup="false" CodeBehind="InsertarTareaXMLDocument.aspx.vb" Inherits="PaginaRegistro.InsertarTareaXMLDocument" %>

<%@ Register src="CabececeraProfesor.ascx" tagname="CabececeraProfesor" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="height: 475px">
    
        <uc1:CabececeraProfesor ID="CabececeraProfesor1" runat="server" />
        <br />
    
        <asp:DropDownList ID="DropDownList1" runat="server" style="z-index: 1; left: 37px; top: 124px; position: absolute; height: 25px; width: 270px" DataSourceID="SqlDataSource1" DataTextField="codigoasig" DataValueField="codigoasig" AutoPostBack="True">
        </asp:DropDownList>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HADS21ConnectionString %>" SelectCommand="SELECT codigoasig FROM [GruposClase] INNER JOIN [ProfesoresGrupo]  ON codigo=codigogrupo WHERE email=@email">
            <SelectParameters>
                <asp:SessionParameter Name="email" SessionField="email" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:Button ID="Button1" runat="server" style="z-index: 1; left: 37px; top: 185px; position: absolute; width: 200px; height: 35px;" Text="IMPORTAR (XMLD)" />
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 37px; top: 94px; position: absolute; font-weight: 700;" Text="Seleccionar Asignatura a Importar: "></asp:Label>
    
        <br />
        <br />
        <asp:Panel ID="Panel1" runat="server" style="z-index: 1; left: 488px; top: 80px; position: absolute; height: 150px; width: 497px">
            <asp:Xml ID="Xml1" runat="server"></asp:Xml>
        </asp:Panel>
        <br />
        <br />
        <br />
        <br />
        <br />
        <asp:HyperLink ID="hlMenuProf" runat="server" NavigateUrl="~/Profesor.aspx" style="z-index: 1; left: 37px; top: 259px; position: absolute">Menu Profesor</asp:HyperLink>
    
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Label ID="lblError" runat="server" style="z-index: 1; left: 37px; top: 400px; position: absolute; color: #FF0000; font-weight: 700; font-size: large"></asp:Label>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
        </div>
    </form>
</body>
</html>
