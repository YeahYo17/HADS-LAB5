Imports System.Xml, System.Data.SqlClient

Public Class InsertarTareaXMLDocument
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

        Dim strXml As String = "App_Data/" & DropDownList1.SelectedValue & ".xml"
        Panel2.Visible = False

        If IsPostBack = False Then
            If My.Computer.FileSystem.FileExists(Server.MapPath(strXml)) = False Then
                Panel2.Visible = False
                Exit Sub
            End If
        Else
            If My.Computer.FileSystem.FileExists(Server.MapPath(strXml)) = False Then
                lblError.Text = "ERROR - File Not Found: " & DropDownList1.SelectedValue.ToString & ".xml"
                Panel2.Visible = True
                Exit Sub
            End If
        End If

        Xml1.DocumentSource = Server.MapPath(strXml)
        Xml1.TransformSource = Server.MapPath("App_Data/XSLTFile.xsl")

    End Sub

    Protected Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click

        Dim strXml As String = "App_Data/" & DropDownList1.SelectedValue & ".xml"

        Dim xmlDoc As New XmlDocument
        Try
            xmlDoc.Load(Server.MapPath(strXml))
        Catch ex As IO.FileNotFoundException
            lblError.Text = "ERROR: " & ex.Message
            Panel2.Visible = True
        End Try

        Dim Conexion As SqlConnection
        Conexion = Session("Conexion")
        Dim dTable As New DataTable("Tareas")
        Dim dAdapter As SqlDataAdapter
        dAdapter = Session("dAdapter")
        dAdapter.SelectCommand = New SqlCommand("SELECT * FROM TareasGenericas", Conexion)
        Dim cmdBuild As New SqlCommandBuilder(dAdapter)

        dAdapter.Fill(dTable)

        Dim dSet As New DataSet
        dSet.Tables.Add(dTable)

        Dim dRow As DataRow = dTable.NewRow()
        Dim tareas As XmlNodeList = xmlDoc.GetElementsByTagName("tarea")
        Dim tarea As XmlNode
        For Each tarea In tareas
            dRow("Codigo") = tarea.ChildNodes(0).InnerText
            dRow("Descripcion") = tarea.ChildNodes(1).InnerText
            dRow("HEstimadas") = CInt(tarea.ChildNodes(2).InnerText)
            dRow("CodAsig") = DropDownList1.SelectedValue
            dRow("Explotacion") = CBool(tarea.ChildNodes(3).InnerText)
            dRow("TipoTarea") = tarea.ChildNodes(4).InnerText

            dTable.Rows.Add(dRow.ItemArray)
        Next

        cmdBuild.GetInsertCommand()

        Try
            dAdapter.Update(dTable)
        Catch ex As Exception
            lblError.Text = "ERROR: " & ex.Message
            Panel2.Visible = True
        End Try

        dSet.AcceptChanges()

    End Sub
End Class