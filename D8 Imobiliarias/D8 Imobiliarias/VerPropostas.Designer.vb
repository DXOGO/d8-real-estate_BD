<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class VerPropostas
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
        Me.PropostasListBox = New System.Windows.Forms.ListBox()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.AceitarButton = New System.Windows.Forms.Button()
        Me.SuspendLayout()
        '
        'PropostasListBox
        '
        Me.PropostasListBox.FormattingEnabled = True
        Me.PropostasListBox.ItemHeight = 20
        Me.PropostasListBox.Location = New System.Drawing.Point(115, 77)
        Me.PropostasListBox.Name = "PropostasListBox"
        Me.PropostasListBox.Size = New System.Drawing.Size(480, 324)
        Me.PropostasListBox.TabIndex = 0
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(12, 44)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(212, 20)
        Me.Label1.TabIndex = 1
        Me.Label1.Text = "As propostas aos seus imóveis:"
        '
        'AceitarButton
        '
        Me.AceitarButton.Location = New System.Drawing.Point(639, 358)
        Me.AceitarButton.Name = "AceitarButton"
        Me.AceitarButton.Size = New System.Drawing.Size(129, 66)
        Me.AceitarButton.TabIndex = 2
        Me.AceitarButton.Text = "Aceitar proposta"
        Me.AceitarButton.UseVisualStyleBackColor = True
        '
        'VerPropostas
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(800, 450)
        Me.Controls.Add(Me.AceitarButton)
        Me.Controls.Add(Me.Label1)
        Me.Controls.Add(Me.PropostasListBox)
        Me.Name = "VerPropostas"
        Me.Text = "VerPropostas"
        Me.ResumeLayout(False)
        Me.PerformLayout()

    End Sub

    Friend WithEvents PropostasListBox As ListBox
    Friend WithEvents Label1 As Label
    Friend WithEvents AceitarButton As Button
End Class
