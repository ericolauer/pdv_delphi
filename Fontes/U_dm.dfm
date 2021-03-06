object dm: Tdm
  OldCreateOrder = False
  Height = 443
  Width = 701
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Password=123456'
      'Server=localhost'
      'Database=pdv_delhpi'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 16
    Top = 16
  end
  object mysql_link: TFDPhysMySQLDriverLink
    DriverID = 'MySQL'
    Left = 88
    Top = 16
  end
  object WaitCursor: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 160
    Top = 16
  end
  object sql_produtos: TFDQuery
    Connection = conexao
    SQL.Strings = (
      'select * from produtos')
    Left = 24
    Top = 136
    object sql_produtosidprodutos: TFDAutoIncField
      FieldName = 'idprodutos'
      Origin = 'idprodutos'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object sql_produtospro_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Size = 100
    end
    object sql_produtospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object sql_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object sql_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
      DisplayFormat = ',0.00;-,0.00'
    end
    object sql_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
      DisplayFormat = ',0.00;-,0.00'
    end
    object sql_produtospro_data_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'pro_data_cad'
      Origin = 'pro_data_cad'
    end
    object sql_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
  object ds_produtos: TDataSource
    DataSet = sql_produtos
    Left = 120
    Top = 136
  end
  object TB_produtos: TFDTable
    IndexFieldNames = 'idprodutos'
    Connection = conexao
    TableName = 'pdv_delhpi.produtos'
    Left = 400
    Top = 304
    object TB_produtosidprodutos: TFDAutoIncField
      FieldName = 'idprodutos'
      Origin = 'idprodutos'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object TB_produtospro_descricao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_descricao'
      Origin = 'pro_descricao'
      Size = 100
    end
    object TB_produtospro_barras: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_barras'
      Origin = 'pro_barras'
    end
    object TB_produtospro_ref: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'pro_ref'
      Origin = 'pro_ref'
    end
    object TB_produtospro_custo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_custo'
      Origin = 'pro_custo'
    end
    object TB_produtospro_preco: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'pro_preco'
      Origin = 'pro_preco'
    end
    object TB_produtospro_data_cad: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'pro_data_cad'
      Origin = 'pro_data_cad'
    end
    object TB_produtospro_estoque: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'pro_estoque'
      Origin = 'pro_estoque'
    end
  end
end
