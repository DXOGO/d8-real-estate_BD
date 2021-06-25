Imports System.Data.SqlClient
Public Class Proposta
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
    Private Sub SubmitButton_Click(sender As Object, e As EventArgs) Handles SubmitButton.Click
        Dim valor_proposta As Integer
        If ValorTextBox.Text = "" Then
            MsgBox("Introduza um valor para apresentar a proposta.")
        Else
            valor_proposta = Integer.Parse(ValorTextBox.Text)
            Dim imovel = Comprar.Selected_Imovel
            Dim interessado_nif = Login.user_NIF
            Dim imovel_codigo = imovel.imovel_codigo
            'Add proposta to DB
            Dim CMD As New SqlCommand
            CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)

            CMD.Connection = CN
            CN.Open()
            CMD.CommandText = "Proj.[cp_add_proposta]"
            CMD.CommandType = CommandType.StoredProcedure
            CMD.Parameters.Clear()
            CMD.Parameters.AddWithValue("@valor", valor_proposta)
            CMD.Parameters.AddWithValue("@interessado_nif", interessado_nif)
            CMD.Parameters.AddWithValue("@imovel_codigo", imovel_codigo)
            CMD.ExecuteNonQuery()
            CN.Close()
            MsgBox("A proposta foi efetuada com sucesso.")
            Me.Close()
        End If
    End Sub

    Private Sub ExitButton_Click(sender As Object, e As EventArgs) Handles ExitButton.Click
        Me.Close()
    End Sub

    Private Sub Proposta_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ValorTextBox.Text = ""
    End Sub
End Class