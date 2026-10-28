# Urutan perintah untuk Claude Code

Jalankan satu per satu. Tunggu tiap langkah selesai dan cek di emulator sebelum lanjut.
Di setiap langkah, sebut gambar acuannya dengan @ (contoh: `@docs/screens/04-beranda.png`).

---

**0. Persiapan**
> Baca CLAUDE.md dan docs/RINGKASAN.md. Tambahkan paket yang disebut di CLAUDE.md ke pubspec.yaml,
> daftarkan folder assets/images dan assets/mock, lalu pasang buildAppTheme() dari lib/core/theme/app_theme.dart
> di main.dart. Jalankan flutter analyze.

**1. Model & data contoh**
> Buat model freezed untuk dokter, pasien IGD, header pasien, kajian awal (6 bagian), CPPT, disposisi, order lab,
> hasil lab, tren, notifikasi — mengikuti bentuk assets/mock/*.json. Buat repository interface dan
> Mock*Repository yang membaca JSON tersebut, plus provider Riverpod-nya. Tulis test sederhana yang memastikan
> mock terbaca.

**2. Widget bersama**
> Buat widget di lib/core/widgets: PageHeader (header biru dengan logo, judul, subjudul, lonceng kanan atas),
> SectionTitle, InfoRow (label kecil + isi), ValueText (normal hitam, abnormal berwarna + ▲/▼), StatusChip,
> ListCard, EmptyState, OfflineBanner. Ikuti CLAUDE.md. Buat halaman /dev/widgets untuk pratinjau semuanya.

**3. Navigasi & shell**
> Buat go_router: /login, /pin, lalu shell dengan tab bar Beranda · IGD · Lab · Profil, /notifikasi, dan
> /pasien/:noReg dengan 4 tab. Login dan PIN langsung ke Beranda. Lonceng di header membuka /notifikasi.

**4. Login & PIN** — acuan @docs/screens/01-login.png @docs/screens/03-pin.png

**5. Beranda** — acuan @docs/screens/04-beranda.png
> Judul bagian "Perlu perhatian" (informasi, bukan aksi). Kartu angka pasien IGD dan hasil lab baru, kartu serah terima.

**6. Daftar pasien IGD** — acuan @docs/screens/10-daftar-pasien-igd.png

**7. Header pasien** — acuan @docs/screens/11-pasien-tab-kajian-awal.png dan @docs/screens/14-header-vital-detail.png
> Ringkas secara default, tombol "Detail" membuka 8 vital + jam datang + penjamin.

**8. Kajian awal (read-only)** — acuan @docs/screens/11-pasien-tab-kajian-awal.png dan 20–25
> Ubah semua form di gambar menjadi tampilan baca sesuai tabel di docs/RINGKASAN.md bagian 3.
> Tidak ada tombol simpan. Navigasi Sebelumnya/Berikutnya.

**9. Catatan perkembangan** — acuan @docs/screens/12-pasien-tab-catatan.png (tanpa tombol tambah/verifikasi)

**10. Disposisi (status)** — acuan @docs/screens/13-pasien-tab-disposisi.png (tampilan status, tanpa pilihan & tombol proses)

**11. Lab** — acuan 30–34
> Tab Lab (hasil masuk), tab Hasil lab pasien + status order, detail order, hasil hari ini (filter di luar rujukan),
> tren dengan fl_chart. Tanpa tombol konfirmasi/kutip/order ulang.

**12. Notifikasi & Profil** — acuan @docs/screens/05-notifikasi.png @docs/screens/06-profil.png

**13. Keamanan**
> Kunci sesi 5 menit tidak aktif → PIN/biometrik (local_auth). Hapus cache saat logout. FLAG_SECURE di halaman
> pasien (Android). Pull-to-refresh dan label "diperbarui HH:mm" di semua daftar.

**14. Rapikan**
> Telusuri semua layar, bandingkan dengan docs/screens dan aturan tampilan di CLAUDE.md. Perbaiki yang tidak
> konsisten (ukuran huruf, jarak, warna). flutter analyze dan flutter test harus bersih.

**Nanti, saat API Medinfras tersedia**
> Buat ApiXxxRepository di lib/data/api memakai dio (hanya GET), ganti provider dari Mock ke Api lewat flag
> --dart-define=USE_MOCK=false. Tampilan tidak boleh berubah.
