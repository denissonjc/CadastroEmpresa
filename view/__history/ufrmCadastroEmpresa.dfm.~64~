object frmCadastroEmpresa: TfrmCadastroEmpresa
  Left = 0
  Top = 0
  Caption = 'Cadastro de Empresa'
  ClientHeight = 297
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  KeyPreview = True
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyPress = FormKeyPress
  OnShow = FormShow
  TextHeight = 15
  object pnlRodaPe: TPanel
    Left = 0
    Top = 256
    Width = 628
    Height = 41
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 255
    ExplicitWidth = 624
    DesignSize = (
      628
      41)
    object btSair: TButton
      Left = 540
      Top = 8
      Width = 75
      Height = 25
      Anchors = [akTop, akRight]
      Caption = 'Sair'
      TabOrder = 0
      OnClick = btSairClick
      ExplicitLeft = 536
    end
  end
  object pgcEmpresa: TPageControl
    Left = 0
    Top = 0
    Width = 628
    Height = 256
    ActivePage = tbDados
    Align = alClient
    TabOrder = 1
    ExplicitWidth = 624
    ExplicitHeight = 255
    object tbCadastroEmpresa: TTabSheet
      Caption = 'Empresa'
      object pnlFiltro: TPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 49
        Align = alTop
        BevelOuter = bvNone
        Color = clGrayText
        ParentBackground = False
        TabOrder = 0
        object edPesquisar: TLabeledEdit
          Left = 8
          Top = 20
          Width = 506
          Height = 23
          EditLabel.Width = 101
          EditLabel.Height = 15
          EditLabel.Caption = 'Pesquisa por nome'
          TabOrder = 0
          Text = ''
        end
        object btnPesquisa: TButton
          Left = 520
          Top = 18
          Width = 75
          Height = 25
          Caption = 'Pesquisa'
          TabOrder = 1
          OnClick = btnPesquisaClick
        end
      end
      object pnlBtPesquisa: TPanel
        Left = 0
        Top = 185
        Width = 620
        Height = 41
        Align = alBottom
        BevelOuter = bvNone
        Color = clGrayText
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          620
          41)
        object btNovo: TButton
          Left = 381
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Novo'
          TabOrder = 0
          OnClick = btNovoClick
        end
        object btDetalhes: TButton
          Left = 460
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Detalhes'
          TabOrder = 1
          OnClick = btDetalhesClick
        end
        object btExcluir: TButton
          Left = 540
          Top = 6
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btExcluirClick
        end
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 49
        Width = 620
        Height = 136
        Align = alClient
        DataSource = dsPesquisa
        DrawingStyle = gdsGradient
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -12
        TitleFont.Name = 'Segoe UI'
        TitleFont.Style = []
        OnDblClick = DBGrid1DblClick
      end
    end
    object tbFuncionarios: TTabSheet
      Caption = 'Funcionarios'
      ImageIndex = 1
    end
    object tbEndereco: TTabSheet
      Caption = 'Endere'#231'o'
      ImageIndex = 2
    end
    object tbDados: TTabSheet
      Caption = 'tbDados'
      ImageIndex = 3
      object edCOD: TLabeledEdit
        Left = 0
        Top = 16
        Width = 121
        Height = 23
        EditLabel.Width = 42
        EditLabel.Height = 15
        EditLabel.Caption = 'C'#243'digo:'
        Enabled = False
        TabOrder = 0
        Text = ''
      end
      object edNomeEmpresa: TLabeledEdit
        Left = 127
        Top = 16
        Width = 474
        Height = 23
        EditLabel.Width = 48
        EditLabel.Height = 15
        EditLabel.Caption = 'Empresa:'
        MaxLength = 100
        TabOrder = 1
        Text = ''
      end
      object edCNPJ: TLabeledEdit
        Left = 3
        Top = 59
        Width = 121
        Height = 23
        EditLabel.Width = 30
        EditLabel.Height = 15
        EditLabel.Caption = 'CNPJ:'
        MaxLength = 18
        TabOrder = 2
        Text = ''
      end
      object edInscricao: TLabeledEdit
        Left = 130
        Top = 59
        Width = 121
        Height = 23
        EditLabel.Width = 50
        EditLabel.Height = 15
        EditLabel.Caption = 'Inscri'#231#227'o:'
        MaxLength = 15
        TabOrder = 3
        Text = ''
      end
      object edEmail: TLabeledEdit
        Left = 0
        Top = 160
        Width = 384
        Height = 23
        EditLabel.Width = 37
        EditLabel.Height = 15
        EditLabel.Caption = 'E-mail:'
        MaxLength = 100
        TabOrder = 7
        Text = ''
      end
      object edSituacao: TLabeledEdit
        Left = 480
        Top = 59
        Width = 121
        Height = 23
        EditLabel.Width = 48
        EditLabel.Height = 15
        EditLabel.Caption = 'Situa'#231#227'o:'
        Enabled = False
        MaxLength = 1
        TabOrder = 4
        Text = ''
      end
      object edTelefone: TLabeledEdit
        Left = 0
        Top = 109
        Width = 121
        Height = 23
        EditLabel.Width = 102
        EditLabel.Height = 15
        EditLabel.Caption = 'Telefone comercial:'
        MaxLength = 15
        TabOrder = 5
        Text = ''
      end
      object edTelefone2: TLabeledEdit
        Left = 127
        Top = 109
        Width = 121
        Height = 23
        EditLabel.Width = 85
        EditLabel.Height = 15
        EditLabel.Caption = 'Telefone celular:'
        MaxLength = 15
        TabOrder = 6
        Text = ''
      end
      object pnlBtCadastro: TPanel
        Left = 0
        Top = 188
        Width = 620
        Height = 38
        Align = alBottom
        Color = clMedGray
        ParentBackground = False
        TabOrder = 8
        ExplicitTop = 187
        ExplicitWidth = 616
        DesignSize = (
          620
          38)
        object btListar: TBitBtn
          Left = 299
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Lista'
          TabOrder = 0
          OnClick = btListarClick
          ExplicitLeft = 295
        end
        object btGravar: TBitBtn
          Left = 455
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Gravar'
          TabOrder = 2
          OnClick = btGravarClick
          ExplicitLeft = 451
        end
        object btAlterar: TBitBtn
          Left = 377
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Alterar'
          TabOrder = 1
          OnClick = btAlterarClick
          ExplicitLeft = 373
        end
        object btCancelar: TBitBtn
          Left = 533
          Top = 8
          Width = 75
          Height = 25
          Anchors = [akTop, akRight]
          Caption = 'Cancelar'
          TabOrder = 3
          OnClick = btCancelarClick
          ExplicitLeft = 529
        end
      end
      object edDataCadastro: TLabeledEdit
        Left = 480
        Top = 109
        Width = 121
        Height = 23
        EditLabel.Width = 90
        EditLabel.Height = 15
        EditLabel.Caption = 'Data de Cadastro'
        Enabled = False
        TabOrder = 9
        Text = ''
      end
      object edDataExclusao: TLabeledEdit
        Left = 480
        Top = 160
        Width = 121
        Height = 23
        EditLabel.Width = 73
        EditLabel.Height = 15
        EditLabel.Caption = 'Data exclus'#227'o'
        Enabled = False
        TabOrder = 10
        Text = ''
      end
    end
  end
  object dsPesquisa: TDataSource
    DataSet = dmEmpresa.cdsPesquisar
    Left = 412
    Top = 130
  end
end
