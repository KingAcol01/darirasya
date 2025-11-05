# Sistem Pembayaran Gaji - Delphi 7

## Deskripsi
Aplikasi ini adalah sistem pembayaran gaji untuk PT. Dellifod Sentosa Corpindo yang menghitung gaji karyawan berdasarkan jam kerja per bulan dengan ketentuan:

### Ketentuan Gaji:
1. **Jam kerja > 60 jam/bulan** → Gaji Rp. 8.000.000 + Bonus 10%
2. **Jam kerja > 40 jam/bulan** → Gaji Rp. 6.000.000
3. **Jam kerja > 30 jam/bulan** → Gaji Rp. 5.000.000

## Komponen Form

### Input Fields:
- **edtNama** (TEdit) - Input nama pegawai
- **edtJamKerja** (TEdit) - Input jumlah jam kerja per bulan

### Output Fields (Read-Only):
- **edtGajiPokok** (TEdit) - Menampilkan gaji pokok
- **edtBonus** (TEdit) - Menampilkan bonus (jika ada)
- **edtTotalGaji** (TEdit) - Menampilkan total gaji

### Buttons:
- **btnHitung** - Menghitung gaji berdasarkan input
- **btnBersih** - Membersihkan semua field
- **btnKeluar** - Keluar dari aplikasi

### Display:
- **Memo1** (TMemo) - Menampilkan detail perhitungan lengkap

## Fitur Utama

### 1. Perhitungan Otomatis
- Sistem otomatis menghitung gaji pokok berdasarkan jam kerja
- Bonus 10% diberikan otomatis untuk jam kerja > 60 jam

### 2. Validasi Input
- Validasi nama pegawai tidak boleh kosong
- Validasi jam kerja harus berupa angka
- Pesan error yang informatif

### 3. Format Tampilan
- Format currency dengan pemisah ribuan (contoh: 8.000.000)
- Detail perhitungan ditampilkan dalam format yang rapi

### 4. User-Friendly
- Field hasil perhitungan read-only (tidak bisa diedit)
- Konfirmasi sebelum keluar aplikasi
- Tombol bersih untuk reset form

## Cara Menggunakan

1. **Jalankan aplikasi** di Delphi 7
2. **Masukkan nama pegawai** di field "Nama Pegawai"
3. **Masukkan jam kerja** (dalam jam per bulan)
4. **Klik tombol HITUNG** untuk menghitung gaji
5. **Lihat hasil** di field Gaji Pokok, Bonus, dan Total Gaji
6. **Detail perhitungan** akan muncul di area memo
7. **Klik BERSIH** untuk mengulang perhitungan baru
8. **Klik KELUAR** untuk menutup aplikasi

## Struktur File

- **Project1.dpr** - File project utama
- **Unit1.pas** - File unit berisi kode program
- **Unit1.dfm** - File form berisi desain interface

## Contoh Perhitungan

### Contoh 1: Jam Kerja 65 jam
- Gaji Pokok: Rp. 8.000.000
- Bonus (10%): Rp. 800.000
- **Total: Rp. 8.800.000**

### Contoh 2: Jam Kerja 50 jam
- Gaji Pokok: Rp. 6.000.000
- Bonus: Rp. 0
- **Total: Rp. 6.000.000**

### Contoh 3: Jam Kerja 35 jam
- Gaji Pokok: Rp. 5.000.000
- Bonus: Rp. 0
- **Total: Rp. 5.000.000**

## Catatan Teknis

- Menggunakan tipe data **Currency** untuk perhitungan uang (lebih akurat)
- Format angka menggunakan **FormatFloat** dengan pattern '#,##0'
- Validasi input menggunakan **try-except** block
- Event **FormCreate** untuk inisialisasi form

## Screenshot Desain Form

```
┌─────────────────────────────────────────────────────────┐
│  SISTEM PEMBAYARAN GAJI KARYAWAN                        │
│                                                          │
│  Nama Pegawai :     [________________________]          │
│  Jam Kerja    :     [________]                          │
│  Gaji Pokok   :     [________________]                  │
│  Bonus        :     [________________]                  │
│  Total Gaji   :     [________________]                  │
│                                                          │
│  [HITUNG]  [BERSIH]  [KELUAR]                          │
│                                                          │
│  ┌─ Detail Perhitungan ─────────────────────────┐      │
│  │                                                │      │
│  │  (Area Memo untuk menampilkan detail)         │      │
│  │                                                │      │
│  └────────────────────────────────────────────────┘      │
└─────────────────────────────────────────────────────────┘
```

## Pengembangan Lebih Lanjut

Aplikasi ini dapat dikembangkan dengan menambahkan:
- Database untuk menyimpan data karyawan
- Laporan cetak slip gaji
- Perhitungan potongan (pajak, BPJS, dll)
- History pembayaran gaji
- Export ke Excel/PDF
