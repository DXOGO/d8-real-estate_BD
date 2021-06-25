Imports System.Data.SqlClient
Public Class GlobalVariables
    Public Shared Property NIF As Integer
    Public Shared Property Nome As String
    Public Shared Property Birth As Date
    Public Shared Property Endereco As String
    Public Shared Property Email As String
    Public Shared Property Num_Tlm As Integer
    Public Shared Property Num_Agente As Integer
    Public Shared Property Dep_No As Integer

    Public Shared Property listaImoveis As List(Of Imovel)

    Public Shared Function GlobalInfo()
        Dim CN As SqlConnection
        Dim CMD As SqlCommand
        Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
        Dim dbName = "p5g5"
        Dim userName = "p5g5"
        Dim userPass = "!DXartur2021"

        GlobalVariables.listaImoveis.Clear()

        Dim RDR As SqlDataReader

        Dim SQA As SqlDataAdapter

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)


        CMD = New SqlCommand
        CMD.Connection = CN

        CMD.CommandText = "SELECT *
                           FROM p5g5.Proj.[imovel]"
        CN.Open()
        RDR = CMD.ExecuteReader

        While RDR.Read
            Dim I As New Imovel
            I.imovel_codigo = RDR.Item("imovel_codigo")
            I.preco = Convert.ToString(RDR.Item("preco"))
            I.localizacao = RDR.Item("localizacao")
            I.ano_construcao = Convert.ToString(RDR.Item("ano_construcao"))
            I.area_total = Convert.ToString(RDR.Item("area_total"))
            I.area_util = Convert.ToString(RDR.Item("area_util"))
            I.proprietario_nif = Convert.ToString(RDR.Item("proprietario_nif"))

            listaImoveis.Add(I)
        End While
        CN.Close()
    End Function
End Class
