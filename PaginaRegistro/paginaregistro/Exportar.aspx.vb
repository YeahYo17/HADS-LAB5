Imports System.Xml, System.Data.SqlClient

Public Class Exportar
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnExportar_Click(sender As Object, e As EventArgs) Handles btnExportar.Click

        Dim Conexion As SqlConnection
        Conexion = Session("Conexion")
        Dim dTable As New DataTable
        Dim dAdapter As SqlDataAdapter
        dAdapter = Session("dAdapter")
        dAdapter.SelectCommand = New SqlCommand("SELECT * FROM TareasGenericas WHERE CodAsig='" & DropDownList1.SelectedValue.ToString & "'", Conexion)
        Dim cmdBuild As New SqlCommandBuilder(dAdapter)

        Dim dSet As New DataSet
        dAdapter.Fill(dSet, "TareasGenericasProfBD")
        dTable = dSet.Tables("TareasGenericasProfBD")

        'Dim dRow As DataRow = dTable.NewRow()
        'Dim tarea As GridViewRow
        'For Each tarea In gvTareas.Rows

        'dRow("Codigo") = tarea.Cells(0).Text
        'dRow("Descripcion") = tarea.Cells(1).Text
        'dRow("CodAsig") = tarea.Cells(2).Text
        'dRow("HEstimadas") = tarea.Cells(3).Text

        'Dim cbGV As CheckBox = CType(tarea.Cells(4).Controls(0), CheckBox)
        'If cbGV.Checked Then
        'dRow("Explotacion") = True
        'Else
        'dRow("Explotacion") = False
        'End If

        'dRow("TipoTarea") = tarea.Cells(5).Text

        'dTable.Rows.Add(dRow.ItemArray)
        'Next

        GridView1.DataSourceID = Nothing
        GridView1.DataSource = dTable
        GridView1.DataBind()

        dSet.AcceptChanges()

        Dim strXml As String = "App_Data/" & DropDownList1.SelectedValue & ".xml"
        'Create XmlWriterSettings.
        Dim settings As XmlWriterSettings = New XmlWriterSettings()
        settings.Indent = True ' añade sangrias al resultado
        ' Create XmlWriter.
        Using writer As XmlWriter = XmlWriter.Create(Server.MapPath(strXml), settings)
            ' Begin writing.
            writer.WriteStartDocument()
            writer.WriteStartElement("tareas") 'Root.
            ' Loop over tareas rows.
            Dim tarea As DataRow
            For Each tarea In dTable.Rows
                writer.WriteStartElement("tarea")
                writer.WriteElementString("codigo", tarea.Item("Codigo").ToString)
                writer.WriteElementString("descripcion", tarea.Item("Descripcion").ToString)
                writer.WriteElementString("hestimadas", tarea.Item("HEstimadas").ToString)
                writer.WriteElementString("explotacion", CBool(tarea.Item("Explotacion")))
                writer.WriteElementString("tipotarea", tarea.Item("TipoTarea").ToString)
                writer.WriteEndElement()
            Next
            writer.WriteEndElement()
            writer.WriteEndDocument()
        End Using

    End Sub

End Class