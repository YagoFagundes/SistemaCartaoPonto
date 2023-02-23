object DM: TDM
  OldCreateOrder = False
  Height = 473
  Width = 597
  object conexao: TFDConnection
    Params.Strings = (
      'Database=teste'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 24
    Top = 40
  end
  object tbCad_func: TFDTable
    Active = True
    AfterInsert = tbCad_funcAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'teste.cad_func'
    TableName = 'teste.cad_func'
    Left = 104
    Top = 32
    object tbCad_funcid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbCad_funcnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 100
    end
    object tbCad_funccpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '###.###.###-##;1;_'
    end
    object tbCad_funcrg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      EditMask = '###.###.###-##;1;_'
    end
    object tbCad_functelefone1: TStringField
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Required = True
      EditMask = '(##)# ####-####;1;_'
    end
    object tbCad_functelefone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone2'
      Origin = 'telefone2'
      EditMask = '(##)# ####-####;1;_'
    end
    object tbCad_funcendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 100
    end
    object tbCad_funccidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Required = True
    end
    object tbCad_funcestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
    end
    object tbCad_funcremuneracao: TStringField
      FieldName = 'remuneracao'
      Origin = 'remuneracao'
      Required = True
      EditMask = 'R$####,##;1;_'
    end
    object tbCad_funcdataCadastro: TDateTimeField
      FieldName = 'dataCadastro'
      Origin = 'dataCadastro'
      Required = True
    end
    object tbCad_funcinativo: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'inativo'
      Origin = 'inativo'
    end
    object tbCad_funcid_cargo: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cargo'
      Origin = 'id_cargo'
    end
    object tbCad_funcformTrab: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'formTrab'
      Origin = 'formTrab'
      Size = 11
    end
  end
  object dsCad_func: TDataSource
    DataSet = tbCad_func
    Left = 104
    Top = 96
  end
  object tbCargo: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'teste.cargo'
    TableName = 'teste.cargo'
    Left = 168
    Top = 32
    object tbCargoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbCargonome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 30
    end
    object tbCargodescricao: TMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      BlobType = ftMemo
    end
  end
  object tbForm_trab: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'teste.formtrab'
    TableName = 'teste.formtrab'
    Left = 232
    Top = 29
    object tbForm_trabid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbForm_trabnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 50
    end
    object tbForm_trabdescricao: TMemoField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      BlobType = ftMemo
    end
  end
  object dsCargo: TDataSource
    DataSet = tbCargo
    Left = 168
    Top = 96
  end
  object dsForm_trab: TDataSource
    DataSet = tbForm_trab
    Left = 232
    Top = 104
  end
  object QueryConsultaFunc: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'select * '
      'from cad_func')
    Left = 104
    Top = 160
  end
  object dsConsulta_func: TDataSource
    DataSet = QueryConsultaFunc
    Left = 104
    Top = 224
  end
  object tbHolerite: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'teste.holerite'
    TableName = 'teste.holerite'
    Left = 296
    Top = 29
    object tbHoleriteid: TFDAutoIncField
      FieldName = 'id'
    end
    object tbHoleriteid_cad_func: TIntegerField
      FieldName = 'id_cad_func'
      Required = True
    end
    object tbHoleritevale: TStringField
      FieldName = 'vale'
      Required = True
      Size = 10
    end
    object tbHoleritehoraExtra: TStringField
      FieldName = 'horaExtra'
      Required = True
      Size = 10
    end
    object tbHoleritedias: TStringField
      FieldName = 'dias'
      Required = True
      Size = 10
    end
    object tbHoleriteinss: TStringField
      FieldName = 'inss'
      Required = True
      Size = 10
    end
    object tbHoleritefgts: TStringField
      FieldName = 'fgts'
      Required = True
      Size = 10
    end
    object tbHoleritetotalVencimento: TStringField
      FieldName = 'totalVencimento'
      Required = True
      Size = 10
    end
    object tbHoleritetotalDesconto: TStringField
      FieldName = 'totalDesconto'
      Required = True
      Size = 10
    end
  end
  object dsHolerite: TDataSource
    DataSet = tbHolerite
    Left = 296
    Top = 104
  end
  object tbcartaoPonto: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = conexao
    UpdateOptions.UpdateTableName = 'teste.cartaoponto'
    TableName = 'teste.cartaoponto'
    Left = 368
    Top = 29
    object tbcartaoPontoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbcartaoPontoentrada: TStringField
      FieldName = 'entrada'
      Origin = 'entrada'
      Required = True
      Size = 10
    end
    object tbcartaoPontosaidaAlmo: TStringField
      FieldName = 'saidaAlmo'
      Origin = 'saidaAlmo'
      Required = True
      Size = 10
    end
    object tbcartaoPontoentradaAlmo: TStringField
      FieldName = 'entradaAlmo'
      Origin = 'entradaAlmo'
      Required = True
      Size = 10
    end
    object tbcartaoPontosaida: TStringField
      FieldName = 'saida'
      Origin = 'saida'
      Required = True
      Size = 10
    end
    object tbcartaoPontomes: TStringField
      FieldName = 'mes'
      Origin = 'mes'
      Required = True
      Size = 10
    end
    object tbcartaoPontoano: TStringField
      FieldName = 'ano'
      Origin = 'ano'
      Required = True
      Size = 10
    end
    object tbcartaoPontototalHora: TStringField
      FieldName = 'totalHora'
      Origin = 'totalHora'
      Required = True
      Size = 10
    end
    object tbcartaoPontoid_holerite: TIntegerField
      FieldName = 'id_holerite'
      Origin = 'id_holerite'
      Required = True
    end
  end
  object dscartaoPonto: TDataSource
    DataSet = tbcartaoPonto
    Left = 360
    Top = 104
  end
end
