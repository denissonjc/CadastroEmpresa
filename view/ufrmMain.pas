unit ufrmMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfrmMain = class(TForm)
    btCadastro: TButton;
    procedure btCadastroClick(Sender: TObject);
  private
    procedure AbrirCliente;
  public
    { Public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.dfm}

uses ufrmCadastroEmpresa;

procedure TfrmMain.AbrirCliente;
begin
  frmCadastroEmpresa := TfrmCadastroEmpresa.Create(nil);
  try
    frmCadastroEmpresa.ShowModal;
  finally
    FreeAndNil(frmCadastroEmpresa);
  end;
end;

procedure TfrmMain.btCadastroClick(Sender: TObject);
begin
  AbrirCliente;
end;

end.
