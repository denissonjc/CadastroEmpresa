unit uEnderecoController;

interface

uses
  uClienteModel, System.SysUtils, udmEndereco, udm_Endereco;

type
  TEnderecoController = class
    public
      constructor Create;
      destructor Destroy; override;
      procedure Pesquisar(sNome: integer);
      procedure CarregarEndereco(oEndereco: TCliente; iCodigo: Integer);
      function Inserir(oEndereco: TCliente; var sERRO: string): Boolean;
      function Alterar(oEndereco: TCliente; var sERRO: string): Boolean;
      function Excluir(iCodigo: Integer; var sERRO: string): Boolean;
  end;

implementation

{ TEnderecoController }


function TEnderecoController.Alterar(oEndereco: TCliente; var sERRO: string): Boolean;
begin
    result := dmEndereco.Alterar(oEndereco, sERRO);
end;

procedure TEnderecoController.CarregarEndereco(oEndereco: TCliente; iCodigo: Integer);
begin
  dmEndereco.CarregarEndereco(oEndereco, iCodigo)
end;

constructor TEnderecoController.create;
begin

end;

destructor TEnderecoController.Destroy;
begin
  inherited;
end;

function TEnderecoController.Excluir(iCodigo: Integer; var sERRO: string): Boolean;
begin
  result := dmEndereco.Excluir(iCodigo, sERRO);
end;

function TEnderecoController.Inserir(oEndereco: TCliente; var sERRO: string): Boolean;
begin
  result := dmEndereco.Inserir(oEndereco, sERRO);
end;

procedure TEnderecoController.Pesquisar(sNome: integer);
begin
  dm_Endereco.Pesquisar(sNome);
end;

end.
