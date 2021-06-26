<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class FazerMarcacao
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
        Me.DataMarcacao = New System.Windows.Forms.DateTimePicker()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.MarcacaoButton = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'DataMarcacao
        '
        Me.DataMarcacao.Location = New System.Drawing.Point(107, 103)
        Me.DataMarcacao.Name = "DataMarcacao"
        Me.DataMarcacao.Size = New System.Drawing.Size(250, 27)
        Me.DataMarcacao.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(26, 68)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(352, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "Escolha uma data para visitar o imóvel selecionado:"
        '
        'MarcacaoButton
        '
        Me.MarcacaoButton.Location = New System.Drawing.Point(378, 198)
        Me.MarcacaoButton.Name = "MarcacaoButton"
        Me.MarcacaoButton.Size = New System.Drawing.Size(127, 57)
        Me.MarcacaoButton.TabIndex = 2
        Me.MarcacaoButton.Text = "Confirmar marcação"
        Me.MarcacaoButton.UseVisualStyleBackColor = True
        '
        'FazerMarcacao
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(550, 283)
        Me.Controls.Add(Me.MarcacaoButton)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.DataMarcacao)
        Me.Name = "FazerMarcacao"
        Me.Text = "FazerMarcacao"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents DataMarcacao As DateTimePicker
    Friend WithEvents Label1 As Label
    Friend WithEvents MarcacaoButton As Button
End Class
