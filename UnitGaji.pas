unit UnitGaji;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormGaji = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edtNama: TEdit;
    edtJamKerja: TEdit;
    edtGaji: TEdit;
    btnHitung: TButton;
    btnUlang: TButton;
    btnKeluar: TButton;
    Panel2: TPanel;
    Label6: TLabel;
    procedure btnHitungClick(Sender: TObject);
    procedure btnUlangClick(Sender: TObject);
    procedure btnKeluarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edtJamKerjaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    function HitungGaji(JamKerja: Integer): Currency;
  public
    { Public declarations }
  end;

var
  FormGaji: TFormGaji;

implementation

{$R *.dfm}

procedure TFormGaji.FormCreate(Sender: TObject);
begin
  edtGaji.ReadOnly := True;
  edtGaji.Color := clBtnFace;
end;

function TFormGaji.HitungGaji(JamKerja: Integer): Currency;
begin
  // Logika perhitungan gaji berdasarkan jam kerja
  if JamKerja > 60 then
    Result := 8000000
  else if JamKerja > 40 then
    Result := 6000000
  else if JamKerja > 30 then
    Result := 5000000
  else
    Result := 0; // Jika jam kerja kurang dari atau sama dengan 30
end;

procedure TFormGaji.btnHitungClick(Sender: TObject);
var
  Nama: string;
  JamKerja: Integer;
  Gaji: Currency;
begin
  // Validasi input nama
  Nama := Trim(edtNama.Text);
  if Nama = '' then
  begin
    ShowMessage('Nama pegawai harus diisi!');
    edtNama.SetFocus;
    Exit;
  end;

  // Validasi input jam kerja
  if Trim(edtJamKerja.Text) = '' then
  begin
    ShowMessage('Jam kerja harus diisi!');
    edtJamKerja.SetFocus;
    Exit;
  end;

  try
    JamKerja := StrToInt(edtJamKerja.Text);

    if JamKerja <= 0 then
    begin
      ShowMessage('Jam kerja harus lebih besar dari 0!');
      edtJamKerja.SetFocus;
      Exit;
    end;

    // Hitung gaji
    Gaji := HitungGaji(JamKerja);

    if Gaji = 0 then
    begin
      ShowMessage('Jam kerja harus lebih dari 30 jam untuk mendapatkan gaji!');
      edtJamKerja.SetFocus;
      Exit;
    end;

    // Tampilkan hasil
    edtGaji.Text := FormatCurr('#,##0', Gaji);

  except
    on E: Exception do
    begin
      ShowMessage('Input jam kerja tidak valid! Masukkan angka yang benar.');
      edtJamKerja.SetFocus;
    end;
  end;
end;

procedure TFormGaji.btnUlangClick(Sender: TObject);
begin
  // Bersihkan semua input
  edtNama.Clear;
  edtJamKerja.Clear;
  edtGaji.Clear;
  edtNama.SetFocus;
end;

procedure TFormGaji.btnKeluarClick(Sender: TObject);
begin
  if MessageDlg('Apakah Anda yakin ingin keluar?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    Close;
end;

procedure TFormGaji.edtJamKerjaKeyPress(Sender: TObject; var Key: Char);
begin
  // Hanya izinkan input angka dan backspace
  if not (Key in ['0'..'9', #8]) then
    Key := #0;
end;

end.
