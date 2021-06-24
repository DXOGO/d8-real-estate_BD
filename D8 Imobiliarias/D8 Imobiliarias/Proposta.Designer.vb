<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Proposta
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
        Me.Label1 = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.ValorTextBox = New System.Windows.Forms.TextBox()
        Me.SubmitButton = New System.Windows.Forms.Button()
        Me.ExitButton = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Font = New System.Drawing.Font("Segoe UI", 12.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label1.Location = New System.Drawing.Point(39, 74)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(615, 28)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Deseja fazer uma proposta pelo imóvel apresentado no ecrã ao lado?"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Font = New System.Drawing.Font("Segoe UI", 10.0!, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point)
        Me.Label2.Location = New System.Drawing.Point(86, 130)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(146, 23)
        Me.Label2.TabIndex = 1
        Me.Label2.Text = "Valor da proposta"
        '
        'ValorTextBox
        '
        Me.ValorTextBox.Location = New System.Drawing.Point(317, 129)
        Me.ValorTextBox.Name = "ValorTextBox"
        Me.ValorTextBox.Size = New System.Drawing.Size(125, 27)
        Me.ValorTextBox.TabIndex = 2
        '
        'SubmitButton
        '
        Me.SubmitButton.Location = New System.Drawing.Point(153, 315)
        Me.SubmitButton.Name = "SubmitButton"
        Me.SubmitButton.Size = New System.Drawing.Size(94, 29)
        Me.SubmitButton.TabIndex = 3
        Me.SubmitButton.Text = "Submeter"
        Me.SubmitButton.UseVisualStyleBackColor = True
        '
        'ExitButton
        '
        Me.ExitButton.Location = New System.Drawing.Point(532, 315)
        Me.ExitButton.Name = "ExitButton"
        Me.ExitButton.Size = New System.Drawing.Size(94, 29)
        Me.ExitButton.TabIndex = 4
        Me.ExitButton.Text = "Sair"
        Me.ExitButton.UseVisualStyleBackColor = True
        '
        'Proposta
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(768, 407)
        Me.Controls.Add(Me.ExitButton)
        Me.Controls.Add(Me.SubmitButton)
        Me.Controls.Add(Me.ValorTextBox)
        Me.Controls.Add(Me.Label2)
        Me.Controls.Add(Me.Label1)
        Me.Name = "Proposta"
        Me.Text = "Proposta"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents Label1 As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents ValorTextBox As TextBox
    Friend WithEvents SubmitButton As Button
    Friend WithEvents ExitButton As Button
End Class
