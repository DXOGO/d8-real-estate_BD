<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Comprar
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Exigido pelo Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'OBSERVAÇÃO: o procedimento a seguir é exigido pelo Windows Form Designer
    'Pode ser modificado usando o Windows Form Designer.  
    'Não o modifique usando o editor de códigos.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.ImoveisListBox = New System.Windows.Forms.ListBox()
        Me.TipoNegocioComboBox = New System.Windows.Forms.ComboBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.TipoImovelComboBox = New System.Windows.Forms.ComboBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.ImoveisHabitacionais = New System.Windows.Forms.ComboBox()
        Me.PrecoMinTextBox = New System.Windows.Forms.TextBox()
        Me.PrecoMaxTextBox = New System.Windows.Forms.TextBox()
        Me.ImoveisComerciais = New System.Windows.Forms.ComboBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.QuartosComboBox = New System.Windows.Forms.ComboBox()
        Me.PropostaButton = New System.Windows.Forms.Button()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.LocalizacaoTextBox = New System.Windows.Forms.TextBox()
        Me.ApplyButton = New System.Windows.Forms.Button()
        Me.Label6 = New System.Windows.Forms.Label()
        Me.MarcacaoButton = New System.Windows.Forms.Button()
        Me.Label7 = New System.Windows.Forms.Label()
        Me.AreaTextBox = New System.Windows.Forms.TextBox()
        Me.Label8 = New System.Windows.Forms.Label()
        Me.WCComboBox = New System.Windows.Forms.ComboBox()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.NIFLabel = New System.Windows.Forms.Label()
        Me.Label9 = New System.Windows.Forms.Label()
        Me.EmailLabel = New System.Windows.Forms.Label()
        Me.Label10 = New System.Windows.Forms.Label()
        Me.NameLabel = New System.Windows.Forms.Label()
        Me.Label11 = New System.Windows.Forms.Label()
        Me.ConstrucaoTextBox = New System.Windows.Forms.TextBox()
        Me.InfoButton = New System.Windows.Forms.Button()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.ImobiliariasLabel = New System.Windows.Forms.Label()
        Me.VoltarButton = New System.Windows.Forms.Button()
        Me.Panel2.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ImoveisListBox
        '
        Me.ImoveisListBox.FormattingEnabled = True
        Me.ImoveisListBox.ItemHeight = 20
        Me.ImoveisListBox.Location = New System.Drawing.Point(704, 161)
        Me.ImoveisListBox.Name = "ImoveisListBox"
        Me.ImoveisListBox.Size = New System.Drawing.Size(456, 324)
        Me.ImoveisListBox.TabIndex = 16
        '
        'TipoNegocioComboBox
        '
        Me.TipoNegocioComboBox.FormattingEnabled = True
        Me.TipoNegocioComboBox.Items.AddRange(New Object() {"Compra", "Aluguer", "Trespasse"})
        Me.TipoNegocioComboBox.Location = New System.Drawing.Point(385, 181)
        Me.TipoNegocioComboBox.Name = "TipoNegocioComboBox"
        Me.TipoNegocioComboBox.Size = New System.Drawing.Size(151, 28)
        Me.TipoNegocioComboBox.TabIndex = 17
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(254, 184)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(118, 20)
        Me.Label1.TabIndex = 18
        Me.Label1.Text = "Tipo de negócio"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(263, 229)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(109, 20)
        Me.Label2.TabIndex = 19
        Me.Label2.Text = "Tipo de imóvel"
        '
        'TipoImovelComboBox
        '
        Me.TipoImovelComboBox.FormattingEnabled = True
        Me.TipoImovelComboBox.Items.AddRange(New Object() {"Habitacional", "Comercial"})
        Me.TipoImovelComboBox.Location = New System.Drawing.Point(385, 226)
        Me.TipoImovelComboBox.Name = "TipoImovelComboBox"
        Me.TipoImovelComboBox.Size = New System.Drawing.Size(151, 28)
        Me.TipoImovelComboBox.TabIndex = 20
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(326, 309)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(46, 20)
        Me.Label3.TabIndex = 21
        Me.Label3.Text = "Preço"
        '
        'ImoveisHabitacionais
        '
        Me.ImoveisHabitacionais.FormattingEnabled = True
        Me.ImoveisHabitacionais.Items.AddRange(New Object() {"Apartamento", "Quinta", "Moradia", "Terreno", "Quarto"})
        Me.ImoveisHabitacionais.Location = New System.Drawing.Point(542, 226)
        Me.ImoveisHabitacionais.Name = "ImoveisHabitacionais"
        Me.ImoveisHabitacionais.Size = New System.Drawing.Size(151, 28)
        Me.ImoveisHabitacionais.TabIndex = 22
        '
        'PrecoMinTextBox
        '
        Me.PrecoMinTextBox.Location = New System.Drawing.Point(385, 306)
        Me.PrecoMinTextBox.Name = "PrecoMinTextBox"
        Me.PrecoMinTextBox.PlaceholderText = "Min"
        Me.PrecoMinTextBox.Size = New System.Drawing.Size(151, 27)
        Me.PrecoMinTextBox.TabIndex = 23
        '
        'PrecoMaxTextBox
        '
        Me.PrecoMaxTextBox.Location = New System.Drawing.Point(542, 306)
        Me.PrecoMaxTextBox.Name = "PrecoMaxTextBox"
        Me.PrecoMaxTextBox.PlaceholderText = "Max"
        Me.PrecoMaxTextBox.Size = New System.Drawing.Size(151, 27)
        Me.PrecoMaxTextBox.TabIndex = 25
        '
        'ImoveisComerciais
        '
        Me.ImoveisComerciais.FormattingEnabled = True
        Me.ImoveisComerciais.Items.AddRange(New Object() {"Escritório", "Loja", "Armazém"})
        Me.ImoveisComerciais.Location = New System.Drawing.Point(542, 226)
        Me.ImoveisComerciais.Name = "ImoveisComerciais"
        Me.ImoveisComerciais.Size = New System.Drawing.Size(151, 28)
        Me.ImoveisComerciais.TabIndex = 26
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(311, 387)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(61, 20)
        Me.Label4.TabIndex = 27
        Me.Label4.Text = "Quartos"
        '
        'QuartosComboBox
        '
        Me.QuartosComboBox.FormattingEnabled = True
        Me.QuartosComboBox.Items.AddRange(New Object() {"Qualquer", "1+", "2+", "3+", "4+", "5+"})
        Me.QuartosComboBox.Location = New System.Drawing.Point(385, 384)
        Me.QuartosComboBox.Name = "QuartosComboBox"
        Me.QuartosComboBox.Size = New System.Drawing.Size(151, 28)
        Me.QuartosComboBox.TabIndex = 28
        '
        'PropostaButton
        '
        Me.PropostaButton.Location = New System.Drawing.Point(966, 511)
        Me.PropostaButton.Name = "PropostaButton"
        Me.PropostaButton.Size = New System.Drawing.Size(135, 46)
        Me.PropostaButton.TabIndex = 29
        Me.PropostaButton.Text = "Fazer proposta"
        Me.PropostaButton.UseVisualStyleBackColor = True
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(285, 270)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(87, 20)
        Me.Label5.TabIndex = 30
        Me.Label5.Text = "Localização"
        '
        'LocalizacaoTextBox
        '
        Me.LocalizacaoTextBox.Location = New System.Drawing.Point(385, 267)
        Me.LocalizacaoTextBox.Name = "LocalizacaoTextBox"
        Me.LocalizacaoTextBox.Size = New System.Drawing.Size(151, 27)
        Me.LocalizacaoTextBox.TabIndex = 31
        '
        'ApplyButton
        '
        Me.ApplyButton.Location = New System.Drawing.Point(542, 511)
        Me.ApplyButton.Name = "ApplyButton"
        Me.ApplyButton.Size = New System.Drawing.Size(94, 29)
        Me.ApplyButton.TabIndex = 32
        Me.ApplyButton.Text = "Aplicar"
        Me.ApplyButton.UseVisualStyleBackColor = True
        '
        'Label6
        '
        Me.Label6.AutoSize = True
        Me.Label6.Location = New System.Drawing.Point(219, 464)
        Me.Label6.Name = "Label6"
        Me.Label6.Size = New System.Drawing.Size(153, 20)
        Me.Label6.TabIndex = 33
        Me.Label6.Text = "Construída a partir de"
        '
        'MarcacaoButton
        '
        Me.MarcacaoButton.Location = New System.Drawing.Point(754, 511)
        Me.MarcacaoButton.Name = "MarcacaoButton"
        Me.MarcacaoButton.Size = New System.Drawing.Size(135, 46)
        Me.MarcacaoButton.TabIndex = 35
        Me.MarcacaoButton.Text = "Fazer marcação"
        Me.MarcacaoButton.UseVisualStyleBackColor = True
        '
        'Label7
        '
        Me.Label7.AutoSize = True
        Me.Label7.Location = New System.Drawing.Point(332, 349)
        Me.Label7.Name = "Label7"
        Me.Label7.Size = New System.Drawing.Size(40, 20)
        Me.Label7.TabIndex = 36
        Me.Label7.Text = "Área"
        '
        'AreaTextBox
        '
        Me.AreaTextBox.Location = New System.Drawing.Point(385, 346)
        Me.AreaTextBox.Name = "AreaTextBox"
        Me.AreaTextBox.Size = New System.Drawing.Size(151, 27)
        Me.AreaTextBox.TabIndex = 37
        '
        'Label8
        '
        Me.Label8.AutoSize = True
        Me.Label8.Location = New System.Drawing.Point(334, 426)
        Me.Label8.Name = "Label8"
        Me.Label8.Size = New System.Drawing.Size(38, 20)
        Me.Label8.TabIndex = 38
        Me.Label8.Text = "WCs"
        '
        'WCComboBox
        '
        Me.WCComboBox.FormattingEnabled = True
        Me.WCComboBox.Items.AddRange(New Object() {"Qualquer", "1+", "2+", "3+", "4+", "5+"})
        Me.WCComboBox.Location = New System.Drawing.Point(385, 423)
        Me.WCComboBox.Name = "WCComboBox"
        Me.WCComboBox.Size = New System.Drawing.Size(151, 28)
        Me.WCComboBox.TabIndex = 39
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.White
        Me.Panel2.Controls.Add(Me.NIFLabel)
        Me.Panel2.Controls.Add(Me.Label9)
        Me.Panel2.Controls.Add(Me.EmailLabel)
        Me.Panel2.Controls.Add(Me.Label10)
        Me.Panel2.Controls.Add(Me.NameLabel)
        Me.Panel2.Controls.Add(Me.Label11)
        Me.Panel2.Location = New System.Drawing.Point(250, 0)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(927, 148)
        Me.Panel2.TabIndex = 78
        '
        'NIFLabel
        '
        Me.NIFLabel.AutoSize = True
        Me.NIFLabel.Location = New System.Drawing.Point(661, 68)
        Me.NIFLabel.Name = "NIFLabel"
        Me.NIFLabel.Size = New System.Drawing.Size(143, 20)
        Me.NIFLabel.TabIndex = 5
        Me.NIFLabel.Text = "GetProprietarioData"
        '
        'Label9
        '
        Me.Label9.AutoSize = True
        Me.Label9.Location = New System.Drawing.Point(623, 68)
        Me.Label9.Name = "Label9"
        Me.Label9.Size = New System.Drawing.Size(41, 20)
        Me.Label9.TabIndex = 4
        Me.Label9.Text = "NIF -"
        '
        'EmailLabel
        '
        Me.EmailLabel.AutoSize = True
        Me.EmailLabel.Location = New System.Drawing.Point(396, 68)
        Me.EmailLabel.Name = "EmailLabel"
        Me.EmailLabel.Size = New System.Drawing.Size(143, 20)
        Me.EmailLabel.TabIndex = 3
        Me.EmailLabel.Text = "GetProprietarioData"
        '
        'Label10
        '
        Me.Label10.AutoSize = True
        Me.Label10.Location = New System.Drawing.Point(344, 68)
        Me.Label10.Name = "Label10"
        Me.Label10.Size = New System.Drawing.Size(56, 20)
        Me.Label10.TabIndex = 2
        Me.Label10.Text = "Email -"
        '
        'NameLabel
        '
        Me.NameLabel.AutoSize = True
        Me.NameLabel.Location = New System.Drawing.Point(88, 68)
        Me.NameLabel.Name = "NameLabel"
        Me.NameLabel.Size = New System.Drawing.Size(143, 20)
        Me.NameLabel.TabIndex = 1
        Me.NameLabel.Text = "GetProprietarioData"
        '
        'Label11
        '
        Me.Label11.AutoSize = True
        Me.Label11.Location = New System.Drawing.Point(32, 68)
        Me.Label11.Name = "Label11"
        Me.Label11.Size = New System.Drawing.Size(64, 20)
        Me.Label11.TabIndex = 0
        Me.Label11.Text = "Nome - "
        '
        'ConstrucaoTextBox
        '
        Me.ConstrucaoTextBox.Location = New System.Drawing.Point(385, 461)
        Me.ConstrucaoTextBox.Name = "ConstrucaoTextBox"
        Me.ConstrucaoTextBox.Size = New System.Drawing.Size(151, 27)
        Me.ConstrucaoTextBox.TabIndex = 79
        '
        'InfoButton
        '
        Me.InfoButton.Location = New System.Drawing.Point(860, 573)
        Me.InfoButton.Name = "InfoButton"
        Me.InfoButton.Size = New System.Drawing.Size(135, 46)
        Me.InfoButton.TabIndex = 80
        Me.InfoButton.Text = "Mais informação"
        Me.InfoButton.UseVisualStyleBackColor = True
        '
        'Panel1
        '
        Me.Panel1.BackColor = System.Drawing.SystemColors.ActiveCaption
        Me.Panel1.BackgroundImage = Global.D8_Imobiliarias.My.Resources.Resources.d82
        Me.Panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center
        Me.Panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle
        Me.Panel1.Controls.Add(Me.ImobiliariasLabel)
        Me.Panel1.Location = New System.Drawing.Point(0, 0)
        Me.Panel1.Name = "Panel1"
        Me.Panel1.Size = New System.Drawing.Size(250, 148)
        Me.Panel1.TabIndex = 81
        Me.Panel1.UseWaitCursor = True
        '
        'ImobiliariasLabel
        '
        Me.ImobiliariasLabel.AutoSize = True
        Me.ImobiliariasLabel.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.ImobiliariasLabel.Location = New System.Drawing.Point(124, 107)
        Me.ImobiliariasLabel.Name = "ImobiliariasLabel"
        Me.ImobiliariasLabel.Size = New System.Drawing.Size(113, 28)
        Me.ImobiliariasLabel.TabIndex = 22
        Me.ImobiliariasLabel.Text = "Imobiliárias"
        Me.ImobiliariasLabel.UseWaitCursor = True
        '
        'VoltarButton
        '
        Me.VoltarButton.Location = New System.Drawing.Point(1066, 609)
        Me.VoltarButton.Name = "VoltarButton"
        Me.VoltarButton.Size = New System.Drawing.Size(94, 29)
        Me.VoltarButton.TabIndex = 82
        Me.VoltarButton.Text = "Voltar"
        Me.VoltarButton.UseVisualStyleBackColor = True
        '
        'Comprar
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1175, 650)
        Me.Controls.Add(Me.VoltarButton)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.InfoButton)
        Me.Controls.Add(Me.ConstrucaoTextBox)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.WCComboBox)
        Me.Controls.Add(Me.Label8)
        Me.Controls.Add(Me.AreaTextBox)
        Me.Controls.Add(Me.Label7)
        Me.Controls.Add(Me.MarcacaoButton)
        Me.Controls.Add(Me.Label6)
        Me.Controls.Add(Me.ApplyButton)
        Me.Controls.Add(Me.LocalizacaoTextBox)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.PropostaButton)
        Me.Controls.Add(Me.QuartosComboBox)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.ImoveisComerciais)
        Me.Controls.Add(Me.PrecoMaxTextBox)
        Me.Controls.Add(Me.PrecoMinTextBox)
        Me.Controls.Add(Me.ImoveisHabitacionais)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.TipoImovelComboBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.TipoNegocioComboBox)
        Me.Controls.Add(Me.ImoveisListBox)
        Me.Name = "Comprar"
        Me.Text = "Comprar"
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub
    Friend WithEvents ImoveisListBox As ListBox
    Friend WithEvents TipoNegocioComboBox As ComboBox
    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents TipoImovelComboBox As ComboBox
    Friend WithEvents Label3 As Label
    Friend WithEvents ImoveisHabitacionais As ComboBox
    Friend WithEvents PrecoMinTextBox As TextBox
    Friend WithEvents PrecoMaxTextBox As TextBox
    Friend WithEvents ImoveisComerciais As ComboBox
    Friend WithEvents Label4 As Label
    Friend WithEvents QuartosComboBox As ComboBox
    Friend WithEvents PropostaButton As Button
    Friend WithEvents Label5 As Label
    Friend WithEvents LocalizacaoTextBox As TextBox
    Friend WithEvents ApplyButton As Button
    Friend WithEvents Label6 As Label
    Friend WithEvents Button1 As Button
    Friend WithEvents Label7 As Label
    Friend WithEvents AreaTextBox As TextBox
    Friend WithEvents Label8 As Label
    Friend WithEvents WCComboBox As ComboBox
    Friend WithEvents Panel2 As Panel
    Friend WithEvents NIFLabel As Label
    Friend WithEvents Label9 As Label
    Friend WithEvents EmailLabel As Label
    Friend WithEvents Label10 As Label
    Friend WithEvents NameLabel As Label
    Friend WithEvents Label11 As Label
    Friend WithEvents MarcacaoButton As Button
    Friend WithEvents ConstrucaoTextBox As TextBox
    Friend WithEvents InfoButton As Button
    Friend WithEvents Panel1 As Panel
    Friend WithEvents ImobiliariasLabel As Label
    Friend WithEvents VoltarButton As Button
End Class
