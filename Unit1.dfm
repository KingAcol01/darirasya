object Form1: TForm1
  Left = 192
  Top = 107
  Width = 700
  Height = 600
  Caption = 'Sistem Pembayaran Gaji - PT. Dellifod Sentosa Corpindo'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 684
    Height = 562
    Align = alClient
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 24
      Width = 300
      Height = 16
      Caption = 'SISTEM PEMBAYARAN GAJI KARYAWAN'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 72
      Width = 80
      Height = 13
      Caption = 'Nama Pegawai :'
    end
    object Label3: TLabel
      Left = 40
      Top = 104
      Width = 104
      Height = 13
      Caption = 'Jam Kerja (per bulan):'
    end
    object Label4: TLabel
      Left = 40
      Top = 136
      Width = 60
      Height = 13
      Caption = 'Gaji Pokok :'
    end
    object Label5: TLabel
      Left = 40
      Top = 168
      Width = 38
      Height = 13
      Caption = 'Bonus :'
    end
    object edtNama: TEdit
      Left = 176
      Top = 68
      Width = 265
      Height = 21
      TabOrder = 0
    end
    object edtJamKerja: TEdit
      Left = 176
      Top = 100
      Width = 121
      Height = 21
      TabOrder = 1
    end
    object edtGajiPokok: TEdit
      Left = 176
      Top = 132
      Width = 185
      Height = 21
      TabOrder = 2
    end
    object edtBonus: TEdit
      Left = 176
      Top = 164
      Width = 185
      Height = 21
      TabOrder = 3
    end
    object edtTotalGaji: TEdit
      Left = 176
      Top = 196
      Width = 185
      Height = 21
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Label6: TLabel
      Left = 40
      Top = 200
      Width = 56
      Height = 13
      Caption = 'Total Gaji :'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnHitung: TButton
      Left = 40
      Top = 240
      Width = 100
      Height = 33
      Caption = 'HITUNG'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnHitungClick
    end
    object btnBersih: TButton
      Left = 160
      Top = 240
      Width = 100
      Height = 33
      Caption = 'BERSIH'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnBersihClick
    end
    object btnKeluar: TButton
      Left = 280
      Top = 240
      Width = 100
      Height = 33
      Caption = 'KELUAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = btnKeluarClick
    end
    object GroupBox1: TGroupBox
      Left = 40
      Top = 288
      Width = 601
      Height = 257
      Caption = ' Detail Perhitungan '
      TabOrder = 8
      object Memo1: TMemo
        Left = 16
        Top = 24
        Width = 569
        Height = 217
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Courier New'
        Font.Style = []
        ParentFont = False
        ReadOnly = True
        ScrollBars = ssVertical
        TabOrder = 0
      end
    end
  end
end
