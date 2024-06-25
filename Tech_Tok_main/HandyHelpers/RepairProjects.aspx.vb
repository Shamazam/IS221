Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class RepairProjects
    Inherits System.Web.UI.Page

    Protected Sub btnGo_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnGo.Click
        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
            "Data Source=|DataDirectory|Business.mdb"

        Dim query As String
        Dim businessname As String

        query = "Select COUNT(*) From [Business] Where Email = '" + txtSearch.Text + "'"
        businessname = "Select BusinessName From [Business] Where Email = '" + txtSearch.Text + "'"
        Dim result As Integer = 1
        Using conn As New OleDbConnection(connect)
            Using cmd As New OleDbCommand(query, conn)
                cmd.Parameters.AddWithValue("@Email", txtSearch.Text)

                conn.Open()
                result = cmd.ExecuteScalar()
            End Using

        End Using

        If result = 1 Then

            Dim email As String = txtSearch.Text
            Response.Redirect("BusinessPage.aspx?name=" & "&email=" & Server.UrlEncode(email))
            Response.Redirect("BusinessPage.aspx")

        Else
            lblError.Text = "No Account Found"

        End If
        txtSearch.Text = ""
    End Sub

    Protected Sub btnFilter_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnFilter.Click
        GridView1.Visible = True

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Email") = Nothing Then
            Response.Redirect("LoginRedirect.aspx")
        End If
    End Sub
End Class
