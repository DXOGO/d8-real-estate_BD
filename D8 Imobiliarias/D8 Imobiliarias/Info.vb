Public Class Info
    Private Sub Info_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        Dim imovel_selecionado = Comprar.Selected_Imovel
        TipoImovel.Font = New Font(TipoImovel.Font, FontStyle.Bold)
        TipoImovel.Text = imovel_selecionado.tipo_imovel_especifico
        TipoNegocio.Text = imovel_selecionado.tipo_negocio
        PrecoTextBox.Text = imovel_selecionado.preco
        LocalizacaoTextBox.Text = imovel_selecionado.localizacao
        AreaTotalTextBox.Text = imovel_selecionado.area_total
        AreaUtilTextBox.Text = imovel_selecionado.area_util
        ConstrucaoTextBox.Text = imovel_selecionado.ano_construcao
    End Sub
End Class