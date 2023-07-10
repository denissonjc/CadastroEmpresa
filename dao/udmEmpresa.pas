unit udmEmpresa;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, Data.DB, Data.SqlExpr,
  udmConexao, Datasnap.DBClient, Datasnap.Provider, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, uClienteModel;

type
  TdmEmpresa = class(TDataModule)
    dspPesquisar: TDataSetProvider;
    cdsPesquisar: TClientDataSet;
    qPesquisar: TFDQuery;
    qPesquisarIDEMPRESA: TIntegerField;
    qPesquisarNMEMPRESA: TStringField;
    qPesquisarNUCNPJ: TStringField;
    qPesquisarNUINSCRICAO: TStringField;
    qPesquisarSTATIVO: TStringField;
    qPesquisarDTCADASTRO: TDateField;
    qPesquisarDTABERTURA: TDateField;
    qPesquisarTLCOMERCIAL: TStringField;
    qPesquisarTLCELULAR: TStringField;
    qPesquisarTXOBS: TIntegerField;
    qPesquisarTXEMAIL: TStringField;
    qPesquisarSTEXCLUIDO: TStringField;
    qPesquisarDTEXCLUIDO: TDateField;
    qAlterar: TFDQuery;
    qExcluir: TFDQuery;
    qInserir: TFDQuery;
    cdsPesquisarIDEMPRESA: TIntegerField;
    cdsPesquisarNMEMPRESA: TStringField;
    cdsPesquisarNUCNPJ: TStringField;
    cdsPesquisarNUINSCRICAO: TStringField;
    cdsPesquisarSTATIVO: TStringField;
    cdsPesquisarDTCADASTRO: TDateField;
    cdsPesquisarDTABERTURA: TDateField;
    cdsPesquisarTLCOMERCIAL: TStringField;
    cdsPesquisarTLCELULAR: TStringField;
    cdsPesquisarTXEMAIL: TStringField;
    cdsPesquisarSTEXCLUIDO: TStringField;
    cdsPesquisarDTEXCLUIDO: TDateField;
    qPesquisarEndereco: TFDQuery;
    qAlterarEndereco: TFDQuery;
    qExcluirEndereco: TFDQuery;
    qInserirEndereco: TFDQuery;
    dsPesquisarEndereco: TDataSetProvider;
    cdsPesquisarEndereco: TClientDataSet;
    qEnderecoGrid: TFDQuery;
    dsEnderecoGrid: TDataSetProvider;
    cdsEnderecoGrid: TClientDataSet;
    qEnderecoGridIDENDERECO: TIntegerField;
    qEnderecoGridIDTITULAR: TIntegerField;
    qEnderecoGridNMTITULAR: TStringField;
    qEnderecoGridIDEMPRESA: TIntegerField;
    qEnderecoGridNMENDERECO: TStringField;
    qEnderecoGridNUENDERECO: TStringField;
    qEnderecoGridNMBAIRRO: TStringField;
    qEnderecoGridIDCIDADE: TIntegerField;
    qEnderecoGridNMCIDADE: TStringField;
    qEnderecoGridIDUF: TIntegerField;
    qEnderecoGridNMESTADO: TStringField;
    qEnderecoGridNUCEP: TStringField;
    qEnderecoGridSTATIVO: TStringField;
    qEnderecoGridSTEXCLUIDO: TStringField;
    qEnderecoGridDTEXCLUIDO: TDateField;
    qEnderecoGridTPCADASTRO: TStringField;
    cdsEnderecoGridIDENDERECO: TIntegerField;
    cdsEnderecoGridIDTITULAR: TIntegerField;
    cdsEnderecoGridNMTITULAR: TStringField;
    cdsEnderecoGridIDEMPRESA: TIntegerField;
    cdsEnderecoGridNMENDERECO: TStringField;
    cdsEnderecoGridNUENDERECO: TStringField;
    cdsEnderecoGridNMBAIRRO: TStringField;
    cdsEnderecoGridIDCIDADE: TIntegerField;
    cdsEnderecoGridNMCIDADE: TStringField;
    cdsEnderecoGridIDUF: TIntegerField;
    cdsEnderecoGridNMESTADO: TStringField;
    cdsEnderecoGridNUCEP: TStringField;
    cdsEnderecoGridSTATIVO: TStringField;
    cdsEnderecoGridSTEXCLUIDO: TStringField;
    cdsEnderecoGridDTEXCLUIDO: TDateField;
    cdsEnderecoGridTPCADASTRO: TStringField;
    qPesquisarEnderecoIDENDERECO: TIntegerField;
    qPesquisarEnderecoIDTITULAR: TIntegerField;
    qPesquisarEnderecoIDEMPRESA: TIntegerField;
    qPesquisarEnderecoNMENDERECO: TStringField;
    qPesquisarEnderecoNUENDERECO: TStringField;
    qPesquisarEnderecoNMBAIRRO: TStringField;
    qPesquisarEnderecoIDCIDADE: TIntegerField;
    qPesquisarEnderecoIDUF: TIntegerField;
    qPesquisarEnderecoNUCEP: TStringField;
    qPesquisarEnderecoSTATIVO: TStringField;
    qPesquisarEnderecoSTEXCLUIDO: TStringField;
    qPesquisarEnderecoDTEXCLUIDO: TDateField;
    qPesquisarEnderecoTPCADASTRO: TStringField;
    cdsPesquisarEnderecoIDENDERECO: TIntegerField;
    cdsPesquisarEnderecoIDTITULAR: TIntegerField;
    cdsPesquisarEnderecoIDEMPRESA: TIntegerField;
    cdsPesquisarEnderecoNMENDERECO: TStringField;
    cdsPesquisarEnderecoNUENDERECO: TStringField;
    cdsPesquisarEnderecoNMBAIRRO: TStringField;
    cdsPesquisarEnderecoIDCIDADE: TIntegerField;
    cdsPesquisarEnderecoIDUF: TIntegerField;
    cdsPesquisarEnderecoNUCEP: TStringField;
    cdsPesquisarEnderecoSTATIVO: TStringField;
    cdsPesquisarEnderecoSTEXCLUIDO: TStringField;
    cdsPesquisarEnderecoDTEXCLUIDO: TDateField;
    cdsPesquisarEnderecoTPCADASTRO: TStringField;
  private

  public
    function GerarID: Integer;
    procedure Pesquisar(sNome: string);
    procedure CarregarEmpresa(oEmpresa: TCliente; iCodigo: Integer);
    function Inserir(oEmpresa: TCliente; out sErro: string): Boolean;
    function Alterar(oEmpresa: TCliente; out sErro: string): Boolean;
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
    //Endere�o
    procedure PesquisarEndereco(sNome: Integer);
    procedure CarregarEndereco(oEndereco: TCliente; iCodigo: Integer);

  end;

