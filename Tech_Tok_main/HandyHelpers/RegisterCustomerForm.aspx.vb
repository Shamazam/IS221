Imports System.Data
Imports System.Data.OleDb
Imports System.IO

Partial Class RegisterCustomerForm
    Inherits System.Web.UI.Page

    Protected Sub btnRegister_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnRegister.Click
        Dim email As String = txtEmail.Text.Trim()


        adsCustomer.SelectParameters.Clear()
        adsCustomer.SelectCommand = "SELECT * FROM Customer WHERE Email = ?"
        adsCustomer.SelectParameters.Add("Email", email)

        Dim emailExist As Boolean = False
        Dim emailReader As DataView = CType(adsCustomer.Select(DataSourceSelectArguments.Empty), DataView)

        If emailReader.Count > 0 Then
            emailExist = True
        End If

        If emailExist = True Then
            lblText.Text = "*An account with this email address already exists."
        Else
            adsCustomer.InsertParameters("Email").DefaultValue = txtEmail.Text
            adsCustomer.InsertParameters("Name").DefaultValue = txtName.Text
            adsCustomer.InsertParameters("Password").DefaultValue = txtPassword.Text
            adsCustomer.InsertParameters("Address").DefaultValue = ddlAddress.SelectedValue
            adsCustomer.InsertParameters("PhoneContact").DefaultValue = txtPhone.Text
            adsCustomer.Insert()
            Response.Redirect("CustomerLoginForm.aspx")
        End If


    End Sub

    Protected Sub btnClear_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnClear.Click
        txtEmail.Text = ""
        txtName.Text = ""
        txtPassword.Text = ""
        txtPhone.Text = ""

    End Sub

    Public Function AccountExists(ByVal email As String) As Boolean
        ' Connection string for MS Access database
        Dim connect As String = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=|DataDirectory|User.mdb"

        ' SQL query to check if the account exists
        Dim query As String = "SELECT COUNT(*) FROM Customer WHERE Email = '" + txtEmail.Text + "'"

        ' Variable to store the result of the query
        Dim count As Integer = 0

        ' Use OleDbConnection and OleDbCommand to execute the query
        Using conn As New OleDbConnection(connect)
            Using cmd As New OleDbCommand(query, conn)
                ' Add parameter to the query to prevent SQL injection
                cmd.Parameters.AddWithValue("@Email", txtEmail.Text)
                conn.Open()
                count = Convert.ToInt32(cmd.ExecuteScalar())
            End Using
        End Using
        Return count > 0
    End Function
End Class
