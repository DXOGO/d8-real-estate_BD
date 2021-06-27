Imports System.Data.SqlClient
Public Class Register
    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
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

        If NomeTextBox.Text = "" Or EmailTextBox.Text = "" Or NIFTextBox.Text = "" Or N_TelemovelTextBox.Text = "" Or EnderecoTextBox.Text = "" Or PasswordTextBox.Text = "" Or CPasswordTextBox.Text = "" Then
            MsgBox("Preencha todos os campos antes de se registar!")
        Else
            nome = NomeTextBox.Text
            email = EmailTextBox.Text
            nif = Integer.Parse(NIFTextBox.Text)
            nTelemovel = Integer.Parse(N_TelemovelTextBox.Text)
            dataNasc = Data_Nasc.Value
            dataNascString = dataNasc.ToString("yyyy-MM-dd")
            endereco = EnderecoTextBox.Text
            password = PasswordTextBox.Text
            confirm_password = CPasswordTextBox.Text

            If password <> confirm_password Then
                MsgBox("As palavras-passe devem coincidir!")
                password = ""
                confirm_password = ""
                PasswordTextBox.Text = ""
                CPasswordTextBox.Text = ""
            Else
                'Add new user to DB
                Dim CMD As New SqlCommand
                CN = New SqlConnection("data Source = " + dbServer + " ;" +
                                    "initial Catalog = " + dbName + ";" +
                                    "uid = " + userName + ";" +
                                    "password = " + userPass)

                CMD.Connection = CN
                CN.Open()
                CMD.CommandText = "Proj.[cp_create_pessoa]"
                CMD.CommandType = CommandType.StoredProcedure
                CMD.Parameters.Clear()
                CMD.Parameters.AddWithValue("@nif", nif)
                CMD.Parameters.AddWithValue("@nome", nome)
                CMD.Parameters.AddWithValue("@birth", dataNasc)
                CMD.Parameters.AddWithValue("@email", email)
                CMD.Parameters.AddWithValue("@morada", endereco)
                CMD.Parameters.AddWithValue("@num_tlm", nTelemovel)
                CMD.Parameters.AddWithValue("@password", password)
                CMD.ExecuteNonQuery()
                CN.Close()
                MsgBox("Registou-se com sucesso.")
                Me.Hide()
                Dim newForm As Login
                newForm = New Login()
                newForm.Show()
            End If

        End If

    End Sub

    Private Sub Register_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        ImobiliariasLabel.Font = New Font(ImobiliariasLabel.Font, FontStyle.Bold)
        'GlobalVariables.GlobalInfo()
    End Sub
End Class