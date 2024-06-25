
Partial Class CustomerProfilePage
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Email") = Nothing Then
            Response.Redirect("LoginRedirect.aspx")
        Else

            Dim email As String = Request.QueryString("email")
            lblEmail.Text = email
        End If

    End Sub
End Class
