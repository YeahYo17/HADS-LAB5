Public Class CambiarPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub btnCompEmail_Click(sender As Object, e As EventArgs) Handles btnCompEmail.Click

        Dim libVb As New RegistroLibrary.LibraryVB

        Dim preg As String = "Vacio"

        libVb.Conectar()

        If libVb.CompEmailPreg(txtEmailCP.Text, preg, lblError.Text) = True Then

            lblPregunta.Visible = True
            lblPreSec.Visible = True
            lblPregunta.Text = preg

            lblResSec.Visible = True
            txtRespuestaCP.Visible = True
            btnCompRes.Visible = True

            validResSec.Visible = True
        End If

        libVb.Desconectar()

    End Sub

    Protected Sub btnCompRes_Click(sender As Object, e As EventArgs) Handles btnCompRes.Click

        Dim libVb As New RegistroLibrary.LibraryVB

        libVb.Conectar()

        If libVb.CompRespuesta(txtEmailCP.Text, txtRespuestaCP.Text, lblError.Text) = True Then
            lblPass1.Visible = True
            txtPass1.Visible = True
            lblPass2.Visible = True
            txtPass2.Visible = True
            btnCambiar.Visible = True

            validPass1.Visible = True
            validPass2.Visible = True
        End If

        libVb.Desconectar()

    End Sub

    Protected Sub btnCambiar_Click(sender As Object, e As EventArgs) Handles btnCambiar.Click

        Dim libVb As New RegistroLibrary.LibraryVB

        libVb.Conectar()

        If libVb.CambiarPass(txtEmailCP.Text, txtPass2.Text, lblError.Text) = True Then
            lblExito.Text = "Password cambiado correctamente!"
            lblExito.Visible = True

            lblError.Text = "COMPLETADO - Se le redirigirá a la pagina de Inicio en 3 segundos."
            Response.AddHeader("REFRESH", "3;URL=Inicio.aspx")
        End If

        libVb.Desconectar()

    End Sub
End Class