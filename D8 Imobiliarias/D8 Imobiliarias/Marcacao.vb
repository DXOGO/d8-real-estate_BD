Public Class Marcacao
    Private _data_marc As Date
    Private _interessado_nif As Integer
    Private _imovel_codigo As String

    Property data_marc() As Date
        Get
            Return _data_marc
        End Get
        Set(ByVal value As Date)
            _data_marc = value
        End Set
    End Property

    Property interessado_nif() As Integer
        Get
            Return _interessado_nif
        End Get
        Set(ByVal value As Integer)
            _interessado_nif = value
        End Set
    End Property

    Property imovel_codigo() As String
        Get
            Return _imovel_codigo
        End Get
        Set(ByVal value As String)
            _imovel_codigo = value
        End Set
    End Property

    Public Sub New()
        MyBase.New()
    End Sub
    Overrides Function ToString() As String
        Return "Imóvel - " + _imovel_codigo + " | Interessado - " + Convert.ToString(_interessado_nif) + " | Data - " + _data_marc.ToString("dd/MM/yyyy")
    End Function
End Class
