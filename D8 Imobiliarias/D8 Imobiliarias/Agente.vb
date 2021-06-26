Imports System.Data.SqlClient
Public Class Agente
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"

    Private Sub Agente_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        NameLabel.Text = Login.user_name
        NumberLabel.Text = Login.user_number
        DepartmentLabel.Text = Login.user_department

        InfoListBox.Items.Clear()

    End Sub

    Private Sub MarcacoesButton_Click(sender As Object, e As EventArgs) Handles MarcacoesButton.Click
        InfoListBox.Items.Clear()
        Dim RDR As SqlDataReader

        Dim SQA As SqlDataAdapter

        Dim CMD As SqlCommand

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)
        CMD = New SqlCommand
        CMD.Connection = CN

        CMD.CommandText = "SELECT data_marc, interessado_nif, imovel_codigo
                           FROM p5g5.Proj.[marcacao]"
        CN.Open()
        RDR = CMD.ExecuteReader

        While RDR.Read
            Dim M As New Marcacao
            M.data_marc = RDR.Item("data_marc")
            M.interessado_nif = Convert.ToString(RDR.Item("interessado_nif"))
            M.imovel_codigo = RDR.Item("imovel_codigo")
            InfoListBox.Items.Add(M)
        End While
        CN.Close()
    End Sub

    Private Sub PropostasButton_Click(sender As Object, e As EventArgs) Handles PropostasButton.Click
        InfoListBox.Items.Clear()
        Dim RDR As SqlDataReader

        Dim SQA As SqlDataAdapter

        Dim CMD As SqlCommand

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)
        CMD = New SqlCommand
        CMD.Connection = CN

        CMD.CommandText = "SELECT proposta_codigo, valor, interessado_nif, imovel_codigo
                           FROM p5g5.Proj.[proposta]"
        CN.Open()
        RDR = CMD.ExecuteReader

        While RDR.Read
            Dim P As New PropostaVB
            P.proposta_codigo = RDR.Item("proposta_codigo")
            P.valor = Convert.ToString(RDR.Item("valor"))
            P.interessado_nif = Convert.ToString(RDR.Item("interessado_nif"))
            P.imovel_codigo = RDR.Item("imovel_codigo")
            InfoListBox.Items.Add(P)
        End While
        CN.Close()

    End Sub
End Class