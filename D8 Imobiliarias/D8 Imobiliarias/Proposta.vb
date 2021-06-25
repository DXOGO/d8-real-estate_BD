Public Class Proposta
    Private Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim valor_proposta As Integer
        If ValorTextBox.Text = "" Then
            MsgBox("Introduza um valor para apresentar a proposta.")
        Else
            valor_proposta = Integer.Parse(ValorTextBox.Text)
            'Add proposta to DB
            Me.Close()
        End If
    End Sub

    Private Sub ExitButton_Click(sender As Object, e As EventArgs) Handles ExitButton.Click
        Me.Close()
    End Sub
End Class