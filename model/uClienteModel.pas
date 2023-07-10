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
    fSTATIVO:string;
    fDTABERTURA: string;
    fNMEMPRESA: string;

    fIDENDERECO: Integer;
    fIDTITULAR: Integer;
    fTITULAR: string;
    fNMENDERECO: string;
    fNUENDERECO: string;
    fNMBAIRRO: String;
    fIDCIDADE: Integer;
    fCIDADE: String;
    fIDUF: Integer;
    fUF: String;
    fNUCEP: string;
    fSTATIVOEND: string;
    fEMPRESA: string;


    procedure SetNMEMPRESA(const Value: string);

  public
  //Cadastro de empresa
    property IDEMPRESA: Integer read fIDEMPRESA write fIDEMPRESA;
    property NMEMPRESA: string read FNMEMPRESA write SetNMEMPRESA;
    property NUCNPJ: string read fNUCNPJ write fNUCNPJ;
    property NUINSCRICAO: string read fNUINSCRICAO write fNUINSCRICAO;
    property STATIVO: string read fSTATIVO write fSTATIVO;
    property DTCADASTRO: string read fDTCADASTRO write fDTCADASTRO;
    property DTABERTURA: string read fDTABERTURA write fDTABERTURA;
    property TLCOMERCIAL: string read fTLCOMERCIAL write fTLCOMERCIAL;
    property TLCELULAR: string read fTLCELULAR write fTLCELULAR;
    property TXOBS: string read fTXOBS write fTXOBS;
    property TXEMAIL: string read fTXEMAIL write fTXEMAIL;
    property STEXCLUIDO: string read fSTEXCLUIDO write fSTEXCLUIDO;
    property DTEXCLUIDO: string read fDTEXCLUIDO write fDTEXCLUIDO;

    //Cadastro de endere�o
    property IDENDERECO: Integer read fIDENDERECO write fIDENDERECO;
    property IDTITULAR: Integer read fIDTITULAR write fIDTITULAR;
    property TITULAR: String read fTITULAR write fTITULAR;
    property EMPRESA: string read fEMPRESA write fEMPRESA;
    property NMENDERECO: string read fNMENDERECO write fNMENDERECO;
    property NUENDERECO: string read fNUENDERECO write fNUENDERECO;
    property NMBAIRRO: string read fNMBAIRRO write fNMBAIRRO;
    property IDCIDADE: Integer read fIDCIDADE write fIDCIDADE;
    property CIDADE: string read fCIDADE write fCIDADE;
    property IDUF: Integer read fIDUF write fIDUF;
    property UF: string read fUF write fUF;
    property NUCEP: string read fNUCEP write fNUCEP;
    property STATIVOEND: string read fSTATIVOEND write fSTATIVOEND;


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
