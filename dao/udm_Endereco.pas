unit udm_Endereco;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Datasnap.DBClient,
  Datasnap.Provider, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  Tdm_Endereco = class(TDataModule)
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
    dsEnderecoGrid: TDataSetProvider;
    cdsEnderecoGrid: TClientDataSet;
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
    { Private declarations }
  public
    procedure Pesquisar(sNome: integer);
  end;

var
  dm_Endereco: Tdm_Endereco;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ Tdm_Endereco }

procedure Tdm_Endereco.Pesquisar(sNome: integer);
begin
  if cdsEnderecoGrid.Active then
    cdsEnderecoGrid.Close;
  cdsEnderecoGrid.ParamByName('NOME').AsInteger := sNome;
  cdsEnderecoGrid.Open;
  cdsEnderecoGrid.First;
end;

end.
