object frm_produtos: Tfrm_produtos
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Cadastro e Controle de Produtos'
  ClientHeight = 471
  ClientWidth = 774
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 16
  object stb_produtos: TStatusBar
    Left = 0
    Top = 452
    Width = 774
    Height = 19
    Panels = <>
  end
  object page_produtos: TPageControl
    Left = 0
    Top = 0
    Width = 774
    Height = 452
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 1
    TabWidth = 150
    ExplicitTop = -6
    object TabSheet1: TTabSheet
      Caption = 'Consultar'
      object Label1: TLabel
        Left = 111
        Top = 26
        Width = 128
        Height = 18
        Caption = 'Pesquisar Produtos:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_editarProdutos: TSpeedButton
        Left = 632
        Top = 32
        Width = 113
        Height = 22
        Caption = 'Editar Selecionado'
        OnClick = btn_editarProdutosClick
      end
      object dbg_produtos: TDBGrid
        Left = 0
        Top = 80
        Width = 766
        Height = 341
        Align = alBottom
        DataSource = dm.ds_produtos
        Options = [dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -13
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnDblClick = dbg_produtosDblClick
        Columns = <
          item
            Expanded = False
            FieldName = 'idprodutos'
            Title.Caption = 'ID'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 44
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_descricao'
            Title.Caption = 'Produto'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 192
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_barras'
            Title.Caption = 'C'#243'd. Barras'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 89
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_ref'
            Title.Caption = 'Ref'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_custo'
            Title.Caption = 'R$ Custo'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 76
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_preco'
            Title.Caption = 'Pre'#231'o Venda'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 86
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_data_cad'
            Title.Caption = 'Data de Cadastro'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Width = 119
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'pro_estoque'
            Title.Caption = 'Quantidade Estoque'
            Title.Font.Charset = DEFAULT_CHARSET
            Title.Font.Color = clBlue
            Title.Font.Height = -13
            Title.Font.Name = 'Tahoma'
            Title.Font.Style = []
            Visible = True
          end>
      end
      object txt_busca: TEdit
        Left = 111
        Top = 50
        Width = 254
        Height = 24
        CharCase = ecUpperCase
        Ctl3D = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -15
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        OnKeyPress = txt_buscaKeyPress
      end
      object rg_buscar: TRadioGroup
        Left = 0
        Top = 3
        Width = 105
        Height = 71
        Items.Strings = (
          'Por Nome'
          'Por Barras')
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Cadastrar ou Editar'
      ImageIndex = 1
      object Label2: TLabel
        Left = 72
        Top = 32
        Width = 50
        Height = 16
        Caption = 'Produtos'
        FocusControl = DBEdit1
      end
      object Label3: TLabel
        Left = 70
        Top = 78
        Width = 98
        Height = 16
        Caption = 'C'#243'digo de Barras'
        FocusControl = DBEdit2
      end
      object Label4: TLabel
        Left = 72
        Top = 126
        Width = 22
        Height = 16
        Caption = 'REF'
        FocusControl = DBEdit3
      end
      object Label5: TLabel
        Left = 262
        Top = 126
        Width = 68
        Height = 16
        Caption = 'Pre'#231'o Custo'
        FocusControl = DBEdit4
      end
      object Label6: TLabel
        Left = 400
        Top = 126
        Width = 72
        Height = 16
        Caption = 'Pre'#231'o Venda'
        FocusControl = DBEdit5
      end
      object Label7: TLabel
        Left = 72
        Top = 186
        Width = 81
        Height = 16
        Caption = 'Data Cadastro'
        FocusControl = DBEdit6
      end
      object Label8: TLabel
        Left = 262
        Top = 186
        Width = 76
        Height = 16
        Caption = 'Qtda Estoque'
        FocusControl = DBEdit7
      end
      object btn_novo: TSpeedButton
        Left = 120
        Top = 360
        Width = 100
        Height = 40
        Action = ac_insert
      end
      object btn_editar: TSpeedButton
        Left = 226
        Top = 360
        Width = 100
        Height = 40
        Action = ac_editar
      end
      object btn_ok: TSpeedButton
        Left = 332
        Top = 360
        Width = 100
        Height = 40
        Action = ac_ok
      end
      object btn_cancelar: TSpeedButton
        Left = 438
        Top = 360
        Width = 100
        Height = 40
        Action = ac_cancelar
      end
      object btn_delete: TSpeedButton
        Left = 544
        Top = 360
        Width = 100
        Height = 40
        Action = ac_delete
      end
      object btn_gerarBarras: TSpeedButton
        Left = 235
        Top = 96
        Width = 137
        Height = 24
        Caption = 'Gerar Barras V'#225'lido'
        OnClick = btn_gerarBarrasClick
      end
      object DBEdit1: TDBEdit
        Left = 72
        Top = 48
        Width = 300
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_descricao'
        DataSource = ds_produtos_cad
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 72
        Top = 96
        Width = 150
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_barras'
        DataSource = ds_produtos_cad
        TabOrder = 1
      end
      object DBEdit3: TDBEdit
        Left = 70
        Top = 148
        Width = 150
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_ref'
        DataSource = ds_produtos_cad
        TabOrder = 2
      end
      object DBEdit4: TDBEdit
        Left = 262
        Top = 148
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_custo'
        DataSource = ds_produtos_cad
        TabOrder = 3
      end
      object DBEdit5: TDBEdit
        Left = 398
        Top = 148
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_preco'
        DataSource = ds_produtos_cad
        TabOrder = 4
      end
      object DBEdit6: TDBEdit
        Left = 72
        Top = 208
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_data_cad'
        DataSource = ds_produtos_cad
        TabOrder = 5
      end
      object DBEdit7: TDBEdit
        Left = 262
        Top = 208
        Width = 100
        Height = 24
        CharCase = ecUpperCase
        DataField = 'pro_estoque'
        DataSource = ds_produtos_cad
        TabOrder = 6
      end
    end
  end
  object ds_produtos_cad: TDataSource
    DataSet = dm.TB_produtos
    Left = 40
    Top = 408
  end
  object acm_produtos: TActionManager
    Left = 36
    Top = 355
    StyleName = 'Platform Default'
    object Action2: TAction
      Caption = 'Action2'
    end
    object ac_insert: TDataSetInsert
      Category = 'Dataset'
      Caption = 'Novo'
      Hint = 'Insert'
      ImageIndex = 4
      DataSource = ds_produtos_cad
    end
    object ac_delete: TDataSetDelete
      Category = 'Dataset'
      Caption = 'Apagar'
      Hint = 'Delete'
      ImageIndex = 5
      DataSource = ds_produtos_cad
    end
    object ac_editar: TDataSetEdit
      Category = 'Dataset'
      Caption = 'Editar'
      Hint = 'Edit'
      ImageIndex = 6
      DataSource = ds_produtos_cad
    end
    object ac_ok: TDataSetPost
      Category = 'Dataset'
      Caption = 'Gravar'
      Hint = 'Post'
      ImageIndex = 7
      DataSource = ds_produtos_cad
    end
    object ac_cancelar: TDataSetCancel
      Category = 'Dataset'
      Caption = 'Cancelar'
      Hint = 'Cancel'
      ImageIndex = 8
      DataSource = ds_produtos_cad
    end
  end
end
