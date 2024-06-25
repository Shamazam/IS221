
Partial Class Feedback
    Inherits System.Web.UI.Page

    Protected Sub btnSubmit_Click(ByVal sender As Object, ByVal e As System.EventArgs) Handles btnSubmit.Click
        adsFeedback.InsertParameters("Email").DefaultValue = txtEmail.Text
        adsFeedback.InsertParameters("Feedback").DefaultValue = txtFeedback.Text
        adsFeedback.InsertParameters("Suggestion").DefaultValue = txtSuggestion.Text
        adsFeedback.Insert()
        lbldone.Text = "Feedback Saved."
    End Sub
End Class
