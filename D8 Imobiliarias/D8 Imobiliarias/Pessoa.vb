Public Class Pessoa
    Private _nif As Integer
    Private _nome As String
    Private _birth As Date
    Private _endereco As String
    Private _email As String
    Private _num_tlm As Integer
    'falta password

    Property nif() As Integer
        Get
            Return _nif
        End Get
        Set(ByVal value As Integer)
            _nif = value
        End Set
    End Property

    Property nome() As String
        Get
            Return _nome
        End Get

        Set(ByVal value As String)
            _nome = value
        End Set
    End Property

    Property birth() As Date
        Get
            Return _birth
        End Get

        Set(ByVal value As Date)
            _birth = value
        End Set
    End Property

    Property endereco() As String
        Get
            Return _endereco
        End Get

        Set(ByVal value As String)
            _endereco = value
        End Set
    End Property

    Property email() As String
        Get
            Return _email
        End Get

        Set(ByVal value As String)
            _email = value
        End Set
    End Property

    Property num_tlm() As Integer
        Get
            Return _num_tlm
        End Get

        Set(ByVal value As Integer)
            _num_tlm = value
        End Set
    End Property

End Class
