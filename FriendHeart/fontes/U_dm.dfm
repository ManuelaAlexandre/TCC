object dm: Tdm
  Height = 480
  Width = 640
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 'C:\FriendHeart\lib\libmySQL.dll'
    OnDriverCreated = DriverDriverCreated
    Left = 152
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 72
    Top = 40
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=pi353friendheart_'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 72
    Top = 112
  end
  object tb_ong: TFDTable
    IndexFieldNames = 'id_ong'
    Connection = FDConnection1
    TableName = 'pi353friendheart_.usu_ong'
    Left = 424
    Top = 56
    object tb_ongid_ong: TFDAutoIncField
      FieldName = 'id_ong'
      Origin = 'id_ong'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tb_ongnome_ong: TStringField
      FieldName = 'nome_ong'
      Origin = 'nome_ong'
      Required = True
      Size = 30
    end
    object tb_ongrua_ong: TStringField
      FieldName = 'rua_ong'
      Origin = 'rua_ong'
      Required = True
    end
    object tb_ongbairro_ong: TStringField
      FieldName = 'bairro_ong'
      Origin = 'bairro_ong'
      Required = True
    end
    object tb_ongcelular_ong: TStringField
      FieldName = 'celular_ong'
      Origin = 'celular_ong'
      Required = True
      Size = 15
    end
    object tb_ongtelefone_ong: TStringField
      FieldName = 'telefone_ong'
      Origin = 'telefone_ong'
      Required = True
      Size = 15
    end
    object tb_ongcnpj_ong: TStringField
      FieldName = 'cnpj_ong'
      Origin = 'cnpj_ong'
      Required = True
      Size = 15
    end
    object tb_ongemail_ong: TStringField
      FieldName = 'email_ong'
      Origin = 'email_ong'
      Required = True
      Size = 30
    end
    object tb_ongusuario_ong: TStringField
      FieldName = 'usuario_ong'
      Origin = 'usuario_ong'
      Required = True
    end
    object tb_ongsenha_ong: TStringField
      FieldName = 'senha_ong'
      Origin = 'senha_ong'
      Required = True
    end
    object tb_ongdescriçao_ong: TStringField
      FieldName = 'descri'#231'ao_ong'
      Origin = '`descri'#231'ao_ong`'
      Required = True
      Size = 50
    end
    object tb_ongtipo_doaçao: TIntegerField
      FieldName = 'tipo_doa'#231'ao'
      Origin = '`tipo_doa'#231'ao`'
      Required = True
    end
    object tb_ongtipo_ong: TIntegerField
      FieldName = 'tipo_ong'
      Origin = 'tipo_ong'
      Required = True
    end
  end
  object DataSource1: TDataSource
    DataSet = tb_ong
    Left = 520
    Top = 56
  end
end
