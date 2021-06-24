Public Class Imovel
    Private _tipo_imovel As String
    Private _tipo_imovel_especifico As String
    'Private _tipo_negocio As String
    Private _imovel_codigo As String
    Private _preco As Integer
    Private _localizacao As String
    Private _ano_construcao As Integer
    Private _area_total As Integer
    Private _area_util As Integer
    Private _proprietario_nif As Integer

    Property tipo_imovel() As String
        Get
            Return _tipo_imovel
        End Get
        Set(ByVal value As String)
            _tipo_imovel = value
        End Set
    End Property

    Property tipo_imovel_especifico() As String
        Get
            Return _tipo_imovel_especifico
        End Get
        Set(ByVal value As String)
            _tipo_imovel_especifico = value
        End Set
    End Property

    'Property tipo_negocio() As String
    'Get
    'Return _tipo_negocio
    'End Get
    'Set(ByVal value As String)
    '       _tipo_negocio = value
    'End Set
    'End Property

    Property imovel_codigo() As String
        Get
            Return _imovel_codigo
        End Get
        Set(ByVal value As String)
            _imovel_codigo = value
        End Set
    End Property

    Property preco() As Integer
        Get
            Return _preco
        End Get

        Set(ByVal value As Integer)
            _preco = value
        End Set
    End Property

    Property localizacao() As String
        Get
            Return _localizacao
        End Get

        Set(ByVal value As String)
            _localizacao = value
        End Set
    End Property

    Property ano_construcao() As Integer
        Get
            Return _ano_construcao
        End Get

        Set(ByVal value As Integer)
            _ano_construcao = value
        End Set
    End Property

    Property area_total() As Integer
        Get
            Return _area_total
        End Get

        Set(ByVal value As Integer)
            _area_total = value
        End Set
    End Property

    Property area_util() As Integer
        Get
            Return _area_util
        End Get

        Set(ByVal value As Integer)
            _area_util = value
        End Set
    End Property

    Property proprietario_nif() As Integer
        Get
            Return _proprietario_nif
        End Get

        Set(ByVal value As Integer)
            _proprietario_nif = value
        End Set
    End Property

    Public Sub New()
        MyBase.New()
    End Sub
    Overrides Function ToString() As String
        Return _tipo_imovel_especifico + " - " + _localizacao + " | " + Convert.ToString(_preco) + "€" '(tipoNegocio)
    End Function

End Class

