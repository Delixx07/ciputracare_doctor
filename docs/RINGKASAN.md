# CiputraCare Doctor — Ringkasan Proyek

## 1. Apa ini
Aplikasi mobile (Flutter, Android & iOS) untuk dokter Ciputra Hospital Surabaya agar bisa **melihat** data
pasien dari EMR **Medinfras** lewat ponsel.

**Aplikasi ini READ-ONLY.** Tidak ada tambah, ubah, hapus, simpan, kirim, atau proses. Semua input tetap
dilakukan di EMR web Medinfras.

Lingkup tahap 1: **pasien IGD (Emergency SOAP)** dan **Hasil laboratorium**.
Kerangka harus siap dipakai untuk rawat inap (`IPR/`) dan rawat jalan (`OPR/`) di tahap berikutnya.

## 2. Pengguna
Dokter IGD dan dokter yang pasiennya ada di IGD (DPJP, konsulen). Login memakai akun Medinfras.

## 3. Daftar layar
Gambar acuan ada di `docs/screens/` (ringkasan: `docs/semua-layar.png`).
**Penting:** gambar dibuat sebelum keputusan read-only. Ikuti **gaya visual**-nya, tetapi terapkan kolom
"Versi read-only" di bawah.

| File gambar | Layar | Versi read-only |
|---|---|---|
| 01-login | Masuk | Tetap. Kode dokter + kata sandi, ingat perangkat, masuk dengan biometrik/PIN. Hapus tombol "contoh kata sandi salah" (hanya untuk demo). |
| 02-lupa-sandi | Lupa kata sandi | Opsional; boleh diganti teks "Hubungi IT RS" karena reset sandi dilakukan di Medinfras. |
| 03-pin | Buka dengan PIN | Tetap (kunci sesi lokal). |
| 04-beranda | Beranda | Tetap. "Perlu tindakan" diganti judul **"Perlu perhatian"** (isinya informasi, bukan aksi). |
| 05-notifikasi | Notifikasi | Tetap. "Tandai dibaca" boleh (status baca disimpan lokal di perangkat, bukan ke Medinfras). |
| 06-profil | Profil | Tetap: info dokter, pengaturan notifikasi & biometrik (lokal), Keluar. |
| 10-daftar-pasien-igd | Daftar pasien IGD | Tetap. Tab Pasien saya / Semua IGD, cari, urut triage lalu jam datang. |
| 11-pasien-tab-kajian-awal | Ringkasan kajian awal | Triage **ditampilkan** (bukan dipilih). Daftar 6 bagian tetap, bisa dibuka. **Hapus** tombol "Order penunjang" dan "Simpan kajian". |
| 14-header-vital-detail | Header pasien (dibuka) | Tetap persis. Dipakai di semua tab halaman pasien. |
| 20-kajian-1-anamnesa | Anamnesa | Ubah dari form menjadi **tampilan baca**: label kecil + isi teks. Hapus tombol simpan; navigasi bawah = "Sebelumnya / Berikutnya". |
| 21-kajian-2-perawat-abcde | Pengkajian perawat | Tampilkan hasil ABCDE sebagai daftar A–E + nilainya. Yang abnormal diberi warna kuning/merah. Tanpa chip pilihan. |
| 22-kajian-3-riwayat | Riwayat & alergi | Tampilan baca. Hapus "+ Tambah". Alergi tetap kartu merah. |
| 23-kajian-4-pemeriksaan | Tanda vital, fisik, MST | Vital = grid angka (abnormal merah). Fisik: tampilkan sistem yang abnormal + temuannya, sisanya "Normal". MST: skor + kesimpulan. |
| 24-kajian-5-assessment | Diagnosa & prosedur | Daftar ICD-10 dan ICD-9-CM saja. Hapus kolom cari dan tombol ×/ubah. |
| 25-kajian-6-planning | Planning | Tampilan baca: terapi, instruksi, resep & order (tab boleh tetap). Hapus "Kutip hasil lab". |
| 12-pasien-tab-catatan | Catatan perkembangan (CPPT) | Daftar CPPT + filter. **Hapus** "+ Catatan perkembangan" dan tombol "Verifikasi". Status verifikasi tetap ditampilkan. |
| 13-pasien-tab-disposisi | Disposisi | Ubah jadi **status disposisi**: sudah/belum, rencana tindak lanjut, ruang, DPJP, penjamin, indikasi, diagnosa kerja. **Hapus** chip pilihan dan tombol "Proses disposisi". |
| 30-lab-masuk | Hasil lab masuk (tab Lab) | Tetap. |
| 31-pasien-tab-hasil-lab | Hasil lab pasien + status order | Tetap. Banner kritis: **hapus** tombol "Konfirmasi", tampilkan status konfirmasi dari Medinfras (mis. "Belum dikonfirmasi" / "Diterima dr. X 08:34"). |
| 32-lab-detail-order | Detail satu order | Tetap. Tombol PDF boleh (hanya melihat). |
| 33-lab-hasil-hari-ini | Semua nilai hari ini | Tetap. **Hapus** "Kutip ke CPPT". |
| 34-lab-tren | Tren parameter | Tetap. **Hapus** "Kutip ke CPPT" dan "Order ulang". |
| (tidak ada) | Tulis catatan perkembangan | **Tidak dibuat.** |

