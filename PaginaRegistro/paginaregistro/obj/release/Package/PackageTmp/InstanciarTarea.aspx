<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="InstanciarTarea.aspx.vb" Inherits="PaginaRegistro.InstanciarTarea" %>

<%@ Register src="CabeceraAlumno.ascx" tagname="CabeceraAlumno" tagprefix="uc1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-weight: 700">
    
        <uc1:CabeceraAlumno ID="CabeceraAlumno1" runat="server" />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Usuario<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtUser" runat="server" Width="205px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Tarea<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtTarea" runat="server" Width="205px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Horas Estimadas<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHEst" runat="server" Width="205px"></asp:TextBox>
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Horas Reales<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtHReal" runat="server" Width="205px"></asp:TextBox>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="btnCrear" runat="server" Height="40px" Text="Crear Tarea" Width="153px" />
        <br />
        <br />
        <asp:GridView ID="GridView3" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None" style="text-align: center" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="Email,CodTarea" DataSourceID="SqlDataSource1">
            <AlternatingRowStyle BackColor="White" />
            <Columns>
                <asp:BoundField DataField="Email" HeaderText="Email" ReadOnly="True" SortExpression="Email" />
                <asp:BoundField DataField="CodTarea" HeaderText="CodTarea" ReadOnly="True" SortExpression="CodTarea" />
                <asp:BoundField DataField="HEstimadas" HeaderText="HEstimadas" SortExpression="HEstimadas" />
                <asp:BoundField DataField="HReales" HeaderText="HReales" SortExpression="HReales" />
            </Columns>
            <EditRowStyle BackColor="#2461BF" />
            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
            <RowStyle BackColor="#EFF3FB" />
            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
            <SortedAscendingCellStyle BackColor="#F5F7FB" />
            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
            <SortedDescendingCellStyle BackColor="#E9EBEF" />
            <SortedDescendingHeaderStyle BackColor="#4870BE" />
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=tcp:hads21.database.windows.net,1433;Initial Catalog=HADS21;Persist Security Info=True;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [EstudiantesTareas] WHERE ([Email] = @Email)">
            <SelectParameters>
                <asp:ControlParameter ControlID="txtUser" Name="Email" PropertyName="Text" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="lblModif" runat="server" style="color: #009933; font-size: x-large" Text="Modificacion Realizada Correctamente" Visible="False"></asp:Label>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="hlPagAnt" runat="server" NavigateUrl="~/TareasAlumno.aspx">Pagina Anterior</asp:HyperLink>
    
    </div>
    </form>
</body>
</html>
