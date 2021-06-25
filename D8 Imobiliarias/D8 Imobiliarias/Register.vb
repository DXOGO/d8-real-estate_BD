Imports System.Data.SqlClient
Public Class Register

    Private Sub RegisterButton_Click(sender As Object, e As EventArgs) Handles RegisterButton.Click
        Dim nome As String
        Dim email As String
        Dim nif As Integer
        Dim nTelemovel As Integer
        Dim dataNasc As Date
        Dim dataNascString As String
        Dim endereco As String
        Dim password As String
        Dim confirm_password As String

        ' fazer verificações do e-mail ter só 1 @? e nome não ter numeros, numeros não terem letras etc?
        ' verificar também se todos os campos foram preenchidos
        If NomeTextBox.Text = "" Or EmailTextBox.Text = "" Or NIFTextBox.Text = "" Or N_TelemovelTextBox.Text = "" Or EnderecoTextBox.Text = "" Or PasswordTextBox.Text = "" Or CPasswordTextBox.Text = "" Then
            MsgBox("Preencha todos os campos antes de se registar!")
        Else
            nome = NomeTextBox.Text
            email = EmailTextBox.Text
            nif = Integer.Parse(NIFTextBox.Text)
            nTelemovel = Integer.Parse(N_TelemovelTextBox.Text)
            dataNasc = Data_Nasc.Value
            dataNascString = dataNasc.ToString("dd/MM/yyyy")
            endereco = EnderecoTextBox.Text
            password = PasswordTextBox.Text
            confirm_password = CPasswordTextBox.Text

            If password <> confirm_password Then
                MsgBox("As palavras-passe devem coincidir!")
                password = ""
                confirm_password = ""
                PasswordTextBox.Text = ""
                CPasswordTextBox.Text = ""
            End If

            Me.Hide()
            Dim newForm As Login
            newForm = New Login()
            newForm.Show()
        End If

    End Sub

    Private Sub Register_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ImobiliariasLabel.Font = New Font(ImobiliariasLabel.Font, FontStyle.Bold)
        Button1.Hide()
        'GlobalVariables.GlobalInfo()
    End Sub
End Class