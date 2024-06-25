
Partial Class HandyHelpers
    Inherits System.Web.UI.MasterPage

    Protected Sub btnloginlogout_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnloginlogout.Click

        If Not Session("Email") = Nothing Then

            Session.Clear()
            btnloginlogout.Text = "Login"
            btnregisterprofile.Text = "Register"
            Response.Redirect("Home.aspx")
        Else
            Response.Redirect("LoginRedirect.aspx")
        End If

    End Sub

    Protected Sub btnregisterprofile_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnregisterprofile.Click

        If Session("AccountType") = "Customer" Then
            If Session("Email") = Nothing Then
                Response.Redirect("ResgisterCustomerForm.aspx")
            Else
                Dim email As String = Session("Email")
                Response.Redirect("CustomerProfilePage.aspx?name=" & "&email=" & Server.UrlEncode(email))

                Response.Redirect("CustomerProfilePage.aspx")
            End If
        Else
            If Session("Email") = Nothing Then
                Response.Redirect("RegisterCustomerForm.aspx")
            Else
                Dim email As String = Session("Email")
                Response.Redirect("BusinessProfilePage.aspx?name=" & "&email=" & Server.UrlEncode(email))

                Response.Redirect("BusinessProfilePage.aspx")
            End If
        End If

    End Sub

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If Session("Email") = Nothing Then
            btnloginlogout.Text = "Login"

            btnregisterprofile.Text = "Register"
        Else
            btnloginlogout.Text = "Logout"

            btnregisterprofile.Text = "Profile"
        End If

    End Sub
End Class

