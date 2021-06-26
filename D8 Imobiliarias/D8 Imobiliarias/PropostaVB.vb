Public Class PropostaVB
    Private _proposta_codigo As String
    Private _valor As Integer
    Private _interessado_nif As Integer
    Private _imovel_codigo As String

    Property proposta_codigo() As String
        Get
            Return _proposta_codigo
        End Get
        Set(ByVal value As String)
            _proposta_codigo = value
        End Set
    End Property

    Property valor() As Integer
        Get
            Return _valor
        End Get
        Set(ByVal value As Integer)
            _valor = value
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
        Return "Imóvel - " + _imovel_codigo + " | Interessado - " + Convert.ToString(_interessado_nif) + " | Valor - " + Convert.ToString(_valor) + "€"
    End Function
End Class
