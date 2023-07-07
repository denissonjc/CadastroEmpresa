program CadastroEmpresa;

uses
  Vcl.Forms,
  ufrmMain in 'view\ufrmMain.pas' {frmMain},
  ufrmCadastroEmpresa in 'view\ufrmCadastroEmpresa.pas' {frmCadastroEmpresa},
  uClienteModel in 'model\uClienteModel.pas',
  uClienteController in 'controller\uClienteController.pas',
  udmConexao in 'dao\udmConexao.pas' {dmConexao: TDataModule},
  udmEmpresa in 'dao\udmEmpresa.pas' {dmEmpresa: TDataModule},
  udmEndereco in 'dao\udmEndereco.pas' {dmEndereco: TDataModule},
  uEnderecoController in 'controller\uEnderecoController.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmEndereco, dmEndereco);
  Application.Run;
end.
