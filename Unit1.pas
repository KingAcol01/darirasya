unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNama: TEdit;
    edtJamKerja: TEdit;
    edtGajiPokok: TEdit;
    edtBonus: TEdit;
    edtTotalGaji: TEdit;
    btnHitung: TButton;
    btnBersih: TButton;
    btnKeluar: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    procedure btnHitungClick(Sender: TObject);
    procedure btnBersihClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function HitungGajiPokok(JamKerja: Integer): Currency;
    function HitungBonus(JamKerja: Integer): Currency;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

function TForm1.HitungGajiPokok(JamKerja: Integer): Currency;
begin
  // Gaji pokok berdasarkan jam kerja per bulan
  if JamKerja > 60 then
    Result := 8000000
  else if JamKerja > 40 then
    Result := 6000000
  else if JamKerja > 30 then
    Result := 5000000
  else
    Result := 0; // Jika jam kerja <= 30, tidak ada gaji
end;

function TForm1.HitungBonus(JamKerja: Integer): Currency;
begin
  // Bonus 10% dari gaji pokok jika jam kerja > 60
  if JamKerja > 60 then
    Result := HitungGajiPokok(JamKerja) * 0.10
  else
    Result := 0;
end;

procedure TForm1.btnHitungClick(Sender: TObject);
var
  Nama: string;
  JamKerja: Integer;
  GajiPokok, Bonus, TotalGaji: Currency;
begin
  // Validasi input
  if Trim(edtNama.Text) = '' then
  begin
    ShowMessage('Nama pegawai harus diisi!');
    edtNama.SetFocus;
    Exit;
  end;

  if Trim(edtJamKerja.Text) = '' then
  begin
    ShowMessage('Jam kerja harus diisi!');
    edtJamKerja.SetFocus;
    Exit;
  end;

  try
    Nama := edtNama.Text;
    JamKerja := StrToInt(edtJamKerja.Text);

    // Hitung gaji pokok dan bonus
    GajiPokok := HitungGajiPokok(JamKerja);
    Bonus := HitungBonus(JamKerja);
    TotalGaji := GajiPokok + Bonus;

    // Tampilkan hasil
    edtGajiPokok.Text := FormatFloat('#,##0', GajiPokok);
    edtBonus.Text := FormatFloat('#,##0', Bonus);
    edtTotalGaji.Text := FormatFloat('#,##0', TotalGaji);

    // Tampilkan detail di memo
    Memo1.Clear;
    Memo1.Lines.Add('========================================');
    Memo1.Lines.Add('   SISTEM PEMBAYARAN GAJI KARYAWAN');
    Memo1.Lines.Add('   PT. Dellifod Sentosa Corpindo');
    Memo1.Lines.Add('========================================');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('Nama Pegawai    : ' + Nama);
    Memo1.Lines.Add('Jam Kerja/Bulan : ' + IntToStr(JamKerja) + ' jam');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('Gaji Pokok      : Rp. ' + FormatFloat('#,##0', GajiPokok));
    Memo1.Lines.Add('Bonus           : Rp. ' + FormatFloat('#,##0', Bonus));
    Memo1.Lines.Add('----------------------------------------');
    Memo1.Lines.Add('Total Gaji      : Rp. ' + FormatFloat('#,##0', TotalGaji));
    Memo1.Lines.Add('========================================');
    Memo1.Lines.Add('');
    Memo1.Lines.Add('Keterangan:');
    Memo1.Lines.Add('- Jam kerja > 60 jam  : Rp. 8.000.000');
    Memo1.Lines.Add('- Jam kerja > 40 jam  : Rp. 6.000.000');
    Memo1.Lines.Add('- Jam kerja > 30 jam  : Rp. 5.000.000');
    Memo1.Lines.Add('- Bonus 10% untuk jam kerja > 60 jam');

  except
    on E: Exception do
    begin
      ShowMessage('Input tidak valid! Pastikan jam kerja berupa angka.');
      edtJamKerja.SetFocus;
    end;
  end;
end;

procedure TForm1.btnBersihClick(Sender: TObject);
begin
  // Bersihkan semua input
  edtNama.Clear;
  edtJamKerja.Clear;
  edtGajiPokok.Clear;
  edtBonus.Clear;
  edtTotalGaji.Clear;
  Memo1.Clear;
  edtNama.SetFocus;
end;

procedure TForm1.btnKeluarClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin ingin keluar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Application.Terminate;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  // Set read-only untuk field hasil
  edtGajiPokok.ReadOnly := True;
  edtBonus.ReadOnly := True;
  edtTotalGaji.ReadOnly := True;
  edtGajiPokok.Color := clBtnFace;
  edtBonus.Color := clBtnFace;
  edtTotalGaji.Color := clBtnFace;
end;

end.
