<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()>
Partial Class Agente
    Inherits System.Windows.Forms.Form

    'Descartar substituições de formulário para limpar a lista de componentes.
    <System.Diagnostics.DebuggerNonUserCode()>
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
    <System.Diagnostics.DebuggerStepThrough()>
    Private Sub InitializeComponent()
        Me.InfoListBox = New System.Windows.Forms.ListBox()
        Me.Panel2 = New System.Windows.Forms.Panel()
        Me.DepartmentLabel = New System.Windows.Forms.Label()
        Me.Label3 = New System.Windows.Forms.Label()
        Me.NumberLabel = New System.Windows.Forms.Label()
        Me.Label2 = New System.Windows.Forms.Label()
        Me.NameLabel = New System.Windows.Forms.Label()
        Me.Label1 = New System.Windows.Forms.Label()
        Me.MarcacoesButton = New System.Windows.Forms.Button()
        Me.PropostasButton = New System.Windows.Forms.Button()
        Me.Panel1 = New System.Windows.Forms.Panel()
        Me.ImobiliariasLabel = New System.Windows.Forms.Label()
        Me.Panel2.SuspendLayout()
        Me.Panel1.SuspendLayout()
        Me.SuspendLayout()
        '
        'InfoListBox
        '
        Me.InfoListBox.FormattingEnabled = True
        Me.InfoListBox.ItemHeight = 20
        Me.InfoListBox.Location = New System.Drawing.Point(247, 183)
        Me.InfoListBox.Name = "InfoListBox"
        Me.InfoListBox.Size = New System.Drawing.Size(676, 324)
        Me.InfoListBox.TabIndex = 0
        '
        'Panel2
        '
        Me.Panel2.BackColor = System.Drawing.Color.White
        Me.Panel2.Controls.Add(Me.DepartmentLabel)
        Me.Panel2.Controls.Add(Me.Label3)
        Me.Panel2.Controls.Add(Me.NumberLabel)
        Me.Panel2.Controls.Add(Me.Label2)
        Me.Panel2.Controls.Add(Me.NameLabel)
        Me.Panel2.Controls.Add(Me.Label1)
        Me.Panel2.Location = New System.Drawing.Point(247, 1)
        Me.Panel2.Name = "Panel2"
        Me.Panel2.Size = New System.Drawing.Size(927, 147)
        Me.Panel2.TabIndex = 15
        '
        'DepartmentLabel
        '
        Me.DepartmentLabel.AutoSize = True
        Me.DepartmentLabel.Location = New System.Drawing.Point(735, 67)
        Me.DepartmentLabel.Name = "DepartmentLabel"
        Me.DepartmentLabel.Size = New System.Drawing.Size(104, 20)
        Me.DepartmentLabel.TabIndex = 5
        Me.DepartmentLabel.Text = "GetAgentData"
        '
        'Label3
        '
        Me.Label3.AutoSize = True
        Me.Label3.Location = New System.Drawing.Point(623, 67)
        Me.Label3.Name = "Label3"
        Me.Label3.Size = New System.Drawing.Size(116, 20)
        Me.Label3.TabIndex = 4
        Me.Label3.Text = "Departamento -"
        '
        'NumberLabel
        '
        Me.NumberLabel.AutoSize = True
        Me.NumberLabel.Location = New System.Drawing.Point(426, 67)
        Me.NumberLabel.Name = "NumberLabel"
        Me.NumberLabel.Size = New System.Drawing.Size(104, 20)
        Me.NumberLabel.TabIndex = 3
        Me.NumberLabel.Text = "GetAgentData"
        '
        'Label2
        '
        Me.Label2.AutoSize = True
        Me.Label2.Location = New System.Drawing.Point(344, 67)
        Me.Label2.Name = "Label2"
        Me.Label2.Size = New System.Drawing.Size(86, 20)
        Me.Label2.TabIndex = 2
        Me.Label2.Text = "Nº agente -"
        '
        'NameLabel
        '
        Me.NameLabel.AutoSize = True
        Me.NameLabel.Location = New System.Drawing.Point(88, 67)
        Me.NameLabel.Name = "NameLabel"
        Me.NameLabel.Size = New System.Drawing.Size(104, 20)
        Me.NameLabel.TabIndex = 1
        Me.NameLabel.Text = "GetAgentData"
        '
        'Label1
        '
        Me.Label1.AutoSize = True
        Me.Label1.Location = New System.Drawing.Point(32, 67)
        Me.Label1.Name = "Label1"
        Me.Label1.Size = New System.Drawing.Size(64, 20)
        Me.Label1.TabIndex = 0
        Me.Label1.Text = "Nome - "
        '
        'MarcacoesButton
        '
        Me.MarcacoesButton.Location = New System.Drawing.Point(982, 280)
        Me.MarcacoesButton.Name = "MarcacoesButton"
        Me.MarcacoesButton.Size = New System.Drawing.Size(153, 66)
        Me.MarcacoesButton.TabIndex = 16
        Me.MarcacoesButton.Text = "Ver marcações"
        Me.MarcacoesButton.UseVisualStyleBackColor = True
        '
        'PropostasButton
        '
        Me.PropostasButton.Location = New System.Drawing.Point(982, 379)
        Me.PropostasButton.Name = "PropostasButton"
        Me.PropostasButton.Size = New System.Drawing.Size(153, 66)
        Me.PropostasButton.TabIndex = 17
        Me.PropostasButton.Text = "Ver propostas"
        Me.PropostasButton.UseVisualStyleBackColor = True
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
        Me.Panel1.TabIndex = 18
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
        'Agente
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(8.0!, 20.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(1175, 650)
        Me.Controls.Add(Me.Panel1)
        Me.Controls.Add(Me.PropostasButton)
        Me.Controls.Add(Me.MarcacoesButton)
        Me.Controls.Add(Me.Panel2)
        Me.Controls.Add(Me.InfoListBox)
        Me.Name = "Agente"
        Me.Text = "Agente"
        Me.Panel2.ResumeLayout(False)
        Me.Panel2.PerformLayout()
        Me.Panel1.ResumeLayout(False)
        Me.Panel1.PerformLayout()
        Me.ResumeLayout(False)

    End Sub

    Friend WithEvents InfoListBox As ListBox
    Friend WithEvents Panel2 As Panel
    Friend WithEvents DepartmentLabel As Label
    Friend WithEvents Label3 As Label
    Friend WithEvents NumberLabel As Label
    Friend WithEvents Label2 As Label
    Friend WithEvents NameLabel As Label
    Friend WithEvents Label1 As Label
    Friend WithEvents MarcacoesButton As Button
    Friend WithEvents PropostasButton As Button
    Friend WithEvents Panel1 As Panel
    Friend WithEvents ImobiliariasLabel As Label
End Class
