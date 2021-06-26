Imports System.Data.SqlClient
Public Class Opcao
    Public Shared Property lista_imoveis As New List(Of Imovel)
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
    Dim user_NIF = Login.user_NIF
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

    Private Sub PropostasButton_Click(sender As Object, e As EventArgs) Handles PropostasButton.Click
        Dim newForm As VerPropostas
        newForm = New VerPropostas()
        newForm.Show()
    End Sub

    Private Sub Opcao_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        lista_imoveis.Clear()
        Dim RDR As SqlDataReader

        Dim SQA As SqlDataAdapter

        Dim CMD As SqlCommand

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)
        CMD = New SqlCommand
        CMD.Connection = CN

        CMD.CommandText = "SELECT imovel_codigo, preco, localizacao, ano_construcao, area_total, area_util, proprietario_nif, Proj.[esti8](imovel_codigo) AS TI, Proj.[d8](imovel_codigo) AS TE
                           FROM p5g5.Proj.[imovel]"
        CN.Open()
        RDR = CMD.ExecuteReader

        While RDR.Read
            Dim I As New Imovel
            I.tipo_imovel = RDR.Item("TI")
            I.tipo_imovel_especifico = RDR.Item("TE")
            I.imovel_codigo = RDR.Item("imovel_codigo")
            I.preco = Convert.ToString(RDR.Item("preco"))
            I.localizacao = RDR.Item("localizacao")
            I.ano_construcao = Convert.ToString(RDR.Item("ano_construcao"))
            I.area_total = Convert.ToString(RDR.Item("area_total"))
            I.area_util = Convert.ToString(RDR.Item("area_util"))
            I.proprietario_nif = Convert.ToString(RDR.Item("proprietario_nif"))

            If I.proprietario_nif = user_NIF Then
                lista_imoveis.Add(I)
            End If

        End While
        CN.Close()
    End Sub
End Class