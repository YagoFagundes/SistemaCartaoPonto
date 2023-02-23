object FormHolerite: TFormHolerite
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Gerar Holerite'
  ClientHeight = 489
  ClientWidth = 622
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 105
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 225
      Top = 1
      Width = 193
      Height = 33
      Caption = 'Gerar Holerite'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbnHoler: TDBNavigator
      Left = 398
      Top = 87
      Width = 200
      Height = 18
      TabOrder = 0
      Visible = False
    end
    object bttNovo: TButton
      Left = 173
      Top = 33
      Width = 75
      Height = 64
      Caption = 'Novo'
      TabOrder = 1
    end
    object BttAlterar: TButton
      Left = 248
      Top = 33
      Width = 72
      Height = 64
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = BttAlterarClick
    end
    object BttExcluir: TButton
      Left = 391
      Top = 33
      Width = 73
      Height = 64
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = BttExcluirClick
    end
    object Button1: TButton
      Left = 319
      Top = 33
      Width = 73
      Height = 64
      Caption = 'Gerar'
      TabOrder = 4
      OnClick = bttgerarClick
    end
  end
  object cartaoponto: TPageControl
    Left = 0
    Top = 103
    Width = 750
    Height = 483
    ActivePage = Informações
    TabOrder = 1
    object Informações: TTabSheet
      Caption = 'Informa'#231#245'es'
      object lblcargo: TLabel
        Left = 218
        Top = 9
        Width = 34
        Height = 16
        Caption = 'Cargo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lblnome: TLabel
        Left = 6
        Top = 9
        Width = 121
        Height = 16
        Caption = 'Nome do Funcionario'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbltrabalho: TLabel
        Left = 352
        Top = 9
        Width = 110
        Height = 16
        Caption = 'Forma de Trabalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label43: TLabel
        Left = 487
        Top = 9
        Width = 79
        Height = 16
        Caption = 'Remunera'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label44: TLabel
        Left = 487
        Top = 52
        Width = 99
        Height = 16
        Caption = 'Dias Trabalhados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label45: TLabel
        Left = 218
        Top = 52
        Width = 25
        Height = 16
        Caption = 'Vale'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label46: TLabel
        Left = 352
        Top = 52
        Width = 66
        Height = 16
        Caption = 'Horas Extra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label47: TLabel
        Left = 487
        Top = 227
        Width = 124
        Height = 16
        Caption = 'Total de Vencimentos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label48: TLabel
        Left = 487
        Top = 268
        Width = 109
        Height = 16
        Caption = 'Total de Descontos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label49: TLabel
        Left = 487
        Top = 134
        Width = 28
        Height = 16
        Caption = 'INSS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label50: TLabel
        Left = 487
        Top = 176
        Width = 31
        Height = 16
        Caption = 'FGTS'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 6
        Top = 52
        Width = 22
        Height = 16
        Caption = 'Ano'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 83
        Top = 52
        Width = 23
        Height = 16
        Caption = 'M'#234's'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 5
        Top = 107
        Width = 108
        Height = 19
        Caption = 'Cart'#227'o Ponto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 369
        Top = 312
        Width = 38
        Height = 18
        Caption = 'Horas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object DBComboBoxNome: TDBLookupComboBox
        Left = 6
        Top = 27
        Width = 189
        Height = 21
        DataField = 'nome'
        DataSource = DM.dsCad_func
        KeyField = 'id'
        ListField = 'id_cad_func'
        ListSource = DM.dsHolerite
        TabOrder = 0
      end
      object dbeditCargo: TDBEdit
        Left = 218
        Top = 27
        Width = 108
        Height = 21
        DataField = 'id_cargo'
        DataSource = DM.dsCad_func
        TabOrder = 1
      end
      object dbeditTrab: TDBEdit
        Left = 352
        Top = 27
        Width = 108
        Height = 21
        DataField = 'formTrab'
        DataSource = DM.dsCad_func
        TabOrder = 2
        OnChange = dbeditTrabChange
      end
      object dbeditRemu: TDBEdit
        Left = 487
        Top = 27
        Width = 94
        Height = 21
        DataField = 'remuneracao'
        DataSource = DM.dsCad_func
        MaxLength = 9
        TabOrder = 3
      end
      object dbAno: TDBEdit
        Left = 6
        Top = 70
        Width = 59
        Height = 21
        DataField = 'ano'
        DataSource = DM.dscartaoPonto
        TabOrder = 4
        OnChange = dbeditTrabChange
      end
      object dbcomboMes: TDBComboBox
        Left = 83
        Top = 70
        Width = 108
        Height = 21
        DataField = 'mes'
        DataSource = DM.dscartaoPonto
        Items.Strings = (
          'JANEIRO'
          'FEVEREIRO'
          'MAR'#199'O'
          'ABRIL'
          'MAIO'
          'JUNHO'
          'JULHO'
          'AGOSTO'
          'SETEMBRO'
          'OUTUBRO'
          'NOVEMBRO'
          'DEZEMBRO')
        TabOrder = 5
        OnChange = dbcomboMesChange
      end
      object dbVale: TDBEdit
        Left = 218
        Top = 70
        Width = 108
        Height = 21
        DataField = 'vale'
        DataSource = DM.dsHolerite
        TabOrder = 6
        OnChange = dbeditTrabChange
      end
      object dbHoraExtra: TDBEdit
        Left = 352
        Top = 70
        Width = 108
        Height = 21
        DataField = 'horaExtra'
        DataSource = DM.dsHolerite
        TabOrder = 7
        OnChange = dbeditTrabChange
      end
      object dbDia: TDBEdit
        Left = 487
        Top = 70
        Width = 98
        Height = 21
        DataField = 'dias'
        DataSource = DM.dsHolerite
        TabOrder = 8
        OnChange = dbeditTrabChange
      end
      object dbInss: TDBEdit
        Left = 487
        Top = 152
        Width = 99
        Height = 21
        DataField = 'inss'
        DataSource = DM.dsHolerite
        TabOrder = 9
        OnChange = dbeditTrabChange
      end
      object dbFgts: TDBEdit
        Left = 487
        Top = 192
        Width = 99
        Height = 21
        DataField = 'fgts'
        DataSource = DM.dsHolerite
        TabOrder = 10
        OnChange = dbeditTrabChange
      end
      object dbDesconto: TDBEdit
        Left = 487
        Top = 286
        Width = 124
        Height = 21
        DataField = 'totalDesconto'
        DataSource = DM.dsHolerite
        TabOrder = 11
        OnChange = dbeditTrabChange
      end
      object dbVencimento: TDBEdit
        Left = 487
        Top = 245
        Width = 124
        Height = 21
        DataField = 'totalVencimento'
        DataSource = DM.dsHolerite
        TabOrder = 12
        OnChange = dbeditTrabChange
      end
      object dbtotalHora: TDBEdit
        Left = 413
        Top = 312
        Width = 68
        Height = 21
        DataField = 'totalHora'
        DataSource = DM.dscartaoPonto
        TabOrder = 13
      end
      object gridmes: TStringGrid
        Left = 0
        Top = 136
        Width = 481
        Height = 170
        RowCount = 31
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 14
        ColWidths = (
          64
          78
          119
          109
          83)
        RowHeights = (
          24
          24
          28
          24
          25
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24
          24)
      end
      object bttGerarHora: TButton
        Left = 207
        Top = 315
        Width = 75
        Height = 25
        Caption = 'Gravar Horas'
        TabOrder = 15
      end
    end
  end
end
