object FormCadTrabalho: TFormCadTrabalho
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro Forma de Trabalho'
  ClientHeight = 437
  ClientWidth = 536
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
  object Label2: TLabel
    Left = 16
    Top = 136
    Width = 33
    Height = 16
    Caption = 'Nome'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 16
    Top = 200
    Width = 55
    Height = 16
    Caption = 'Descricao'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object txtnome: TDBEdit
    Left = 16
    Top = 158
    Width = 233
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsForm_trab
    TabOrder = 0
  end
  object txtdescricao: TDBMemo
    Left = 16
    Top = 222
    Width = 233
    Height = 89
    DataField = 'descricao'
    DataSource = DM.dsForm_trab
    TabOrder = 1
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 536
    Height = 105
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 99
      Top = 3
      Width = 344
      Height = 33
      Caption = 'Cadastro Forma Trabalho'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBTrabalho: TDBNavigator
      Left = 394
      Top = 87
      Width = 200
      Height = 18
      DataSource = DM.dsForm_trab
      TabOrder = 0
      Visible = False
    end
    object BttAlterar: TButton
      Left = 198
      Top = 36
      Width = 72
      Height = 64
      Caption = 'Alterar'
      TabOrder = 1
      OnClick = BttAlterarClick
    end
    object bttNovo: TButton
      Left = 123
      Top = 36
      Width = 75
      Height = 64
      Caption = 'Novo'
      TabOrder = 2
      OnClick = bttNovoClick
    end
    object BttSalvar: TButton
      Left = 270
      Top = 36
      Width = 74
      Height = 64
      Caption = 'Salvar'
      TabOrder = 3
      OnClick = BttSalvarClick
    end
    object BttExcluir: TButton
      Left = 344
      Top = 36
      Width = 73
      Height = 64
      Caption = 'Excluir'
      TabOrder = 4
      OnClick = BttExcluirClick
    end
  end
  object DBGrid1: TDBGrid
    Left = 263
    Top = 158
    Width = 265
    Height = 271
    DataSource = DM.dsForm_trab
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 233
        Visible = True
      end>
  end
end
