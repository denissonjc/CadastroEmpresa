object dmEmpresa: TdmEmpresa
  Height = 447
  Width = 510
  object dspPesquisar: TDataSetProvider
    DataSet = qPesquisar
    Left = 56
    Top = 88
  end
  object cdsPesquisar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dspPesquisar'
    Left = 56
    Top = 160
    object cdsPesquisarIDEMPRESA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'IDEMPRESA'
      Required = True
    end
    object cdsPesquisarNMEMPRESA: TStringField
      DisplayLabel = 'Empresa'
      FieldName = 'NMEMPRESA'
      Size = 50
    end
    object cdsPesquisarNUCNPJ: TStringField
      DisplayLabel = 'CNPJ'
      DisplayWidth = 10
      FieldName = 'NUCNPJ'
      Size = 18
    end
    object cdsPesquisarNUINSCRICAO: TStringField
      DisplayLabel = 'Inscri'#231#227'o'
      DisplayWidth = 10
      FieldName = 'NUINSCRICAO'
      Size = 15
    end
    object cdsPesquisarSTATIVO: TStringField
      FieldName = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisarDTCADASTRO: TDateField
      DisplayLabel = 'Cadastro'
      FieldName = 'DTCADASTRO'
    end
    object cdsPesquisarDTABERTURA: TDateField
      DisplayLabel = 'Abertura'
      FieldName = 'DTABERTURA'
    end
    object cdsPesquisarTLCOMERCIAL: TStringField
      DisplayLabel = 'Telefone comercial'
      FieldName = 'TLCOMERCIAL'
      Size = 15
    end
    object cdsPesquisarTLCELULAR: TStringField
      DisplayLabel = 'Telefone Celular'
      FieldName = 'TLCELULAR'
      Size = 15
    end
    object cdsPesquisarTXEMAIL: TStringField
      DisplayLabel = 'E-Mail'
      DisplayWidth = 40
      FieldName = 'TXEMAIL'
      Size = 100
    end
    object cdsPesquisarSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisarDTEXCLUIDO: TDateField
      DisplayLabel = 'Exclus'#227'o'
      FieldName = 'DTEXCLUIDO'
    end
  end
  object qPesquisar: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select *'
      'from cadempresa e'
      'where e.nmempresa like :nome'
      'order by e.idempresa '
      '')
    Left = 56
    Top = 28
    ParamData = <
      item
        Position = 1
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qPesquisarIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesquisarNMEMPRESA: TStringField
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      Size = 100
    end
    object qPesquisarNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      Origin = 'NUCNPJ'
      Size = 18
    end
    object qPesquisarNUINSCRICAO: TStringField
      FieldName = 'NUINSCRICAO'
      Origin = 'NUINSCRICAO'
      Size = 15
    end
    object qPesquisarSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object qPesquisarDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
    end
    object qPesquisarDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
      Origin = 'DTABERTURA'
    end
    object qPesquisarTLCOMERCIAL: TStringField
      FieldName = 'TLCOMERCIAL'
      Origin = 'TLCOMERCIAL'
      Size = 15
    end
    object qPesquisarTLCELULAR: TStringField
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      Size = 15
    end
    object qPesquisarTXOBS: TIntegerField
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
    end
    object qPesquisarTXEMAIL: TStringField
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      Size = 100
    end
    object qPesquisarSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object qPesquisarDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
  end
  object qAlterar: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'update cadempresa'
      'set nmempresa = :nmempresa,'
      '    nucnpj = :nucnpj,'
      '    nuinscricao = :nuinscricao,'
      '    stativo = :stativo,'
      '    dtcadastro = :dtcadastro,'
      '    dtabertura = :dtabertura,'
      '    tlcomercial = :tlcomercial,'
      '    tlcelular = :tlcelular,'
      '    txobs = :txobs,'
      '    txemail = :txemail,'
      '    stexcluido = :stexcluido,'
      '    dtexcluido = :dtexcluido'
      'where (idempresa = :idempresa)')
    Left = 144
    Top = 28
    ParamData = <
      item
        Name = 'NMEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUCNPJ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUINSCRICAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STATIVO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTCADASTRO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTABERTURA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TLCOMERCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TLCELULAR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TXOBS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TXEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STEXCLUIDO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTEXCLUIDO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qExcluir: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'delete from cadempresa'
      'where (idempresa = :idempresa)')
    Left = 248
    Top = 28
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qInserir: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      
        'insert into cadempresa (idempresa, nmempresa, nucnpj, nuinscrica' +
        'o, stativo, dtcadastro, dtabertura, tlcomercial, tlcelular, txob' +
        's, txemail, stexcluido)'
      
        'values (:idempresa, :nmempresa, :nucnpj, :nuinscricao, :stativo,' +
        ' :dtcadastro, :dtabertura, :tlcomercial, :tlcelular, :txobs, :tx' +
        'email, :stexcluido)')
    Left = 336
    Top = 28
    ParamData = <
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NMEMPRESA'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUCNPJ'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUINSCRICAO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STATIVO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTCADASTRO'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'DTABERTURA'
        DataType = ftDate
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TLCOMERCIAL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TLCELULAR'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TXOBS'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'TXEMAIL'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'STEXCLUIDO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
end
