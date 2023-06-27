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
  private
    { Private declarations }
  public
    function GerarID: Integer;
    procedure Pesquisar(sNome: string);
    procedure CarregarEmpresa(oEmpresa: TCliente; iCodigo: Integer);
    function Inserir(oEmpresa: TCliente; out sErro: string): Boolean;
    function Alterar(oEmpresa: TCliente; out sErro: string): Boolean;
    function Excluir(iCodigo: Integer; out sErro: string): Boolean;
  end;

var
  dmEmpresa: TdmEmpresa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}
{ TdmEmpresa }

function TdmEmpresa.Alterar(oEmpresa: TCliente; out sErro: string): Boolean;
begin
   with qInserir, oEmpresa do
  begin
    params[0].AsString := NMEMPRESA;
    params[1].AsString := NUCNPJ;    
    params[2].AsString := NUINSCRICAO;
    params[3].AsString := STATIVO;
    params[4].AsString := DTCADASTRO;
    params[5].AsString := DTABERTURA;
    params[6].AsString := TLCOMERCIAL;
    params[7].AsString := TLCELULAR;
//    params[8].AsString := TXOBS;
    params[9].AsString := TXEMAIL;
    params[10].AsString := STEXCLUIDO;
    params[11].AsString := DTEXCLUIDO;
    params[12].AsInteger := IDEMPRESA;
    Try
      ExecSQL();
      result := True;
    except
      on E: Exception do
      begin
        sErro := 'Ocorreu um erro ao alterar a Empresa: ' + sLineBreak + E.Message;
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
//        TXOBS := FieldByName('TXOBS').AsString;
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
    params[4].AsString := STATIVO;
    params[5].AsDate := StrToDate(DTCADASTRO);
    params[6].AsDate := StrToDate(DTABERTURA);
    params[7].AsString := TLCOMERCIAL;
    params[8].AsString := TLCELULAR;
  //  params[9].AsString := TXOBS;
    params[10].AsString := TXEMAIL;
   // params[11].AsDate := StrToDate(STEXCLUIDO);
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

end.