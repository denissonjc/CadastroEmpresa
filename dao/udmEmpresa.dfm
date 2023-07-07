object dmEmpresa: TdmEmpresa
  Height = 610
  Width = 1087
  object dspPesquisar: TDataSetProvider
    DataSet = qPesquisar
    Left = 56
    Top = 80
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
    Top = 132
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
      '    tlcomercial = :tlcomercial,'
      '    tlcelular = :tlcelular,'
      '    txemail = :txemail  '
      'where (idempresa = :idempresa)')
    Left = 114
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
        Name = 'TXEMAIL'
        DataType = ftString
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
    Left = 165
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
    Left = 215
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
  object qPesquisarEndereco: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select *'
      'from cadenderecos c'
      'where c.nmendereco like :nome'
      'order by c.idendereco')
    Left = 296
    Top = 28
    ParamData = <
      item
        Position = 1
        Name = 'NOME'
        DataType = ftString
        ParamType = ptInput
      end>
    object qPesquisarEnderecoIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qPesquisarEnderecoIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
    end
    object qPesquisarEnderecoIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object qPesquisarEnderecoNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object qPesquisarEnderecoNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object qPesquisarEnderecoNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object qPesquisarEnderecoIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object qPesquisarEnderecoIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object qPesquisarEnderecoNUCEP: TStringField
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object qPesquisarEnderecoSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object qPesquisarEnderecoSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object qPesquisarEnderecoDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object qPesquisarEnderecoTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
  end
  object qAlterarEndereco: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'update cadenderecos'
      'set idtitular = :idtitular,'
      '    idempresa = :idempresa,'
      '    nmendereco = :nmendereco,'
      '    nuendereco = :nuendereco,'
      '    nmbairro = :nmbairro,'
      '    idcidade = :idcidade,'
      '    iduf = :iduf,'
      '    nucep = :nucep,'
      '    stativo = :stativo,'
      '    stexcluido = :stexcluido,'
      '    dtexcluido = :dtexcluido,'
      '    tpcadastro = :tpcadastro'
      'where (idendereco = :idendereco)')
    Left = 404
    Top = 28
    ParamData = <
      item
        Name = 'IDTITULAR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NMENDERECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUENDERECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NMBAIRRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDUF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUCEP'
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
        Name = 'STEXCLUIDO'
        DataType = ftDate
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
        Name = 'TPCADASTRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDENDERECO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qExcluirEndereco: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'delete from cadenderecos'
      'where (idendereco = :idendereco)')
    Left = 505
    Top = 28
    ParamData = <
      item
        Name = 'IDENDERECO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object qInserirEndereco: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'insert into cadenderecos (idendereco,'
      ' idtitular, idempresa, nmendereco,'
      ' nuendereco, nmbairro, idcidade,'
      ' iduf, nucep, stativo, stexcluido,'
      ' dtexcluido, tpcadastro)'
      'values (:idendereco,'
      ':idtitular, :idempresa, :nmendereco,'
      ':nuendereco, :nmbairro, :idcidade,'
      ':iduf, :nucep, :stativo, :stexcluido,'
      ':dtexcluido, :tpcadastro)')
    Left = 603
    Top = 28
    ParamData = <
      item
        Name = 'IDENDERECO'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDTITULAR'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDEMPRESA'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NMENDERECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUENDERECO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NMBAIRRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDCIDADE'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDUF'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'NUCEP'
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
        Name = 'TPCADASTRO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsPesquisarEndereco: TDataSetProvider
    DataSet = qPesquisarEndereco
    Left = 296
    Top = 80
  end
  object cdsPesquisarEndereco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dsPesquisarEndereco'
    Left = 296
    Top = 132
    object cdsPesquisarEnderecoIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Required = True
    end
    object cdsPesquisarEnderecoIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
    end
    object cdsPesquisarEnderecoIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
    end
    object cdsPesquisarEnderecoNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Size = 100
    end
    object cdsPesquisarEnderecoNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Size = 10
    end
    object cdsPesquisarEnderecoNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Size = 50
    end
    object cdsPesquisarEnderecoIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
    end
    object cdsPesquisarEnderecoIDUF: TIntegerField
      FieldName = 'IDUF'
    end
    object cdsPesquisarEnderecoNUCEP: TStringField
      FieldName = 'NUCEP'
      Size = 10
    end
    object cdsPesquisarEnderecoSTATIVO: TStringField
      FieldName = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisarEnderecoSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsPesquisarEnderecoDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
    end
    object cdsPesquisarEnderecoTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
  end
  object qEnderecoGrid: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select *'
      ' from cadenderecos cd'
      ' join cadempresa ce on cd.idempresa = ce.idempresa'
      ' where cd.idempresa = :nome'
      ' order by cd.idendereco')
    Left = 695
    Top = 28
    ParamData = <
      item
        Position = 1
        Name = 'NOME'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qEnderecoGridIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qEnderecoGridIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
    end
    object qEnderecoGridIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object qEnderecoGridNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object qEnderecoGridNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object qEnderecoGridNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object qEnderecoGridIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object qEnderecoGridIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object qEnderecoGridNUCEP: TStringField
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object qEnderecoGridSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object qEnderecoGridSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object qEnderecoGridDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object qEnderecoGridTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
    object qEnderecoGridIDEMPRESA_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'IDEMPRESA_1'
      Origin = 'IDEMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qEnderecoGridNMEMPRESA: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qEnderecoGridNUCNPJ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUCNPJ'
      Origin = 'NUCNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object qEnderecoGridNUINSCRICAO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NUINSCRICAO'
      Origin = 'NUINSCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qEnderecoGridSTATIVO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STATIVO_1'
      Origin = 'STATIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qEnderecoGridDTCADASTRO: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object qEnderecoGridDTABERTURA: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTABERTURA'
      Origin = 'DTABERTURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object qEnderecoGridTLCOMERCIAL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TLCOMERCIAL'
      Origin = 'TLCOMERCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qEnderecoGridTLCELULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object qEnderecoGridTXOBS: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
      ProviderFlags = []
      ReadOnly = True
    end
    object qEnderecoGridTXEMAIL: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qEnderecoGridSTEXCLUIDO_1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'STEXCLUIDO_1'
      Origin = 'STEXCLUIDO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object qEnderecoGridDTEXCLUIDO_1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'DTEXCLUIDO_1'
      Origin = 'DTEXCLUIDO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object dsEnderecoGrid: TDataSetProvider
    DataSet = qEnderecoGrid
    Left = 695
    Top = 80
  end
  object cdsEnderecoGrid: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dsEnderecoGrid'
    Left = 695
    Top = 132
    object cdsEnderecoGridIDENDERECO: TIntegerField
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEnderecoGridIDTITULAR: TIntegerField
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
    end
    object cdsEnderecoGridIDEMPRESA: TIntegerField
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
    end
    object cdsEnderecoGridNMENDERECO: TStringField
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object cdsEnderecoGridNUENDERECO: TStringField
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object cdsEnderecoGridNMBAIRRO: TStringField
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object cdsEnderecoGridIDCIDADE: TIntegerField
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
    end
    object cdsEnderecoGridIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object cdsEnderecoGridNUCEP: TStringField
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object cdsEnderecoGridSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
    end
    object cdsEnderecoGridTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridIDEMPRESA_1: TIntegerField
      FieldName = 'IDEMPRESA_1'
      Origin = 'IDEMPRESA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsEnderecoGridNMEMPRESA: TStringField
      FieldName = 'NMEMPRESA'
      Origin = 'NMEMPRESA'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsEnderecoGridNUCNPJ: TStringField
      FieldName = 'NUCNPJ'
      Origin = 'NUCNPJ'
      ProviderFlags = []
      ReadOnly = True
      Size = 18
    end
    object cdsEnderecoGridNUINSCRICAO: TStringField
      FieldName = 'NUINSCRICAO'
      Origin = 'NUINSCRICAO'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsEnderecoGridSTATIVO_1: TStringField
      FieldName = 'STATIVO_1'
      Origin = 'STATIVO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridDTCADASTRO: TDateField
      FieldName = 'DTCADASTRO'
      Origin = 'DTCADASTRO'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsEnderecoGridDTABERTURA: TDateField
      FieldName = 'DTABERTURA'
      Origin = 'DTABERTURA'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsEnderecoGridTLCOMERCIAL: TStringField
      FieldName = 'TLCOMERCIAL'
      Origin = 'TLCOMERCIAL'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsEnderecoGridTLCELULAR: TStringField
      FieldName = 'TLCELULAR'
      Origin = 'TLCELULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object cdsEnderecoGridTXOBS: TIntegerField
      FieldName = 'TXOBS'
      Origin = 'TXOBS'
      ProviderFlags = []
      ReadOnly = True
    end
    object cdsEnderecoGridTXEMAIL: TStringField
      FieldName = 'TXEMAIL'
      Origin = 'TXEMAIL'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsEnderecoGridSTEXCLUIDO_1: TStringField
      FieldName = 'STEXCLUIDO_1'
      Origin = 'STEXCLUIDO'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridDTEXCLUIDO_1: TDateField
      FieldName = 'DTEXCLUIDO_1'
      Origin = 'DTEXCLUIDO'
      ProviderFlags = []
      ReadOnly = True
    end
  end
end
