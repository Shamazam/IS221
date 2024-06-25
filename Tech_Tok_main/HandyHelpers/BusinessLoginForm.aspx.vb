Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class BusinessLoginForm
    Inherits System.Web.UI.Page

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
           "Data Source=|DataDirectory|Business.mdb"

        Dim query As String
        query = "Select Count(*) From [Business] Where Email = '" + txtEmail.Text.Trim() + "' And Password = '" + txtPassword.Text.Trim() + "'"
        Dim result As Integer = 1
        Using conn As New OleDbConnection(connect)
            Using cmd As New OleDbCommand(query, conn)
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text.Trim())
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text.Trim())
                conn.Open()
                result = cmd.ExecuteScalar()
            End Using
        End Using


        lblError.Text = "Invalid Password"
        If result = 1 Then
            Session.Timeout = 60
            Session("Email") = txtEmail.Text
            Session("AccountType") = "Business"
            Dim email As String = Session("Email")
            Response.Redirect("BusinessProfilePage.aspx?name=" & "&email=" & Server.UrlEncode(email))
            Response.Redirect("BusinessProfilePage.aspx")
        Else
            lblError.Text = "Invalid Password"
            txtPassword.Focus()
        End If
    End Sub
End Class
