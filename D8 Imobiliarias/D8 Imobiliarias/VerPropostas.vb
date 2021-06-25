Imports System.Data.SqlClient
Public Class VerPropostas
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
    Dim lista_total_propostas As New List(Of PropostaVB)
    Private Sub VerPropostas_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        PropostasListBox.Items.Clear()
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
            For index As Integer = 0 To Opcao.lista_imoveis.Count - 1
                If Opcao.lista_imoveis(index).imovel_codigo = P.imovel_codigo Then
                    PropostasListBox.Items.Add(P)
                End If
            Next
        End While
        CN.Close()

    End Sub

    Private Sub AceitarButton_Click(sender As Object, e As EventArgs) Handles AceitarButton.Click
        If PropostasListBox.SelectedIndex = -1 Then
            MsgBox("Selecione uma proposta!")
        Else
            Dim proposta As PropostaVB
            proposta = PropostasListBox.SelectedItem
            Dim CMD As New SqlCommand
            CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)

            CMD.Connection = CN
            CN.Open()
            CMD.CommandText = "Proj.[cp_update_imovel]"
            CMD.CommandType = CommandType.StoredProcedure
            CMD.Parameters.Clear()
            Dim v_imovel_codigo = proposta.imovel_codigo
            CMD.Parameters.AddWithValue("@v_imovel_codigo", v_imovel_codigo)
            CMD.ExecuteNonQuery()
            CN.Close()
            MsgBox("A proposta foi aceite com sucesso.")
            Me.Close()
        End If
    End Sub
End Class