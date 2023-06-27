unit uClienteModel;

interface

uses
  System.SysUtils;


type
  TCliente = class
  private
    fTLCELULAR: string;
    fDTCADASTRO: string;
    fIDEMPRESA: Integer;
    fNUCNPJ: string;
    fDTEXCLUIDO: string;
    fTXOBS: string;
    fSTEXCLUIDO: string;
    fTLCOMERCIAL: string;
    fTXEMAIL: string;
    fNUINSCRICAO: string;
    fDTABERTURA: string;
    fNMEMPRESA: string;
    procedure SetNMEMPRESA(const Value: string);

  public
    property IDEMPRESA: Integer read fIDEMPRESA write fIDEMPRESA;
    property NMEMPRESA: string read FNMEMPRESA write SetNMEMPRESA;
    property NUCNPJ: string read fNUCNPJ write fNUCNPJ;
    property NUINSCRICAO: string read fNUINSCRICAO write fNUINSCRICAO;
    property STATIVO: string read fNUINSCRICAO write fNUINSCRICAO;
    property DTCADASTRO: string read fDTCADASTRO write fDTCADASTRO; //alterar para o tipo data
    property DTABERTURA: string read fDTABERTURA write fDTABERTURA;  //alterar para o tipo data
    property TLCOMERCIAL: string read fTLCOMERCIAL write fTLCOMERCIAL;
    property TLCELULAR: string read fTLCELULAR write fTLCELULAR;
    property TXOBS: string read fTXOBS write fTXOBS;
    property TXEMAIL: string read fTXEMAIL write fTXEMAIL;
    property STEXCLUIDO: string read fSTEXCLUIDO write fSTEXCLUIDO;
    property DTEXCLUIDO: string read fDTEXCLUIDO write fDTEXCLUIDO;


  end;
implementation

{ TCliente }

procedure TCliente.SetNMEMPRESA(const Value: string);
begin
  if Value = EmptyStr then
    raise EArgumentException.Create('''Nome''n�o pode ficar em branco.');
  FNMEMPRESA := Value;
end;

end.
