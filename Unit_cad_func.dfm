object FormCadFunc: TFormCadFunc
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Funcionarios'
  ClientHeight = 466
  ClientWidth = 742
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
  object Label14: TLabel
    Left = 209
    Top = 387
    Width = 99
    Height = 16
    Caption = 'Data de Cadastro'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtData: TDBText
    Left = 206
    Top = 410
    Width = 120
    Height = 18
    DataField = 'dataCadastro'
    DataSource = DM.dsCad_func
  end
  object Label5: TLabel
    Left = 4
    Top = 239
    Width = 50
    Height = 16
    Caption = 'Telefone'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label6: TLabel
    Left = 207
    Top = 242
    Width = 61
    Height = 16
    Caption = 'Telefone 2'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label7: TLabel
    Left = 4
    Top = 289
    Width = 53
    Height = 16
    Caption = 'Endere'#231'o'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 4
    Top = 143
    Width = 91
    Height = 16
    Caption = 'Nome Completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 4
    Top = 191
    Width = 22
    Height = 16
    Caption = 'CPF'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label10: TLabel
    Left = 4
    Top = 97
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
  object Label11: TLabel
    Left = 168
    Top = 97
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
  object Label13: TLabel
    Left = 343
    Top = 97
    Width = 49
    Height = 16
    Caption = 'INATIVO'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 207
    Top = 194
    Width = 16
    Height = 16
    Caption = 'RG'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label8: TLabel
    Left = 4
    Top = 337
    Width = 39
    Height = 16
    Caption = 'Cidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label9: TLabel
    Left = 207
    Top = 340
    Width = 38
    Height = 16
    Caption = 'Estado'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 4
    Top = 385
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
  object Label15: TLabel
    Left = 414
    Top = 141
    Width = 125
    Height = 16
    Caption = 'Pesquisar Funcionario'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 742
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label12: TLabel
      Left = 19
      Top = 23
      Width = 288
      Height = 33
      Caption = 'Cadastro Funcionario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DbnFunc: TDBNavigator
      Left = 538
      Top = 4
      Width = 200
      Height = 21
      DataSource = DM.dsCad_func
      TabOrder = 0
      Visible = False
    end
    object BttSalvar: TButton
      Left = 529
      Top = 14
      Width = 74
      Height = 64
      Caption = 'Salvar'
      TabOrder = 1
      OnClick = BttSalvarClick
    end
    object BttAlterar: TButton
      Left = 457
      Top = 14
      Width = 72
      Height = 64
      Caption = 'Alterar'
      TabOrder = 2
      OnClick = BttAlterarClick
    end
    object BttExcluir: TButton
      Left = 603
      Top = 14
      Width = 73
      Height = 64
      Caption = 'Excluir'
      TabOrder = 3
      OnClick = BttExcluirClick
    end
    object bttNovo: TButton
      Left = 382
      Top = 14
      Width = 75
      Height = 64
      Caption = 'Novo'
      TabOrder = 4
      OnClick = bttNovoClick
    end
  end
  object txtTelefone1: TDBEdit
    Left = 4
    Top = 261
    Width = 172
    Height = 21
    DataField = 'telefone1'
    DataSource = DM.dsCad_func
    MaxLength = 15
    TabOrder = 6
  end
  object txtTelefone2: TDBEdit
    Left = 207
    Top = 261
    Width = 187
    Height = 21
    DataField = 'telefone2'
    DataSource = DM.dsCad_func
    MaxLength = 15
    TabOrder = 7
  end
  object txtRg: TDBEdit
    Left = 209
    Top = 212
    Width = 185
    Height = 21
    DataField = 'rg'
    DataSource = DM.dsCad_func
    MaxLength = 14
    TabOrder = 5
  end
  object txtEndereco: TDBEdit
    Left = 4
    Top = 308
    Width = 390
    Height = 21
    DataField = 'endereco'
    DataSource = DM.dsCad_func
    TabOrder = 8
  end
  object txtNome: TDBEdit
    Left = 4
    Top = 163
    Width = 390
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsCad_func
    TabOrder = 3
  end
  object txtCpf: TDBEdit
    Left = 4
    Top = 212
    Width = 188
    Height = 21
    DataField = 'cpf'
    DataSource = DM.dsCad_func
    MaxLength = 14
    TabOrder = 4
  end
  object DBCheckBox1: TDBCheckBox
    Left = 401
    Top = 96
    Width = 46
    Height = 20
    Caption = 'Sim'
    Ctl3D = True
    DataField = 'inativo'
    DataSource = DM.dsCad_func
    ParentCtl3D = False
    TabOrder = 2
  end
  object txtCidade: TDBEdit
    Left = 4
    Top = 358
    Width = 188
    Height = 21
    DataField = 'cidade'
    DataSource = DM.dsCad_func
    TabOrder = 9
  end
  object txtEstado: TDBEdit
    Left = 206
    Top = 358
    Width = 188
    Height = 21
    DataField = 'estado'
    DataSource = DM.dsCad_func
    TabOrder = 10
  end
  object txtRemuneracao: TDBEdit
    Left = 4
    Top = 407
    Width = 188
    Height = 21
    DataField = 'remuneracao'
    DataSource = DM.dsCad_func
    MaxLength = 9
    TabOrder = 11
  end
  object DBGrid1: TDBGrid
    Left = 414
    Top = 190
    Width = 315
    Height = 268
    DataSource = DM.dsCad_func
    TabOrder = 13
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        ReadOnly = True
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 308
        Visible = True
      end>
  end
  object DbComboCargo: TDBLookupComboBox
    Left = 8
    Top = 116
    Width = 145
    Height = 21
    DataField = 'id_cargo'
    DataSource = DM.dsCad_func
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsCargo
    TabOrder = 1
  end
  object txtBuscar: TEdit
    Left = 414
    Top = 163
    Width = 299
    Height = 21
    TabOrder = 12
    OnChange = txtBuscarChange
  end
  object dbcomboTrab: TDBComboBox
    Left = 168
    Top = 116
    Width = 145
    Height = 21
    DataField = 'formTrab'
    DataSource = DM.dsCad_func
    Items.Strings = (
      'HORA'
      'DIA'
      'M'#202'S')
    TabOrder = 14
  end
end
