Imports System.Data.SqlClient

Public Class Inicio

    Inherits System.Web.UI.Page

    Private Conexion As SqlConnection = New SqlConnection("Server=tcp:hads21.database.windows.net,1433;Database=HADS21;User ID=starkgs@hotmail.com@hads21;Password=HADS21perro;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;MultipleActiveResultSets=true")


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Session("Conexion") = Conexion
        Session("dAdapter") = New SqlDataAdapter("SELECT * FROM TareasGenericas", Conexion)
        Session("email") = Nothing
    End Sub

    Protected Sub btnLogin_Click(sender As Object, e As EventArgs) Handles btnLogin.Click

        Dim libVb As New RegistroLibrary.LibraryVB

        libVb.Conectar()

        If libVb.InicioSesionCorrecto(txtEmailInc.Text, txtPassInc.Text, lblError.Text) = True Then
            'Response.Redirect("Principal.aspx")
            Session("email") = txtEmailInc.Text

            If libVb.isProfesor(Session("email").ToString, lblError.Text) = True Then
                Response.Redirect("Profesor.aspx")
            Else
                Response.Redirect("Alumno.aspx")
            End If

        End If

        libVb.Desconectar()

    End Sub
End Class