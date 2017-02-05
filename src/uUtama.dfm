object FUtama: TFUtama
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Benchmark'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object dbgrd1: TDBGrid
    Left = 401
    Top = 0
    Width = 511
    Height = 441
    Align = alClient
    DataSource = Dm.DsCompare
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 401
    Height = 441
    Align = alLeft
    Caption = 'pnl1'
    TabOrder = 1
    object LstTime: TListBox
      Left = 1
      Top = 177
      Width = 399
      Height = 215
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
    end
    object pnl2: TPanel
      Left = 1
      Top = 1
      Width = 399
      Height = 176
      Align = alTop
      TabOrder = 1
      object BtnJalankan: TButton
        Left = 8
        Top = 112
        Width = 385
        Height = 25
        Caption = 'Jalankan'
        TabOrder = 0
        OnClick = BtnJalankanClick
      end
      object MmQuery: TMemo
        Left = 1
        Top = 1
        Width = 397
        Height = 104
        Align = alTop
        Lines.Strings = (
          'SELECT * FROM barang')
        TabOrder = 1
      end
      object Btn1: TButton
        Left = 8
        Top = 144
        Width = 385
        Height = 25
        Caption = 'Bersihkan'
        TabOrder = 2
        OnClick = Btn1Click
      end
    end
    object pnlTotal: TPanel
      Left = 1
      Top = 392
      Width = 399
      Height = 48
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
  end
end