var
  dmEmpresa: TdmEmpresa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmEmpresa }

function TdmEmpresa.Alterar(oEmpresa: TCliente; out sErro: string): Boolean;
begin
  with qAlterar, oEmpresa do
  begin
    params[0].AsString  := oEmpresa.NMEMPRESA;
    params[1].AsString  := oEmpresa.NUCNPJ;
    params[2].AsString  := oEmpresa.NUINSCRICAO;
    params[4].AsString  := oEmpresa.TLCOMERCIAL;
    params[5].AsString  := oEmpresa.TLCELULAR;
    params[6].AsString  := oEmpresa.TXEMAIL;

    Try
      ExecSQL();
      result := True;
    except
      on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao adicionar a Empresa: ' + sLineBreak + E.Message;
        result := False;
      end;
    End;
  end;

end;

procedure TdmEmpresa.CarregarEmpresa(oEmpresa: TCliente; iCodigo: Integer);
var
  sqlEmpresa: TFDQuery;
begin
  sqlEmpresa := TFDQuery.Create(nil);
  try
    with sqlEmpresa do
    begin
      Connection := dmConexao.SQLConexao;
      Close;
      SQL.Text := 'select * from cadempresa where (idempresa = ' +
        IntToStr(iCodigo) + ')';
      Open;
      with oEmpresa do
      begin
        IDEMPRESA := FieldByName('IDEMPRESA').AsInteger;
        NMEMPRESA := FieldByName('NMEMPRESA').AsString;
        NUCNPJ := FieldByName('NUCNPJ').AsString;
        NUINSCRICAO := FieldByName('NUINSCRICAO').AsString;
        STATIVO := FieldByName('STATIVO').AsString;
        DTCADASTRO := FieldByName('DTCADASTRO').AsString;
        DTABERTURA := FieldByName('DTABERTURA').AsString;
        TLCOMERCIAL := FieldByName('TLCOMERCIAL').AsString;
        TLCELULAR := FieldByName('TLCELULAR').AsString;
        TXEMAIL := FieldByName('TXEMAIL').AsString;
        STEXCLUIDO := FieldByName('STEXCLUIDO').AsString;
        DTEXCLUIDO := FieldByName('DTEXCLUIDO').AsString;
      end;

    end;
  finally
    FreeAndNil(sqlEmpresa);
  end;

