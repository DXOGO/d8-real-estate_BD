Imports System.Data.SqlClient
Public Class FazerMarcacao
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"

    Private Sub MarcacaoButton_Click(sender As Object, e As EventArgs) Handles MarcacaoButton.Click
        Dim data = DataMarcacao.Value
        Dim data_marcacao = data.ToString("yyyy-MM-dd")
        Dim CMD As SqlCommand
        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                              "initial Catalog = " + dbName + ";" +
                              "uid = " + userName + ";" +
                              "password = " + userPass)
        CMD = New SqlCommand
        CMD.Connection = CN
        CMD.CommandText = "INSERT Proj.[marcacao] (data_marc, interessado_nif, imovel_codigo)
                           VALUES (@data_marcacao, @nif, @imovel_cod)"
        CMD.Parameters.Clear()
        CMD.Parameters.AddWithValue("@data_marcacao", Date.Parse(data_marcacao))
        CMD.Parameters.AddWithValue("@nif", Integer.Parse(Login.user_NIF))
        CMD.Parameters.AddWithValue("@imovel_cod", Comprar.Selected_Imovel.imovel_codigo)
        CN.Open()
        CMD.ExecuteNonQuery()
        CN.Close()
        MsgBox("A sua marcação foi agendada com sucesso!")
        Me.Close()
    End Sub
End Class