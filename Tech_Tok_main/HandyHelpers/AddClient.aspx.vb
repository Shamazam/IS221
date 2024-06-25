Imports System.Data
Imports System.Data.OleDb
Imports System.IO


Partial Class AddClient
    Inherits System.Web.UI.Page

    Protected Sub btnAdd_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnAdd.Click

        Dim email As String = txtEmail.Text.Trim()

        adsClient.SelectParameters.Clear()
        adsClient.SelectCommand = "SELECT * FROM Client WHERE ClientEmail = ?"
        adsClient.SelectParameters.Add("Email", email)

        Dim emailExist As Boolean = False
        Dim emailReader As DataView = CType(adsClient.Select(DataSourceSelectArguments.Empty), DataView)

        If emailReader.Count > 0 Then
            emailExist = True
        End If

        If emailExist = True Then
            lblMessage.Text = "An account with this email address is already a client."
        Else
            adsClient.InsertParameters("ClientEmail").DefaultValue = txtEmail.Text
            adsClient.InsertParameters("BusinessEmail").DefaultValue = Session("Email")
            adsClient.Insert()
            lblMessage.Text = "Client Successfully Added"
        End If












        

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Email") = Nothing Then
            Response.Redirect("LoginRedirect.aspx")
        End If
    End Sub
End Class
