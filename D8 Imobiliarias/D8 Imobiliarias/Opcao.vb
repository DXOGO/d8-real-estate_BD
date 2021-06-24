Public Class Opcao
    Private Sub ButtonVender_Click(sender As Object, e As EventArgs) Handles ButtonVender.Click
        'por o utilizador na base de dados como proprietario, caso ainda não esteja
        Me.Hide()
        Dim newForm As Vender
        newForm = New Vender()
        newForm.Show()
    End Sub

    Private Sub ButtonComprar_Click(sender As Object, e As EventArgs) Handles ButtonComprar.Click
        'por o utilizador na base de dados como interessado, caso ainda não esteja
        Me.Hide()
        Dim newForm As Comprar
        newForm = New Comprar()
        newForm.Show()
    End Sub
End Class