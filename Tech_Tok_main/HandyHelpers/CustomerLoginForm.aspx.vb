Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class CustomerLoginForm
    Inherits System.Web.UI.Page

    Protected Sub btnlogin_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnlogin.Click
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
           "Data Source=|DataDirectory|User.mdb"

        Dim query As String
        query = "Select Count(*) From [Customer] Where Email = '" + txtEmail.Text + "' And Password = '" + txtPassword.Text + "'"
        Dim result As Integer = 0
        Using conn As New OleDbConnection(connect)
            Using cmd As New OleDbCommand(query, conn)
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                cmd.Parameters.AddWithValue("@Password", txtPassword.Text)
                conn.Open()
                result = cmd.ExecuteScalar()
            End Using
        End Using



        If result = 1 Then
            Session.Timeout = 60
            Session("Email") = txtEmail.Text
            Session("AccountType") = "Customer"
            Dim email As String = Session("Email")
            Response.Redirect("CustomerProfilePage.aspx?name=" & "&email=" & Server.UrlEncode(email))
            Response.Redirect("CustomerProfilePage.aspx")
        Else
            lblError.Text = "Invalid Password"
            txtPassword.Focus()
        End If
    End Sub

    
End Class
