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
      'where c.idendereco = :nome'
      'order by c.idendereco')
    Left = 296
    Top = 28
    ParamData = <
      item
        Position = 1
        Name = 'NOME'
        DataType = ftInteger
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
    Left = 68
    Top = 268
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
    Left = 169
    Top = 268
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
    Left = 267
    Top = 268
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
    Params = <
      item
        DataType = ftInteger
        Name = 'NOME'
        ParamType = ptInput
      end>
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
      'SELECT cd.idendereco,       cd.idtitular,'
      '       ti.nmtitular,        cd.idempresa,'
      '       cd.nmendereco,       cd.nuendereco,'
      '       cd.nmbairro,       cd.idcidade,'
      '       ci.nmcidade,       cd.iduf,'
      '       uf.nmestado,       cd.nucep,'
      '       cd.stativo,       cd.stexcluido,'
      '       cd.dtexcluido,       cd.tpcadastro'
      'FROM cadenderecos cd'
      'LEFT JOIN cadempresa ce ON cd.idempresa = ce.idempresa'
      'LEFT JOIN cadcidade ci ON ci.idcidade = cd.idcidade'
      'LEFT JOIN cadtitular ti ON ti.idtitular = cd.idtitular'
      'LEFT JOIN caduf uf ON uf.iduf = cd.iduf'
      'WHERE cd.idempresa = :nome'
      'ORDER BY cd.idendereco')
    Left = 359
    Top = 268
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
    object qEnderecoGridNMTITULAR: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMTITULAR'
      Origin = 'NMTITULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
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
    object qEnderecoGridNMCIDADE: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMCIDADE'
      Origin = 'NMCIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object qEnderecoGridIDUF: TIntegerField
      FieldName = 'IDUF'
      Origin = 'IDUF'
    end
    object qEnderecoGridNMESTADO: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NMESTADO'
      Origin = 'NMESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
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
  end
  object dsEnderecoGrid: TDataSetProvider
    DataSet = qEnderecoGrid
    Left = 359
    Top = 328
  end
  object cdsEnderecoGrid: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'NOME'
        ParamType = ptInput
      end>
    ProviderName = 'dsEnderecoGrid'
    Left = 359
    Top = 380
    object cdsEnderecoGridIDENDERECO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 7
      FieldName = 'IDENDERECO'
      Origin = 'IDENDERECO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsEnderecoGridIDTITULAR: TIntegerField
      DisplayLabel = 'Cod_Titular'
      FieldName = 'IDTITULAR'
      Origin = 'IDTITULAR'
      Visible = False
    end
    object cdsEnderecoGridNMTITULAR: TStringField
      DisplayLabel = 'T'#237'tular'
      DisplayWidth = 40
      FieldName = 'NMTITULAR'
      Origin = 'NMTITULAR'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsEnderecoGridIDEMPRESA: TIntegerField
      DisplayLabel = 'Cod_Empresa'
      FieldName = 'IDEMPRESA'
      Origin = 'IDEMPRESA'
      Visible = False
    end
    object cdsEnderecoGridNMENDERECO: TStringField
      DisplayLabel = 'Logradouro'
      DisplayWidth = 40
      FieldName = 'NMENDERECO'
      Origin = 'NMENDERECO'
      Size = 100
    end
    object cdsEnderecoGridNUENDERECO: TStringField
      DisplayLabel = 'N'#250'mero'
      DisplayWidth = 7
      FieldName = 'NUENDERECO'
      Origin = 'NUENDERECO'
      Size = 10
    end
    object cdsEnderecoGridNMBAIRRO: TStringField
      DisplayLabel = 'Bairro'
      DisplayWidth = 20
      FieldName = 'NMBAIRRO'
      Origin = 'NMBAIRRO'
      Size = 50
    end
    object cdsEnderecoGridIDCIDADE: TIntegerField
      DisplayLabel = 'Cod_Cidade'
      FieldName = 'IDCIDADE'
      Origin = 'IDCIDADE'
      Visible = False
    end
    object cdsEnderecoGridNMCIDADE: TStringField
      DisplayLabel = 'C'#237'dade'
      DisplayWidth = 20
      FieldName = 'NMCIDADE'
      Origin = 'NMCIDADE'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
    object cdsEnderecoGridIDUF: TIntegerField
      DisplayLabel = 'Cod_UF'
      FieldName = 'IDUF'
      Origin = 'IDUF'
      Visible = False
    end
    object cdsEnderecoGridNMESTADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 20
      FieldName = 'NMESTADO'
      Origin = 'NMESTADO'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object cdsEnderecoGridNUCEP: TStringField
      DisplayLabel = 'CEP'
      FieldName = 'NUCEP'
      Origin = 'NUCEP'
      Size = 10
    end
    object cdsEnderecoGridSTATIVO: TStringField
      FieldName = 'STATIVO'
      Origin = 'STATIVO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridSTEXCLUIDO: TStringField
      FieldName = 'STEXCLUIDO'
      Origin = 'STEXCLUIDO'
      Visible = False
      FixedChar = True
      Size = 1
    end
    object cdsEnderecoGridDTEXCLUIDO: TDateField
      FieldName = 'DTEXCLUIDO'
      Origin = 'DTEXCLUIDO'
      Visible = False
    end
    object cdsEnderecoGridTPCADASTRO: TStringField
      FieldName = 'TPCADASTRO'
      Origin = 'TPCADASTRO'
      Visible = False
      FixedChar = True
      Size = 1
    end
  end
end
