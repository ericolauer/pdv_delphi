object frm_inicial: Tfrm_inicial
  Left = 0
  Top = 0
  Caption = 'Controle de Vendas'
  ClientHeight = 462
  ClientWidth = 809
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = menu_inicial
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 16
  object stb_inicial: TStatusBar
    Left = 0
    Top = 443
    Width = 809
    Height = 19
    Panels = <>
  end
  object panel_menu: TPanel
    Left = 0
    Top = 0
    Width = 809
    Height = 81
    Align = alTop
    TabOrder = 1
    object btn_clientes: TSpeedButton
      Left = 49
      Top = 8
      Width = 88
      Height = 57
      Caption = 'Clientes'
      Flat = True
      Layout = blGlyphTop
      OnClick = btn_clientesClick
    end
    object btn_produtos: TSpeedButton
      Left = 143
      Top = 8
      Width = 90
      Height = 57
      Caption = 'Produtos'
      Flat = True
      Layout = blGlyphTop
      OnClick = btn_produtosClick
    end
    object btn_pdv: TSpeedButton
      Left = 239
      Top = 8
      Width = 97
      Height = 57
      Caption = 'PDV'
      Flat = True
      Layout = blGlyphTop
    end
  end
  object menu_inicial: TMainMenu
    Left = 672
    Top = 24
    object Sistema1: TMenuItem
      Caption = 'Sistema'
      object Ajustes1: TMenuItem
        Caption = 'Ajustes'
      end
      object Sair1: TMenuItem
        Caption = 'Sair'
      end
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Cadastros1: TMenuItem
      Caption = 'Cadastros e Consultas'
      object Produtos1: TMenuItem
        Caption = 'Produtos'
        OnClick = Produtos1Click
      end
      object Clientes1: TMenuItem
        Caption = 'Clientes'
        OnClick = Clientes1Click
      end
    end
    object N2: TMenuItem
      Caption = '-'
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      object PDV1: TMenuItem
        Caption = 'PDV'
      end
      object Caixa1: TMenuItem
        Caption = 'Caixa'
      end
      object VendasAbertas1: TMenuItem
        Caption = 'Vendas Abertas'
      end
      object N3: TMenuItem
        Caption = '-'
      end
      object ManutendeVendas1: TMenuItem
        Caption = 'Gerenciar Vendas'
      end
      object RelatrioVendas1: TMenuItem
        Caption = 'Relat'#243'rio Vendas'
      end
    end
  end
end
