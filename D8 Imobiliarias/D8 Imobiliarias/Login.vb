Imports System.Data.SqlClient
Public Class Login
    Public Shared Property user_name As String
    Public Shared Property user_email As String
    Public Shared Property user_NIF As String
    Public Shared Property lista_users As New List(Of Pessoa)

    Dim CN As SqlConnection
    Dim dbServer = "tcp:mednat.ieeta.pt\SQLSERVER,8101"
    Dim dbName = "p5g5"
    Dim userName = "p5g5"
    Dim userPass = "!DXartur2021"
    Private Sub Login_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        'Carregar os dados da BD com os utilizadores que podem, à partida, fazer login
        Dim RDR As SqlDataReader

        Dim SQA As SqlDataAdapter

        Dim CMD As SqlCommand

        CN = New SqlConnection("data Source = " + dbServer + " ;" +
                               "initial Catalog = " + dbName + ";" +
                               "uid = " + userName + ";" +
                               "password = " + userPass)


        CMD = New SqlCommand
        CMD.Connection = CN

        CMD.CommandText = "SELECT nif, nome, birth, endereco, email, num_tlm
                           FROM p5g5.Proj.[pessoa]"
        CN.Open()
        RDR = CMD.ExecuteReader

        While RDR.Read
            Dim P As New Pessoa
            P.nif = Convert.ToString(RDR.Item("nif"))
            P.nome = RDR.Item("nome")
            P.birth = Convert.ToString(RDR.Item("birth"))
            P.endereco = RDR.Item("endereco")
            P.email = RDR.Item("email")
            P.num_tlm = Convert.ToString(RDR.Item("num_tlm"))

            lista_users.Add(P)
        End While

    End Sub

    Private Sub LoginButton_Click(sender As Object, e As EventArgs) Handles LoginButton.Click
        Dim email As String
        Dim password As String

        email = EmailTextBox.Text
        password = PasswordTextBox.Text
        user_name = ""
        For index As Integer = 0 To lista_users.Count - 1
            If email = lista_users(index).email Then
                user_name = lista_users(index).nome
                user_email = lista_users(index).email
                user_NIF = lista_users(index).nif
                Exit For
                'If email And password Then ' if email and password in data base, ta-se bem
            End If
        Next
        If user_name.Length = 0 Then
            MsgBox("As suas credenciais não estão na nossa base de dados!")
            email = ""
            password = ""
            EmailTextBox.Text = ""
            PasswordTextBox.Text = ""
        Else
            Me.Hide()
            Dim newForm As Opcao
            newForm = New Opcao()
            newForm.Show()
        End If
    End Sub

    Private Sub RegistButton_Click(sender As Object, e As EventArgs) Handles RegistButton.Click
        Me.Hide()
        Dim newForm As Register
        newForm = New Register()
        newForm.Show()
    End Sub
End Class