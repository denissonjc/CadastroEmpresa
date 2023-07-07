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
    qAlterarEndereco: TFDQuery;
    qExcluirEndereco: TFDQuery;
    qInserirEndereco: TFDQuery;
    dsPesquisarEndereco: TDataSetProvider;
    cdsPesquisarEndereco: TClientDataSet;
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
    qEnderecoGrid: TFDQuery;
    dsEnderecoGrid: TDataSetProvider;
    cdsEnderecoGrid: TClientDataSet;
    qEnderecoGridIDENDERECO: TIntegerField;
    qEnderecoGridIDTITULAR: TIntegerField;
    qEnderecoGridIDEMPRESA: TIntegerField;
    qEnderecoGridNMENDERECO: TStringField;
    qEnderecoGridNUENDERECO: TStringField;
    qEnderecoGridNMBAIRRO: TStringField;
    qEnderecoGridIDCIDADE: TIntegerField;
    qEnderecoGridIDUF: TIntegerField;
    qEnderecoGridNUCEP: TStringField;
    qEnderecoGridSTATIVO: TStringField;
    qEnderecoGridSTEXCLUIDO: TStringField;
    qEnderecoGridDTEXCLUIDO: TDateField;
    qEnderecoGridTPCADASTRO: TStringField;
    qEnderecoGridIDEMPRESA_1: TIntegerField;
    qEnderecoGridNMEMPRESA: TStringField;
    qEnderecoGridNUCNPJ: TStringField;
    qEnderecoGridNUINSCRICAO: TStringField;
    qEnderecoGridSTATIVO_1: TStringField;
    qEnderecoGridDTCADASTRO: TDateField;
    qEnderecoGridDTABERTURA: TDateField;
    qEnderecoGridTLCOMERCIAL: TStringField;
    qEnderecoGridTLCELULAR: TStringField;
    qEnderecoGridTXOBS: TIntegerField;
    qEnderecoGridTXEMAIL: TStringField;
    qEnderecoGridSTEXCLUIDO_1: TStringField;
    qEnderecoGridDTEXCLUIDO_1: TDateField;
    cdsEnderecoGridIDENDERECO: TIntegerField;
    cdsEnderecoGridIDTITULAR: TIntegerField;
    cdsEnderecoGridIDEMPRESA: TIntegerField;
    cdsEnderecoGridNMENDERECO: TStringField;
    cdsEnderecoGridNUENDERECO: TStringField;
    cdsEnderecoGridNMBAIRRO: TStringField;
    cdsEnderecoGridIDCIDADE: TIntegerField;
    cdsEnderecoGridIDUF: TIntegerField;
    cdsEnderecoGridNUCEP: TStringField;
    cdsEnderecoGridSTATIVO: TStringField;
    cdsEnderecoGridSTEXCLUIDO: TStringField;
    cdsEnderecoGridDTEXCLUIDO: TDateField;
    cdsEnderecoGridTPCADASTRO: TStringField;
    cdsEnderecoGridIDEMPRESA_1: TIntegerField;
    cdsEnderecoGridNMEMPRESA: TStringField;
    cdsEnderecoGridNUCNPJ: TStringField;
    cdsEnderecoGridNUINSCRICAO: TStringField;
    cdsEnderecoGridSTATIVO_1: TStringField;
    cdsEnderecoGridDTCADASTRO: TDateField;
    cdsEnderecoGridDTABERTURA: TDateField;
    cdsEnderecoGridTLCOMERCIAL: TStringField;
    cdsEnderecoGridTLCELULAR: TStringField;
    cdsEnderecoGridTXOBS: TIntegerField;
    cdsEnderecoGridTXEMAIL: TStringField;
    cdsEnderecoGridSTEXCLUIDO_1: TStringField;
    cdsEnderecoGridDTEXCLUIDO_1: TDateField;
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
