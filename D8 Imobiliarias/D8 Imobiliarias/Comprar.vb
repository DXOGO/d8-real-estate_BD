Imports System.Data.SqlClient
Public Class Comprar
    Public Shared Property Selected_Imovel As New Imovel
    Public Shared Property listaInicial As New List(Of Imovel)
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
    Private Sub Comprar_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        NameLabel.Text = Login.user_name
        EmailLabel.Text = Login.user_email
        NIFLabel.Text = Login.user_NIF

        ImoveisComerciais.Visible = False
        ImoveisHabitacionais.Visible = False

        ImoveisListBox.Items.Clear()

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

            ImoveisListBox.Items.Add(I)
        End While
        CN.Close()
        listaInicial.AddRange(ImoveisListBox.Items.OfType(Of Imovel).ToArray)
    End Sub

    Private Sub TipoImovelComboBox_SelectedIndexChanged(sender As Object, e As EventArgs) Handles TipoImovelComboBox.SelectedIndexChanged
        Select Case TipoImovelComboBox.SelectedItem.ToString
            Case "Habitacional"
                ImoveisComerciais.Visible = False
                ImoveisHabitacionais.Visible = True
            Case "Comercial"
                ImoveisComerciais.Visible = True
                ImoveisHabitacionais.Visible = False
        End Select
    End Sub

    Private Sub ImoveisListBox_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ImoveisListBox.SelectedIndexChanged
        PropostaButton.Visible = True
    End Sub

    Private Sub MarcacaoButton_Click(sender As Object, e As EventArgs) Handles MarcacaoButton.Click
        If ImoveisListBox.SelectedIndex = -1 Then ' se não for selecionado nenhum imóvel
            MsgBox("Selecione um imóvel para fazer uma marcação!")
        End If
    End Sub

    Private Sub PropostaButton_Click(sender As Object, e As EventArgs) Handles PropostaButton.Click
        If ImoveisListBox.SelectedIndex = -1 Then
            MsgBox("Selecione um imóvel para avançar com uma proposta!")
        Else
            Dim index = ImoveisListBox.SelectedIndex
            Selected_Imovel = ImoveisListBox.Items(index)
            Dim newForm As Info
            newForm = New Info()
            newForm.Show()
            Dim newForm2 As Proposta
            newForm2 = New Proposta()
            newForm2.Show()
        End If
    End Sub

    Private Sub ApplyButton_Click(sender As Object, e As EventArgs) Handles ApplyButton.Click
        Dim tipoNegocio As String
        Dim tipoImovel As String
        Dim tipoHabitacional As String
        Dim tipoComercial As String
        Dim localizacao As String
        Dim precoMin As String
        Dim precoMax As String
        Dim area As String
        Dim quartos As String
        Dim wcs As String
        Dim data_construcao As String
        Dim conditions As New List(Of String)()

        ImoveisListBox.Items.Clear()

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)

        Dim CMD = "SELECT * FROM (SELECT [imovel].imovel_codigo, preco, localizacao, ano_construcao, area_total, designacao_comercial AS designacao
            FROM Proj.[imovel] Join Proj.[comercial] ON [imovel].imovel_codigo = [comercial].imovel_codigo
            Join Proj.[tipoComercial] ON [comercial].tipo_comercial_id = [tipoComercial].id 
			UNION
			SELECT [imovel].imovel_codigo, preco, localizacao, ano_construcao, area_total, designacao_habitacional AS designacao
			FROM Proj.[imovel] Join Proj.[habitacional] ON [imovel].imovel_codigo = [habitacional].imovel_codigo
            Join Proj.[tipoHabitacional] ON [habitacional].tipo_habitacional_id = [tipoHabitacional].id) AS legordo"

        'If TipoNegocioComboBox.Text <> "" Then
        'tipoNegocio = TipoNegocioComboBox.Text
        'conditions.Add(String.Format("designacao_negocio = {0}", tipoNegocio))
        'End If

        If TipoImovelComboBox.Text <> "" Then
            tipoImovel = TipoImovelComboBox.Text
            If tipoImovel = "Habitacional" Then
                ImoveisComerciais.Text = ""
            ElseIf tipoImovel = "Comercial" Then
                ImoveisHabitacionais.Text = ""
            End If
            conditions.Add(String.Format("Proj.[esti8](imovel_codigo) = '{0}'", tipoImovel))
        End If

        If ImoveisHabitacionais.Text <> "" Then
            tipoHabitacional = ImoveisHabitacionais.Text
            conditions.Add(String.Format("Proj.[d8](imovel_codigo) = '{0}'", tipoHabitacional))
        End If

        If ImoveisComerciais.Text <> "" Then
            tipoComercial = ImoveisComerciais.Text
            conditions.Add(String.Format("Proj.[d8](imovel_codigo) = '{0}'", tipoComercial))
        End If

        If LocalizacaoTextBox.Text <> "" Then
            localizacao = LocalizacaoTextBox.Text
            conditions.Add(String.Format("localizacao LIKE '%{0}%'", localizacao))
        End If

        If PrecoMinTextBox.Text <> "" Then
            precoMin = PrecoMinTextBox.Text
            conditions.Add(String.Format("preco >= {0}", precoMin))
        End If

        If PrecoMaxTextBox.Text <> "" Then
            precoMax = PrecoMaxTextBox.Text
            conditions.Add(String.Format("preco <= {0}", precoMax))
        End If

        If AreaTextBox.Text <> "" Then
            area = AreaTextBox.Text
            conditions.Add(String.Format("area_total >= {0}", area))
        End If

        If QuartosComboBox.Text <> "" Then
            If QuartosComboBox.Text <> "Qualquer" Then
                quartos = QuartosComboBox.Text
                Dim nQuartos = quartos.ToString.Split("+")(0)
                conditions.Add(String.Format("num_quartos >= {0}", nQuartos))
            End If
        End If

        If WCComboBox.Text <> "" Then
            If WCComboBox.Text <> "Qualquer" Then
                wcs = WCComboBox.Text
                Dim nWCs = wcs.ToString.Split("+")(0)
                conditions.Add(String.Format("wcs >= {0}", nWCs))
            End If
        End If

        If ConstrucaoTextBox.Text <> "" Then
            data_construcao = ConstrucaoTextBox.Text
            conditions.Add(String.Format("ano_construcao >= {0}", data_construcao))
        End If

        If conditions.Count > 0 Then
            CMD = CMD + " WHERE "
            For idx As Integer = 0 To conditions.Count - 1
                CMD = CMD + conditions(idx)
                If Not (idx = conditions.Count - 1) Then
                    CMD = CMD + " AND "
                End If
            Next
        End If

        Dim count As Integer = 0
        Dim RDR As SqlDataReader
        Dim i As Integer
        Dim SQLcmd As SqlCommand

        SQLcmd = New SqlCommand
        SQLcmd.Connection = CN
        SQLcmd.CommandText = CMD
        CN.Open()


        ImoveisListBox.Enabled = True

        Debug.Print(CMD)
        RDR = SQLcmd.ExecuteReader

        While (RDR.Read)
            For index As Integer = 0 To listaInicial.Count - 1
                If listaInicial(index).imovel_codigo = RDR.Item("imovel_codigo") Then
                    ImoveisListBox.Items.Add(listaInicial(index))
                    count = count + 1
                End If
            Next
        End While

        CN.Close()


    End Sub

    Private Sub InfoButton_Click(sender As Object, e As EventArgs) Handles InfoButton.Click
        If ImoveisListBox.SelectedIndex = -1 Then
            MsgBox("Selecione um imóvel!")
        Else
            Dim index = ImoveisListBox.SelectedIndex
            Selected_Imovel = ImoveisListBox.Items(index)
            Dim newForm As Info
            newForm = New Info()
            newForm.Show()
        End If
    End Sub

    Private Sub VoltarButton_Click(sender As Object, e As EventArgs) Handles VoltarButton.Click
        Me.Hide()
        Dim newForm As Opcao
        newForm = New Opcao()
        newForm.Show()
    End Sub
End Class