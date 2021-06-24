Public Class Vender
    Private Sub TipoImovelComboBox_SelectedIndexChanged(sender As Object, e As EventArgs) Handles TipoImovelComboBox.SelectedIndexChanged
        Select Case TipoImovelComboBox.SelectedItem.ToString
            Case "Habitacional"
                ImoveisComerciais.Visible = False
                ImoveisHabitacionais.Visible = True
                ImoveisComerciais.Text = ""
                ShowInformation()
            Case "Comercial"
                ImoveisComerciais.Visible = True
                ImoveisHabitacionais.Visible = False
                ImoveisHabitacionais.Text = ""
                QuartosTextBox.Text = ""
                QuartosTextBox.Enabled = False
                WCTextBox.Text = ""
                WCTextBox.Enabled = False

                HideInformation()
        End Select
    End Sub

    Private Sub ImoveisHabitacionais_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ImoveisHabitacionais.SelectedIndexChanged
        Select Case ImoveisHabitacionais.SelectedItem.ToString
            Case "Quarto"
                QuartosTextBox.Text = ""
                QuartosTextBox.Enabled = False
                WCTextBox.Text = ""
                WCTextBox.Enabled = False
                AnoConstrucaoTextBox.Enabled = True

                HideInformation()
            Case "Terreno"
                QuartosTextBox.Text = ""
                QuartosTextBox.Enabled = False
                WCTextBox.Text = ""
                WCTextBox.Enabled = False
                AnoConstrucaoTextBox.Text = ""
                AnoConstrucaoTextBox.Enabled = False

                HideInformation()
            Case Else
                ShowInformation()
        End Select
    End Sub

    Private Sub Vender_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        NameLabel.Text = Login.user_name
        EmailLabel.Text = Login.user_email
        NIFLabel.Text = Login.user_NIF
        ImoveisHabitacionais.Visible = False
        ImoveisComerciais.Visible = False
        HideInformation()
    End Sub


    Function HideInformation()

        AnoConstrucaoTextBox.Text = ""
        QuartosTextBox.Text = ""
        WCTextBox.Text = ""
        ChurrasqueiraSimRB.Checked = False
        ChurrasqueiraNaoRB.Checked = False
        ChurrasqueiraQtyTB.Text = ""
        PiscinaSimRB.Checked = False
        PiscinaNaoRB.Checked = False
        PiscinaQtyTB.Text = ""
        PaineisSimRB.Checked = False
        PaineisNaoRB.Checked = False
        PaineisQtyTB.Text = ""
        JardimSimRB.Checked = False
        JardimNaoRB.Checked = False
        JardimQtyTB.Text = ""
        JacuzziSimRB.Checked = False
        JacuzziNaoRB.Checked = False
        JacuzziQtyTB.Text = ""
        GaragemSimRB.Checked = False
        GaragemNaoRB.Checked = False
        GaragemQtyTB.Text = ""


        ChurrasqueiraLabel.Visible = False
        ChurrasqueiraSimRB.Visible = False
        ChurrasqueiraNaoRB.Visible = False
        ChurrasqueiraQtyLabel.Visible = False
        ChurrasqueiraQtyTB.Visible = False

        PiscinaLabel.Visible = False
        PiscinaSimRB.Visible = False
        PiscinaNaoRB.Visible = False
        PiscinaQtyLabel.Visible = False
        PiscinaQtyTB.Visible = False

        PaineisLabel.Visible = False
        PaineisSimRB.Visible = False
        PaineisNaoRB.Visible = False
        PaineisQtyLabel.Visible = False
        PaineisQtyTB.Visible = False

        JardimLabel.Visible = False
        JardimSimRB.Visible = False
        JardimNaoRB.Visible = False
        JardimQtyLabel.Visible = False
        JardimQtyTB.Visible = False

        JacuzziLabel.Visible = False
        JacuzziSimRB.Visible = False
        JacuzziNaoRB.Visible = False
        JacuzziQtyLabel.Visible = False
        JacuzziQtyTB.Visible = False

        GaragemLabel.Visible = False
        GaragemSimRB.Visible = False
        GaragemNaoRB.Visible = False
        GaragemQtyLabel.Visible = False
        GaragemQtyTB.Visible = False
    End Function

    Function ShowInformation()
        QuartosTextBox.Enabled = True
        WCTextBox.Enabled = True
        AnoConstrucaoTextBox.Enabled = True

        ChurrasqueiraLabel.Visible = True
        ChurrasqueiraSimRB.Visible = True
        ChurrasqueiraNaoRB.Visible = True
        ChurrasqueiraQtyLabel.Visible = True
        ChurrasqueiraQtyTB.Visible = True

        PiscinaLabel.Visible = True
        PiscinaSimRB.Visible = True
        PiscinaNaoRB.Visible = True
        PiscinaQtyLabel.Visible = True
        PiscinaQtyTB.Visible = True

        PaineisLabel.Visible = True
        PaineisSimRB.Visible = True
        PaineisNaoRB.Visible = True
        PaineisQtyLabel.Visible = True
        PaineisQtyTB.Visible = True

        JardimLabel.Visible = True
        JardimSimRB.Visible = True
        JardimNaoRB.Visible = True
        JardimQtyLabel.Visible = True
        JardimQtyTB.Visible = True

        JacuzziLabel.Visible = True
        JacuzziSimRB.Visible = True
        JacuzziNaoRB.Visible = True
        JacuzziQtyLabel.Visible = True
        JacuzziQtyTB.Visible = True

        GaragemLabel.Visible = True
        GaragemSimRB.Visible = True
        GaragemNaoRB.Visible = True
        GaragemQtyLabel.Visible = True
        GaragemQtyTB.Visible = True
    End Function

    Private Sub ChurrasqueiraNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles ChurrasqueiraNaoRB.CheckedChanged
        If ChurrasqueiraNaoRB.Checked = True Then
            ChurrasqueiraQtyTB.Text = ""
            ChurrasqueiraQtyTB.Enabled = False
        Else
            ChurrasqueiraQtyTB.Enabled = True
        End If
    End Sub

    Private Sub PiscinaNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles PiscinaNaoRB.CheckedChanged
        If PiscinaNaoRB.Checked = True Then
            PiscinaQtyTB.Text = ""
            PiscinaQtyTB.Enabled = False
        Else
            PiscinaQtyTB.Enabled = True
        End If
    End Sub

    Private Sub PaineisNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles PaineisNaoRB.CheckedChanged
        If PaineisNaoRB.Checked = True Then
            PaineisQtyTB.Text = ""
            PaineisQtyTB.Enabled = False
        Else
            PaineisQtyTB.Enabled = True
        End If
    End Sub

    Private Sub JardimNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles JardimNaoRB.CheckedChanged
        If JardimNaoRB.Checked = True Then
            JardimQtyTB.Text = ""
            JardimQtyTB.Enabled = False
        Else
            JardimQtyTB.Enabled = True
        End If
    End Sub

    Private Sub JacuzziNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles JacuzziNaoRB.CheckedChanged
        If JacuzziNaoRB.Checked = True Then
            JacuzziQtyTB.Text = ""
            JacuzziQtyTB.Enabled = False
        Else
            JacuzziQtyTB.Enabled = True
        End If
    End Sub

    Private Sub GaragemNaoRB_CheckedChanged(sender As Object, e As EventArgs) Handles GaragemNaoRB.CheckedChanged
        If GaragemNaoRB.Checked = True Then
            GaragemQtyTB.Text = ""
            GaragemQtyTB.Enabled = False
        Else
            GaragemQtyTB.Enabled = True
        End If
    End Sub

    Private Sub VoltarButton_Click(sender As Object, e As EventArgs) Handles VoltarButton.Click
        Me.Hide()
        Dim newForm As Opcao
        newForm = New Opcao()
        newForm.Show()
    End Sub

    Private Sub AnunciarButton_Click(sender As Object, e As EventArgs) Handles AnunciarButton.Click
        Me.Hide()
        Dim newForm As Opcao
        newForm = New Opcao()
        newForm.Show()
    End Sub
End Class