Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class BusinessPage
    Inherits System.Web.UI.Page

    Protected Sub btnReview_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnReview.Click

        Dim connect As String = "Provider=Microsoft.Jet.OleDb.4.0;" & _
            "Data Source=|DataDirectory|Business.mdb"

        Dim query As String
        query = "Select Count(*) From [Client] Where ClientEmail = '" + Session("Email") + "'"
        Dim result As Integer = 0
        Using conn As New OleDbConnection(connect)
            Using cmd As New OleDbCommand(query, conn)
                cmd.Parameters.AddWithValue("@Email", Session("Email"))

                conn.Open()
                result = cmd.ExecuteScalar()
            End Using
        End Using

        If result = 1 And Session("AccountType") = "Customer" Then


            adsReview.InsertParameters("Review").DefaultValue = txtReview.Text
            adsReview.InsertParameters("ClientEmail").DefaultValue = Session("Email")
            adsReview.InsertParameters("BusinessEmail").DefaultValue = lblEmail.Text
            adsReview.Insert()
            lblError.Text = "Your review has been added"
        Else

            lblError.Text = "You are Not a Client"

        End If
    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Email") = Nothing Then
            Response.Redirect("LoginRedirect.aspx")
        Else
            Dim email As String = Request.QueryString("email")
            lblEmail.Text = email
        End If
    End Sub
End Class
