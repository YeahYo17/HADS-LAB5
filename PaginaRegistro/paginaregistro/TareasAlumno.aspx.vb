Public Class TareasAlumno
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("GridView2") = GridView2
    End Sub

    Protected Sub GridView2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles GridView2.SelectedIndexChanged
        Response.Redirect("InstanciarTarea.aspx?codigo=" & GridView2.SelectedValue.ToString & "")
    End Sub
End Class