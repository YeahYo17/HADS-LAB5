Imports System.Data.SqlClient

Public Class InstanciarTarea
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim codUrl As String = Request.QueryString("codigo")
        txtUser.Text = Session("email").ToString
        txtTarea.Text = codUrl

    End Sub

    Protected Sub btnCrear_Click(sender As Object, e As EventArgs) Handles btnCrear.Click

        Dim gridView2 As New GridView
        gridView2 = Session("GridView2")
        Dim dTable As New DataTable
        Dim dSet As New DataSet
        Dim Conexion As SqlConnection
        Conexion = Session("Conexion")
        Dim dAdapter As SqlDataAdapter
        dAdapter = Session("dAdapter")
        dAdapter.SelectCommand = New SqlCommand("SELECT * FROM EstudiantesTareas", Conexion)

        Dim cmdBuild As New SqlCommandBuilder(dAdapter)

        dAdapter.Fill(dSet, "TareasGenericasAlum")
        dTable = dSet.Tables("TareasGenericasAlum")

        Dim dRow As DataRow = dTable.NewRow()

        dRow("Email") = txtUser.Text
        dRow("CodTarea") = txtTarea.Text
        dRow("HEstimadas") = txtHEst.Text
        dRow("HReales") = txtHReal.Text

        dTable.Rows.Add(dRow)

        cmdBuild.GetInsertCommand()

        GridView3.DataSourceID = Nothing
        GridView3.DataSource = dTable
        GridView3.DataBind()

        dAdapter.Update(dSet, "TareasGenericasAlum")
        dSet.AcceptChanges()

        lblModif.Visible = True

    End Sub
End Class