end;

procedure TdmEmpresa.CarregarEndereco(oEndereco: TCliente; iCodigo: Integer);
var
  sqlEndereco: TFDQuery;
begin
  sqlEndereco := TFDQuery.Create(nil);
  try
    with sqlEndereco do
    begin
      Connection := dmConexao.SQLConexao;
      Close;
      SQL.Text := ' SELECT * FROM cadenderecos cd LEFT JOIN cadempresa ce ON cd.idempresa = ce.idempresa ' +
      ' LEFT JOIN cadcidade ci ON ci.idcidade = cd.idcidade LEFT JOIN cadtitular ti ON ti.idtitular = cd.idtitular ' +
      ' LEFT JOIN caduf uf ON uf.iduf = cd.iduf WHERE cd.idendereco = '+ IntToStr(iCodigo);

      Open;
      with oEndereco do
      begin
        IDENDERECO := FieldByName('IDENDERECO').AsInteger;
        TITULAR := FieldByName('NMTITULAR').AsString;
        EMPRESA := FieldByName('NMEMPRESA').AsString;
        NMENDERECO := FieldByName('NMENDERECO').AsString;
        NUENDERECO := FieldByName('NUENDERECO').AsString;
        NMBAIRRO := FieldByName('NMBAIRRO').AsString;
        CIDADE := FieldByName('NMCIDADE').AsString;
        UF := FieldByName('SGESTADO').AsString;
        NUCEP := FieldByName('NUCEP').AsString;
        STATIVOEND := FieldByName('STATIVO').AsString;
      end;

    end;
  finally
    FreeAndNil(sqlEndereco);
  end;
end;

function TdmEmpresa.Excluir(iCodigo: Integer; out sErro: string): Boolean;
begin
   with qExcluir do
  begin
    params[0].AsInteger := iCodigo;
    Try
      ExecSQL();
      result := True;
    except
      on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao excluir a Empresa: ' + sLineBreak + E.Message;
        result := False;
      end;
    End;
  end;
end;

function TdmEmpresa.GerarID: Integer;
var
  sqlSequencia: TFDQuery;
begin
  sqlSequencia := TFDQuery.Create(nil);
  try
    with sqlSequencia do
    begin
      Connection := dmConexao.SQLConexao;
      Close;
      SQL.Text :=
        'select coalesce(max(idempresa),0) + 1 as seq from cadempresa';
      Open;
      result := FieldByName('seq').AsInteger;
    end;
  finally
    FreeAndNil(sqlSequencia);
  end;

end;

function TdmEmpresa.Inserir(oEmpresa: TCliente; out sErro: string): Boolean;
begin
  with qInserir, oEmpresa do
  begin
    params[0].AsInteger := GerarID;
    params[1].AsString := NMEMPRESA;
    params[2].AsString := NUCNPJ;
    params[3].AsString := NUINSCRICAO;
   // params[4].AsString := STATIVO;
    params[5].AsDate := StrToDate(DTCADASTRO);
    params[6].AsDate := StrToDate(DTABERTURA);
    params[7].AsString := TLCOMERCIAL;
    params[8].AsString := TLCELULAR;
  // params[9].AsString := stexcluido;
    params[10].AsString := TXEMAIL;
    Try
      ExecSQL();
      result := True;
    except
      on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao adicionar a Empresa: ' + sLineBreak + E.Message;
        result := False;
      end;
    End;
  end;
end;

procedure TdmEmpresa.Pesquisar(sNome: string);
begin
  if cdsPesquisar.Active then
    cdsPesquisar.Close;
  cdsPesquisar.params[0].AsString := '%' + sNome + '%';
  cdsPesquisar.Open;
  cdsPesquisar.First;
end;

procedure TdmEmpresa.PesquisarEndereco(sNome: Integer);
begin
    if cdsEnderecoGrid.Active then
    cdsEnderecoGrid.Close;
  cdsEnderecoGrid.ParamByName('NOME').AsInteger := sNome;
  cdsEnderecoGrid.Open;
  cdsEnderecoGrid.First;
end;

end.
