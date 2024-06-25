Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class RegisterFormBusiness
    Inherits System.Web.UI.Page

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtName.Text = ""
        txtEmail.Text = ""
        txtContact.Text = ""
        txtBackground.Text = ""
        txtPassword.Text = ""

    End Sub

    Protected Sub btnResigter_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnResigter.Click
         Dim email As String = txtEmail.Text.Trim()
        adsBusiness.SelectParameters.Clear()
        adsBusiness.SelectCommand = "SELECT * FROM [Business] WHERE Email = ?"
        adsBusiness.SelectParameters.Add("Email", email)

        Dim emailExists As Boolean = False
        Dim emailReader As DataView = CType(adsBusiness.Select(DataSourceSelectArguments.Empty), DataView)

        If emailReader.Count > 0 Then
            emailExists = True
        End If

        If emailExists = True Then
            lblText.Text = "*Account Already Exist"
        Else
            adsBusiness.InsertParameters("Email").DefaultValue = txtEmail.Text
            adsBusiness.InsertParameters("BusinessName").DefaultValue = txtName.Text
            adsBusiness.InsertParameters("Password").DefaultValue = txtPassword.Text
            adsBusiness.InsertParameters("Address").DefaultValue = ddlAddress.SelectedValue
            adsBusiness.InsertParameters("Background").DefaultValue = txtBackground.Text
            adsBusiness.InsertParameters("PhoneContact").DefaultValue = txtContact.Text
            adsBusiness.Insert()
            Response.Redirect("BusinessLoginForm.aspx")



            adsServices.InsertParameters("Email").DefaultValue = txtEmail.Text
            For Each item As ListItem In chkServices.Items
                If item.Selected Then
                    adsServices.InsertParameters("Services").DefaultValue = item.Value
                    adsServices.Insert()
                End If
            Next

        End If
    End Sub
End Class
