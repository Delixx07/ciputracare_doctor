# CiputraCare Doctor — Flutter app (READ-ONLY)

Aplikasi mobile untuk dokter Ciputra Hospital Surabaya: **melihat** data pasien dari EMR Medinfras.
**READ-ONLY:** jangan pernah membuat fitur tambah/ubah/hapus/simpan/kirim/proses ke Medinfras.
Lingkup tahap 1: pasien **IGD** (kajian awal, catatan perkembangan, disposisi) dan **Hasil laboratorium**.

Baca dulu: `docs/RINGKASAN.md` (lingkup, daftar layar + perubahan read-only, data yang dibutuhkan).
Acuan visual: `docs/screens/*.png`. Ikuti gaya visualnya, tetapi terapkan kolom "Versi read-only" di RINGKASAN.

## Prinsip tampilan (WAJIB)
- Tidak ramai. Satu layar satu fokus. Target sentuh ≥ 44.
- Warna hanya untuk hal penting: merah = kritis/alergi, kuning = perlu perhatian, hijau = selesai.
  Nilai normal = `AppColors.ink`. Nilai abnormal = warna + panah ▲/▼.
- Huruf dari `AppText` saja: title 17, section 15 (huruf biasa, bukan KAPITAL), body 15, caption 13, small 12.
- Jarak dari `AppSpacing`: gutter 16, antar bagian 20–24, dalam kartu 12–14.
- Jangan hilangkan informasi; ringkas + "Detail ▾" untuk membuka sisanya.
- Daftar panjang: tonjolkan yang abnormal.
- Jangan hardcode warna/ukuran di widget.

## Struktur
```
lib/
  main.dart
  app/            router (go_router), shell tab bar
  core/theme/     app_colors.dart, app_text.dart, app_spacing.dart, app_theme.dart  (SUDAH ADA)
  core/widgets/   PageHeader (biru), PatientHeader, SectionTitle, InfoRow, StatusChip, ValueText (normal/abnormal),
                  LabValueRow, ListCard, EmptyState, OfflineBanner
  data/models/    freezed models
  data/repositories/  interface (abstract) per domain
  data/mock/      implementasi mock membaca assets/mock/*.json
  data/api/       (nanti) implementasi Medinfras, hanya GET
  features/       auth, home, igd (list, patient, kajian, catatan, disposisi), lab, notif, profile
```
- Paket: flutter_riverpod, go_router, freezed + json_serializable, dio, flutter_secure_storage, local_auth,
  fl_chart, google_fonts, intl.
- Semua UI membaca data lewat repository interface + Riverpod provider. Sekarang pakai Mock*Repository.
- Model data mengikuti bentuk di `assets/mock/rekam_hendra_kusuma.json`.

## Navigasi
- Login / PIN → Beranda. Tidak ada layar pilih unit.
- Tab bar: Beranda · IGD · Lab · Profil. Lonceng notifikasi di kanan atas header (badge).
- Halaman pasien `/pasien/:noReg`: PatientHeader + tab Kajian awal · Catatan · Hasil lab · Disposisi.
- Kajian awal: 6 bagian, tombol bawah Sebelumnya / Berikutnya, garis progres 6 langkah.

## Aturan
- Tidak ada tombol Simpan/Kirim/Proses/Konfirmasi/Tambah/Edit/Hapus. Kalau desain lama punya, hapus.
- Status yang dikelola di Medinfras (verifikasi CPPT, konfirmasi nilai kritis, disposisi) hanya DITAMPILKAN.
- Yang boleh disimpan lokal: token, preferensi (biometrik, notifikasi), status "sudah dibaca" notifikasi.
- Keamanan: kunci sesi 5 menit → PIN/biometrik; hapus cache saat logout; `FLAG_SECURE` di layar data pasien;
  notifikasi lock screen tanpa nama pasien.
- Bahasa UI Indonesia; istilah medis tetap (SOAP, CPPT, DPJP, ABCDE, ICD-10, ICD-9-CM).
- Tanggal/jam format Indonesia: "28 Okt 2026 · 07:13". No. RM / No. registrasi / kode ICD pakai `AppText.data`.

## Cara kerja
- Satu fitur per sesi. Buat rencana dulu, tunggu persetujuan, baru tulis kode.
- Setelah tiap layar: `flutter analyze` harus bersih, lalu bandingkan dengan gambar di `docs/screens/`.
- Tulis widget test untuk widget bersama di `core/widgets/`.

## Perintah
```
flutter pub get
dart run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter run
```
