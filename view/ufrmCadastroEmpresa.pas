unit ufrmCadastroEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Mask,
  Vcl.ComCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons, udmEmpresa,
  udmEndereco;

type
  TOperacao = (opNovo, OpAlterar, opNavegar);

  TfrmCadastroEmpresa = class(TForm)
    pnlRodaPe: TPanel;
    btSair: TButton;
    pgcEmpresa: TPageControl;
    tbCadastroEmpresa: TTabSheet;
    tbFuncionarios: TTabSheet;
    tbEndereco: TTabSheet;
    pnlFiltro: TPanel;
    edPesquisar: TLabeledEdit;
    btnPesquisa: TButton;
    pnlBtPesquisa: TPanel;
    btNovo: TButton;
    btDetalhes: TButton;
    btExcluir: TButton;
    DBGrid1: TDBGrid;
    dsPesquisa: TDataSource;
    tbDados: TTabSheet;
    edCOD: TLabeledEdit;
    edNomeEmpresa: TLabeledEdit;
    edCNPJ: TLabeledEdit;
    edInscricao: TLabeledEdit;
    edEmail: TLabeledEdit;
    edSituacao: TLabeledEdit;
    edTelefone: TLabeledEdit;
    edTelefone2: TLabeledEdit;
    pnlBtCadastro: TPanel;
    btListar: TBitBtn;
    btGravar: TBitBtn;
    btAlterar: TBitBtn;
    btCancelar: TBitBtn;
    edDataCadastro: TLabeledEdit;
    edDataExclusao: TLabeledEdit;
    edCodEnd: TLabeledEdit;
    edCodTitularEnd: TLabeledEdit;
    edCodEmpresaEnd: TLabeledEdit;
    edLogradouro: TLabeledEdit;
    edNumeroEnd: TLabeledEdit;
    edBairro: TLabeledEdit;
    edCidade: TLabeledEdit;
    edUF: TLabeledEdit;
    edCEP: TLabeledEdit;
    edSituacaoEnd: TLabeledEdit;
    Panel1: TPanel;
    gdEndereco: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    btEndereco: TButton;
    btDetalhesEnd: TButton;
    dsEnderecoGrid: TDataSource;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure btSairClick(Sender: TObject);
    procedure btDetalhesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btNovoClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btListarClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btnPesquisaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure btDetalhesEndClick(Sender: TObject);
    procedure btEnderecoClick(Sender: TObject);
  private
    FOperacao: TOperacao;
  public
    procedure Novo;
    procedure Detalhar;
    procedure DetalharEndereco;
    procedure Configuracoes;
    procedure Pesquisar;
    procedure PesquisarEndereco;
    procedure CarregarEmpresa;
    procedure CarregarEndereco;
    procedure Listar;
    procedure Alterar;
    procedure Excluir;
    procedure Inserir;
    procedure Gravar;
    procedure HabilitarControles(aOperacao: TOperacao);
    procedure LimpaDados;
    procedure AbrirEndereco;

  end;

var
  frmCadastroEmpresa: TfrmCadastroEmpresa;

implementation

{$R *.dfm}

uses uClienteController, uClienteModel, uEnderecoController;

procedure TfrmCadastroEmpresa.AbrirEndereco;
begin

end;

procedure TfrmCadastroEmpresa.Alterar;
var
  oEmpresa: TCliente;
  oEmpresaController: TClienteController;
  sErro: string;
begin
  oEmpresa := TCliente.Create;
  oEmpresaController := TClienteController.Create;
  try
    with oEmpresa do
    begin

      IDEMPRESA := StrToIntDef(edCOD.Text, 0);
      NMEMPRESA := edNomeEmpresa.Text;
      NUCNPJ := edCNPJ.Text;
      NUINSCRICAO := edInscricao.Text;
      STATIVO := 's';
      TLCOMERCIAL := edTelefone.Text;
      TLCELULAR := edTelefone2.Text;
      TXEMAIL := edEmail.Text;
    end;
    if oEmpresaController.Alterar(oEmpresa, sErro) = False then
      raise Exception.Create(sErro)
    else
      ShowMessage('Altera��o concluida');

  finally
    FreeAndNil(oEmpresaController);
    FreeAndNil(oEmpresa);
  end;
end;

procedure TfrmCadastroEmpresa.btAlterarClick(Sender: TObject);
begin
  FOperacao := OpAlterar;
  HabilitarControles(OpAlterar);
end;

procedure TfrmCadastroEmpresa.btCancelarClick(Sender: TObject);
begin
  HabilitarControles(opNavegar);
end;

procedure TfrmCadastroEmpresa.btDetalhesClick(Sender: TObject);
begin
  Detalhar;
end;

procedure TfrmCadastroEmpresa.btDetalhesEndClick(Sender: TObject);
begin
  DetalharEndereco;
end;

