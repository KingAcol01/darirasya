object FormGaji: TFormGaji
  Left = 250
  Top = 150
  Width = 550
  Height = 450
  Caption = 'Sistem Pembayaran Gaji - PT. Dellifod Sentosa Corpindo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 542
    Height = 423
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 24
      Top = 24
      Width = 494
      Height = 19
      Caption = 'SISTEM PEMBAYARAN GAJI KARYAWAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 24
      Top = 56
      Width = 424
      Height = 16
      Caption = 'PT. Dellifod Sentosa Corpindo - 2000 Karyawan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 40
      Top = 120
      Width = 102
      Height = 13
      Caption = 'Nama Pegawai :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 40
      Top = 160
      Width = 141
      Height = 13
      Caption = 'Jam Kerja (Jam/Bulan) :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 40
      Top = 200
      Width = 83
      Height = 13
      Caption = 'Gaji (Rupiah) :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtNama: TEdit
      Left = 200
      Top = 116
      Width = 300
      Height = 21
      TabOrder = 0
    end
    object edtJamKerja: TEdit
      Left = 200
      Top = 156
      Width = 150
      Height = 21
      TabOrder = 1
      OnKeyPress = edtJamKerjaKeyPress
    end
    object edtGaji: TEdit
      Left = 200
      Top = 196
      Width = 200
      Height = 21
      Color = clBtnFace
      ReadOnly = True
      TabOrder = 2
    end
    object Panel2: TPanel
      Left = 24
      Top = 240
      Width = 494
      Height = 105
      BevelInner = bvRaised
      BevelOuter = bvLowered
      Color = clInfoBk
      TabOrder = 3
      object Label6: TLabel
        Left = 16
        Top = 12
        Width = 106
        Height = 13
        Caption = 'Ketentuan Gaji:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 16
        Top = 32
        Width = 458
        Height = 13
        Caption =
          '1. Jam kerja > 60 jam/bulan = Rp. 8.000.000'
      end
      object Label8: TLabel
        Left = 16
        Top = 52
        Width = 458
        Height = 13
        Caption =
          '2. Jam kerja > 40 jam/bulan = Rp. 6.000.000'
      end
      object Label9: TLabel
        Left = 16
        Top = 72
        Width = 458
        Height = 13
        Caption =
          '3. Jam kerja > 30 jam/bulan = Rp. 5.000.000'
      end
    end
    object btnHitung: TButton
      Left = 120
      Top = 368
      Width = 100
      Height = 35
      Caption = 'HITUNG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnHitungClick
    end
    object btnUlang: TButton
      Left = 240
      Top = 368
      Width = 100
      Height = 35
      Caption = 'ULANG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnUlangClick
    end
    object btnKeluar: TButton
      Left = 360
      Top = 368
      Width = 100
      Height = 35
      Caption = 'KELUAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnKeluarClick
    end
  end
end
