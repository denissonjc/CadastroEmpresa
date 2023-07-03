unit udmConexao;

interface

uses
  System.SysUtils, System.Classes, Data.DBXCommon,
  IPPeerClient, Data.DB, Data.SqlExpr, Data.DBXInterBase, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Comp.Client;

type
  TdmConexao = class(TDataModule)
    SQLConexao_1: TSQLConnection;
    SQLConexao: TFDConnection;
  private

  public

  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