procedure TfrmCadastroEmpresa.btEnderecoClick(Sender: TObject);
begin
  PesquisarEndereco;
  pgcEmpresa.ActivePage := tbEndereco;
end;

procedure TfrmCadastroEmpresa.btExcluirClick(Sender: TObject);
begin
  Excluir;
end;

procedure TfrmCadastroEmpresa.btGravarClick(Sender: TObject);
begin
  Gravar;
  HabilitarControles(opNavegar);
end;

procedure TfrmCadastroEmpresa.btListarClick(Sender: TObject);
begin
  Listar;
end;

procedure TfrmCadastroEmpresa.btNovoClick(Sender: TObject);
begin
  Novo;
  FOperacao := opNovo;
  pgcEmpresa.ActivePage := tbDados;
  HabilitarControles(opNovo);
end;

procedure TfrmCadastroEmpresa.btnPesquisaClick(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCadastroEmpresa.btSairClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCadastroEmpresa.CarregarEmpresa;
var
  oEmpresa: TCliente;
  oEmpresaController: TClienteController;
begin
  oEmpresa := TCliente.Create;
  oEmpresaController := TClienteController.Create;
  try
    oEmpresaController.CarregarEmpresa(oEmpresa,
    dsPesquisa.DataSet.FieldByName('IDEMPRESA').AsInteger);
    with oEmpresa do
    begin
      edCOD.Text := IntToStr(IDEMPRESA);
      edNomeEmpresa.Text := NMEMPRESA;
      edCNPJ.Text := NUCNPJ;
      edInscricao.Text := NUINSCRICAO;
      edSituacao.Text := STATIVO;
      edTelefone.Text := TLCOMERCIAL;
      edTelefone2.Text := TLCELULAR;
      edEmail.Text := TXEMAIL;
      edDataCadastro.Text := DTCADASTRO;
    end;
  finally
    FreeAndNil(oEmpresaController);
    FreeAndNil(oEmpresa);
  end;

end;

procedure TfrmCadastroEmpresa.CarregarEndereco;
var
  oEndereco: TCliente;
  oEnderecoController: TEnderecoController;
begin
  oEndereco := TCliente.Create;
  oEnderecoController := TEnderecoController.Create;
  try
    oEnderecoController.CarregarEndereco(oEndereco,
    dsPesquisa.DataSet.FieldByName('idendereco').AsInteger);

    with oEndereco do
    begin
  //    edCOD.Text := IntToStr(IDEMPRESA);
  //    edNomeEmpresa.Text := NMEMPRESA;
  //    edCNPJ.Text := NUCNPJ;
  //    edInscricao.Text := NUINSCRICAO;
  //    edSituacao.Text := STATIVO;
  //    edTelefone.Text := TLCOMERCIAL;
  //    edTelefone2.Text := TLCELULAR;
  //    edEmail.Text := TXEMAIL;
  //    edDataCadastro.Text := DTCADASTRO;
    end;
  finally
    FreeAndNil(oEnderecoController);
    FreeAndNil(oEndereco);
  end;

end;

procedure TfrmCadastroEmpresa.Configuracoes;
begin
  tbCadastroEmpresa.TabVisible := False;
  tbFuncionarios.TabVisible := False;
  tbEndereco.TabVisible := False;
  tbDados.TabVisible := False;
  pgcEmpresa.ActivePage := tbCadastroEmpresa;
end;

procedure TfrmCadastroEmpresa.DBGrid1DblClick(Sender: TObject);
begin
  Detalhar;
end;

procedure TfrmCadastroEmpresa.Detalhar;
begin
  if (dmEmpresa.cdsPesquisar.Active) and (dmEmpresa.cdsPesquisar.RecordCount > 0)
  then
  begin
    CarregarEmpresa;
    HabilitarControles(opNavegar);
    FOperacao := opNavegar;
    pgcEmpresa.ActivePage := tbDados;
  end
  else
    raise Exception.Create('N�o a registro selecionado');
end;

procedure TfrmCadastroEmpresa.DetalharEndereco;
begin
if (dmEndereco.cdsEnderecoGrid.Active) and (dmEndereco.cdsEnderecoGrid.RecordCount > 0)
  then
  begin
    CarregarEndereco;
  end
  else
    raise Exception.Create('N�o a registro selecionado');

end;

procedure TfrmCadastroEmpresa.Excluir;
var
  oEmpresaController: TClienteController;
  sErro: string;
begin
  oEmpresaController := TClienteController.Create;
  try
    if (dmEmpresa.cdsPesquisar.Active) and
      (dmEmpresa.cdsPesquisar.RecordCount > 0) then
    begin
      if MessageDlg('Deseja realmente excluir?', mtConfirmation, [mbYes, mbNo],
        0) = IDYES then
      begin
        if oEmpresaController.Excluir(dmEmpresa.cdsPesquisarIDEMPRESA.AsInteger,
          sErro) = False then
          raise Exception.Create(sErro);
        oEmpresaController.Pesquisar(edPesquisar.Text);
      end;

    end
    else
      raise Exception.Create('N�o a registro para excluir.');

  finally
    FreeAndNil(oEmpresaController);
  end;
end;

procedure TfrmCadastroEmpresa.FormCreate(Sender: TObject);
begin
  dmEmpresa := TdmEmpresa.Create(nil);
  dmEndereco := TdmEndereco.Create(nil);
end;

procedure TfrmCadastroEmpresa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(dmEmpresa);
  FreeAndNil(dmEndereco);
end;

procedure TfrmCadastroEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    Key := #0;
    Perform(WM_NEXTDLGCTL, 0, 0);
  end;

end;

procedure TfrmCadastroEmpresa.FormShow(Sender: TObject);
begin
  Configuracoes;
end;

procedure TfrmCadastroEmpresa.Gravar;
var
  oEmpresaController: TClienteController;
begin
  oEmpresaController := TClienteController.Create;
  try
    case FOperacao of
      opNovo:
        Inserir;
      OpAlterar:
        Alterar;
    end;
    oEmpresaController.Pesquisar(edPesquisar.Text);
  finally
    FreeAndNil(oEmpresaController);
  end;

end;

procedure TfrmCadastroEmpresa.HabilitarControles(aOperacao: TOperacao);
begin
  case aOperacao of
    opNovo, OpAlterar:
      begin
        edNomeEmpresa.Enabled := True;
        edCNPJ.Enabled := True;
        edInscricao.Enabled := True;
        edTelefone.Enabled := True;
        edTelefone2.Enabled := True;
        edEmail.Enabled := True;
        btListar.Enabled := False;
        btAlterar.Enabled := True;
        btExcluir.Enabled := False;
        btGravar.Enabled := True;
        btCancelar.Enabled := True;
        btSair.Enabled := False;

        if aOperacao = opNovo then
          LimpaDados;
      end;

    opNavegar:
      begin
        edNomeEmpresa.Enabled := False;
        edCNPJ.Enabled := False;
        edInscricao.Enabled := False;
        edTelefone.Enabled := False;
        edTelefone2.Enabled := False;
        edEmail.Enabled := False;
        btListar.Enabled := True;
        btAlterar.Enabled := True;
        btExcluir.Enabled := True;
        btGravar.Enabled := False;
        btCancelar.Enabled := False;
        btSair.Enabled := True;
      end;

  end;
end;

procedure TfrmCadastroEmpresa.Inserir;
var
  oEmpresa: TCliente;
  oEmpresaController: TClienteController;
  sErro: string;
begin
  oEmpresa := TCliente.Create;
  oEmpresaController := TClienteController.Create;
  try
    with oEmpresa do
    begin
      IDEMPRESA := 0;
      NMEMPRESA := edNomeEmpresa.Text;
      NUCNPJ := edCNPJ.Text;
      NUINSCRICAO := edInscricao.Text;
      // STATIVO := 's';
      DTCADASTRO := DateToStr(Date());
      DTABERTURA := DateToStr(Date());
      TLCOMERCIAL := edTelefone.Text;
      TLCELULAR := edTelefone2.Text;
      TXEMAIL := edEmail.Text;
    end;
    if oEmpresaController.Inserir(oEmpresa, sErro) = False then
      raise Exception.Create(sErro)
    else
      ShowMessage('Empresa cadastrada com sucesso!');
  finally
    FreeAndNil(oEmpresa);
    FreeAndNil(oEmpresaController);
  end;

end;

procedure TfrmCadastroEmpresa.LimpaDados;
begin
  edCOD.Clear;
  edNomeEmpresa.Clear;
  edCNPJ.Clear;
  edInscricao.Clear;
  edTelefone.Clear;
  edTelefone2.Clear;
  edEmail.Clear;
  edSituacao.Clear;
  edDataCadastro.Clear;
  edDataExclusao.Clear;
end;

procedure TfrmCadastroEmpresa.Listar;
begin
  DBGrid1.Refresh;
  pgcEmpresa.ActivePage := tbCadastroEmpresa;

end;

procedure TfrmCadastroEmpresa.Novo;
begin
  FOperacao := opNovo;
  pgcEmpresa.ActivePage := tbDados;

end;

procedure TfrmCadastroEmpresa.Pesquisar;
var
  oEmpresaController: TClienteController;
begin
  oEmpresaController := TClienteController.Create;
  try
    oEmpresaController.Pesquisar(edPesquisar.Text);
  finally
    FreeAndNil(oEmpresaController);
  end;

end;

procedure TfrmCadastroEmpresa.PesquisarEndereco;
var
  oEnderecoController: TEnderecoController;
begin
  oEnderecoController := TEnderecoController.Create;
  try
    oEnderecoController.Pesquisar(StrToInt(edCOD.Text));
  finally
    FreeAndNil(oEnderecoController);
  end;
end;

end.
