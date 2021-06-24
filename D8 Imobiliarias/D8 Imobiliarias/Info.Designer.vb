<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Info
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
        Me.TipoImovel = New System.Windows.Forms.Label()
        Me.TipoNegocio = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.PrecoTextBox = New System.Windows.Forms.TextBox()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.LocalizacaoTextBox = New System.Windows.Forms.TextBox()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.AreaTotalTextBox = New System.Windows.Forms.TextBox()
        Me.Label4 = New System.Windows.Forms.Label()
        Me.AreaUtilTextBox = New System.Windows.Forms.TextBox()
        Me.Label5 = New System.Windows.Forms.Label()
        Me.ConstrucaoTextBox = New System.Windows.Forms.TextBox()
        Me.SuspendLayout()
        '
        'TipoImovel
        '
        Me.TipoImovel.AutoSize = True
        Me.TipoImovel.Font = New System.Drawing.Font("Segoe UI", 26.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.TipoImovel.Location = New System.Drawing.Point(262, 9)
        Me.TipoImovel.Name = "TipoImovel"
        Me.TipoImovel.Size = New System.Drawing.Size(234, 60)
        Me.TipoImovel.TabIndex = 0
        Me.TipoImovel.Text = "tipoImovel"
        '
        'TipoNegocio
        '
        Me.TipoNegocio.AutoSize = True
        Me.TipoNegocio.Font = New System.Drawing.Font("Segoe UI", 16.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.TipoNegocio.Location = New System.Drawing.Point(293, 69)
        Me.TipoNegocio.Name = "TipoNegocio"
        Me.TipoNegocio.Size = New System.Drawing.Size(166, 37)
        Me.TipoNegocio.TabIndex = 1
        Me.TipoNegocio.Text = "tipoNegocio"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(77, 144)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(46, 20)
        Me.Label1.TabIndex = 2
        Me.Label1.Text = "Preço"
        '
        'PrecoTextBox
        '
        Me.PrecoTextBox.Enabled = False
        Me.PrecoTextBox.Location = New System.Drawing.Point(129, 141)
        Me.PrecoTextBox.Name = "PrecoTextBox"
        Me.PrecoTextBox.Size = New System.Drawing.Size(125, 27)
        Me.PrecoTextBox.TabIndex = 3
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(344, 144)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(87, 20)
        Me.Label2.TabIndex = 4
        Me.Label2.Text = "Localização"
        '
        'LocalizacaoTextBox
        '
        Me.LocalizacaoTextBox.Enabled = False
        Me.LocalizacaoTextBox.Location = New System.Drawing.Point(437, 141)
        Me.LocalizacaoTextBox.Name = "LocalizacaoTextBox"
        Me.LocalizacaoTextBox.Size = New System.Drawing.Size(290, 27)
        Me.LocalizacaoTextBox.TabIndex = 5
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(46, 212)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(77, 20)
        Me.Label3.TabIndex = 6
        Me.Label3.Text = "Área Total"
        '
        'AreaTotalTextBox
        '
        Me.AreaTotalTextBox.Enabled = False
        Me.AreaTotalTextBox.Location = New System.Drawing.Point(129, 209)
        Me.AreaTotalTextBox.Name = "AreaTotalTextBox"
        Me.AreaTotalTextBox.Size = New System.Drawing.Size(125, 27)
        Me.AreaTotalTextBox.TabIndex = 7
        '
        'Label4
        '
        Me.Label4.AutoSize = True
        Me.Label4.Location = New System.Drawing.Point(364, 212)
        Me.Label4.Name = "Label4"
        Me.Label4.Size = New System.Drawing.Size(67, 20)
        Me.Label4.TabIndex = 8
        Me.Label4.Text = "Área Útil"
        '
        'AreaUtilTextBox
        '
        Me.AreaUtilTextBox.Enabled = False
        Me.AreaUtilTextBox.Location = New System.Drawing.Point(437, 209)
        Me.AreaUtilTextBox.Name = "AreaUtilTextBox"
        Me.AreaUtilTextBox.Size = New System.Drawing.Size(125, 27)
        Me.AreaUtilTextBox.TabIndex = 9
        '
        'Label5
        '
        Me.Label5.AutoSize = True
        Me.Label5.Location = New System.Drawing.Point(9, 274)
        Me.Label5.Name = "Label5"
        Me.Label5.Size = New System.Drawing.Size(114, 20)
        Me.Label5.TabIndex = 10
        Me.Label5.Text = "Ano Construção"
        '
        'ConstrucaoTextBox
        '
        Me.ConstrucaoTextBox.Enabled = False
        Me.ConstrucaoTextBox.Location = New System.Drawing.Point(129, 271)
        Me.ConstrucaoTextBox.Name = "ConstrucaoTextBox"
        Me.ConstrucaoTextBox.Size = New System.Drawing.Size(125, 27)
        Me.ConstrucaoTextBox.TabIndex = 11
        '
        'Info
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(751, 410)
        Me.Controls.Add(Me.ConstrucaoTextBox)
        Me.Controls.Add(Me.Label5)
        Me.Controls.Add(Me.AreaUtilTextBox)
        Me.Controls.Add(Me.Label4)
        Me.Controls.Add(Me.AreaTotalTextBox)
        Me.Controls.Add(Me.Label3)
        Me.Controls.Add(Me.LocalizacaoTextBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.PrecoTextBox)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.TipoNegocio)
        Me.Controls.Add(Me.TipoImovel)
        Me.Name = "Info"
        Me.Text = "Info"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents TipoImovel As Label
    Friend WithEvents TipoNegocio As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents PrecoTextBox As TextBox
    Friend WithEvents Label2 As Label
    Friend WithEvents LocalizacaoTextBox As TextBox
    Friend WithEvents Label3 As Label
    Friend WithEvents AreaTotalTextBox As TextBox
    Friend WithEvents Label4 As Label
    Friend WithEvents AreaUtilTextBox As TextBox
    Friend WithEvents Label5 As Label
    Friend WithEvents ConstrucaoTextBox As TextBox
End Class
