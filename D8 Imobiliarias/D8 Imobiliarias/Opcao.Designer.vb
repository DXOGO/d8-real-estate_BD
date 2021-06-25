<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Opcao
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
        Me.ButtonVender = New System.Windows.Forms.Button()
        Me.ButtonComprar = New System.Windows.Forms.Button()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.ImobiliariasLabel = New System.Windows.Forms.Label()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'ButtonVender
        '
        Me.ButtonVender.Location = New System.Drawing.Point(274, 304)
        Me.ButtonVender.Name = "ButtonVender"
        Me.ButtonVender.Size = New System.Drawing.Size(189, 99)
        Me.ButtonVender.TabIndex = 0
        Me.ButtonVender.Text = "Vender"
        Me.ButtonVender.UseVisualStyleBackColor = True
        '
        'ButtonComprar
        '
        Me.ButtonComprar.Location = New System.Drawing.Point(725, 304)
        Me.ButtonComprar.Name = "ButtonComprar"
        Me.ButtonComprar.Size = New System.Drawing.Size(189, 99)
        Me.ButtonComprar.TabIndex = 1
        Me.ButtonComprar.Text = "Comprar"
        Me.ButtonComprar.UseVisualStyleBackColor = True
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
        Me.Panel1.TabIndex = 14
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
        'Opcao
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1175, 650)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.ButtonComprar)
        Me.Controls.Add(Me.ButtonVender)
        Me.Name = "Opcao"
        Me.Text = "Form3"
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents ButtonVender As Button
    Friend WithEvents ButtonComprar As Button
    Friend WithEvents Panel1 As Panel
    Friend WithEvents ImobiliariasLabel As Label
End Class