## 4. Navigasi
- Login / PIN → **Beranda** (tidak ada layar pilih unit).
- Tab bar bawah: **Beranda · IGD · Lab · Profil**. Lonceng notifikasi di **kanan atas** header.
- Halaman pasien: header pasien + tab **Kajian awal · Catatan · Hasil lab · Disposisi**.
- Kajian awal: 6 bagian (Anamnesa, Pengkajian perawat, Riwayat, Pemeriksaan, Assessment, Planning),
  pindah bagian dengan tombol Sebelumnya/Berikutnya dan garis progres 6 langkah di atas.

## 5. Prinsip tampilan (keputusan dari review)
1. Dokter tidak suka tampilan ramai. Satu layar = satu fokus.
2. Warna **hanya** untuk hal penting: merah = kritis/alergi, kuning = perlu perhatian, hijau = selesai.
   Nilai normal ditulis hitam biasa.
3. Jangan hilangkan informasi; ringkas lalu sediakan "Detail ▾" (contoh: header pasien → vital lengkap).
4. Untuk daftar panjang, tonjolkan yang abnormal (pemeriksaan fisik, hasil lab "Di luar rujukan").
5. Label bagian huruf biasa tebal 15, bukan HURUF KAPITAL kecil.
6. Tanpa tombol aksi tulis. Tombol yang tersisa hanya untuk navigasi/lihat.

## 6. Data yang dibutuhkan dari Medinfras (API baca / GET)
| Data | Dipakai di |
|---|---|
| Login & profil dokter (kode, nama, unit) | Login, Profil |
| Daftar pasien IGD aktif (+ filter pasien milik dokter) | Daftar pasien, Beranda |
| Header registrasi: identitas, No. RM, bed, jam datang, penjamin, alergi, triage, EWS, vital terakhir | Header pasien |
| Kajian awal IGD (anamnesa, pengkajian perawat/ABCDE, riwayat, pemeriksaan, assessment ICD, planning) | Kajian awal |
| CPPT / catatan perkembangan + status verifikasi | Catatan |
| Disposisi (status, tindak lanjut, ruang, DPJP, diagnosa) | Disposisi |
| Order lab + tahap (dipesan, sampel, diproses, selesai) | Hasil lab |
| Hasil lab per item: nilai, satuan, rujukan, flag, nilai sebelumnya, jam sampel & validasi | Hasil lab, Detail, Tren |
| Nilai kritis + status konfirmasinya | Banner kritis, Beranda, Notifikasi |
| Radiologi & penunjang lain (status + ekspertise) | Tab Radiologi/Lainnya |
| Event untuk notifikasi (hasil kritis, pasien baru, konsul dijawab) | Notifikasi push |

Contoh bentuk data: `assets/mock/pasien_igd.json` dan `assets/mock/rekam_hendra_kusuma.json` (fiktif).

## 7. Non-fungsional
- Keamanan: HTTPS, token di secure storage, kunci sesi setelah 5 menit tidak aktif (PIN/biometrik),
  tidak menyimpan data pasien permanen di perangkat (cache dihapus saat logout), blokir screenshot di
  layar data pasien, notifikasi di lock screen tanpa nama/diagnosis.
- Audit: setiap akses data pasien dicatat di server (siapa, kapan, pasien apa).
- Performa: daftar pasien < 2 detik, pull-to-refresh di semua daftar.
- Offline: tampilkan data terakhir dengan label "diperbarui HH:mm" + indikator offline.

## 8. Hal yang masih perlu dikonfirmasi ke RS / vendor
1. Akses API Medinfras (ada/tidak, format, autentikasi). Tanpa ini aplikasi hanya demo.
2. Akses dari luar jaringan RS (VPN/gateway)?
3. Skala triage yang dipakai (ATS 1–5, ESI, atau warna).
4. Konfirmasi nilai kritis: dilakukan di luar aplikasi (telepon/web)? Aplikasi hanya menampilkan statusnya.
5. Perangkat: ponsel pribadi dokter atau milik RS (MDM)?
