# CiputraCare Doctor

Aplikasi mobile (Flutter, Android & iOS) untuk dokter Ciputra Hospital Surabaya **melihat** data pasien dari EMR
Medinfras. **Read-only**: tidak ada tambah/ubah/hapus/simpan/kirim ke Medinfras.

Tahap 1: pasien **IGD** (kajian awal, catatan perkembangan/CPPT, disposisi) dan **hasil laboratorium**.
Aturan proyek: [`CLAUDE.md`](CLAUDE.md) · lingkup & layar: [`docs/RINGKASAN.md`](docs/RINGKASAN.md).

## Menjalankan

```
flutter pub get
dart run build_runner build      # model freezed/json
flutter run
```

Sekarang aplikasi memakai **data contoh fiktif** (`assets/mock/*.json`).

- Masuk: kode dokter `D0412`, kata sandi apa saja (tidak kosong).
- "Ingat perangkat" aktif → buat PIN 6 digit (disimpan lokal, di-hash) → berikutnya buka dengan PIN/biometrik.
- Rekam lengkap hanya ada untuk **Hendra Kusuma** (Bed 2); pasien lain menampilkan "Data pasien belum tersedia".
- Pratinjau widget bersama (mode debug): rute `/dev/widgets`.

## Cek kualitas

```
flutter analyze
flutter test
```

## Struktur

```
lib/
  main.dart               muat sesi tersimpan → MaterialApp.router (+ KunciSesi)
  app/                    router (go_router, penjaga sesi), tab bar, kunci sesi 5 menit, FLAG_SECURE
  core/theme/             warna, huruf, jarak (AppColors, AppText, AppSpacing, AppSize) — jangan hardcode
  core/widgets/           widget bersama (PageHeader, PatientHeader, LabValueRow, AsyncBody, …) + test
  core/format/            tanggal Indonesia, arah nilai vital
  data/models/            model freezed (bentuk mengikuti assets/mock)
  data/repositories/      interface per domain (hanya baca)
  data/mock/              implementasi Mock* yang membaca assets/mock
  data/local/             secure storage (token, PIN hash, preferensi), biometrik, layar aman
  features/               auth, home, igd (daftar, pasien, kajian, catatan, disposisi), lab, notif, profile
```

Semua layar membaca data lewat **repository interface + provider Riverpod** (`lib/data/providers.dart`).
Untuk sumber data asli cukup menambah `Api*Repository` dan mengganti provider; tampilan tidak berubah.

## Keamanan

- Token & PIN (hash + salt) di Keychain/Keystore; **Keluar** menghapus semua data lokal dan cache.
- Sesi terkunci setelah 5 menit tanpa sentuhan / di latar belakang → PIN/biometrik di atas layar terakhir.
- Android: `FLAG_SECURE` selama dokter masuk (blokir screenshot & pratinjau recent apps).
- Yang disimpan lokal hanya: token, PIN hash, preferensi, status "sudah dibaca" notifikasi.

## Sumber data Medinfras (rencana)

- API resmi Medinfras (HMAC-SHA256) baru mencakup pasien, jadwal, appointment, registrasi — belum EMR.
- Database **test** `MS_CHSBY_TEST` punya view yang dibutuhkan (mis. `vConsultVisitEmergency`, `vChiefComplaint`,
  `vPatientVisitNote` untuk CPPT, `vTestOrderHd`, `vLaboratoryResultDt`).
- Rencana: **server perantara** di jaringan RS (hanya GET, akun SQL read-only, log audit akses pasien).
  Aplikasi **tidak pernah** terhubung langsung ke SQL Server atau menyimpan kredensial Medinfras.

## Belum dikerjakan

- `Api*Repository` + server perantara.
- Notifikasi push (FCM/APNs) — termasuk notifikasi lock screen tanpa nama pasien.
- Padanan `FLAG_SECURE` di iOS.
