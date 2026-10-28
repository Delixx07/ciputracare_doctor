# Starter kit — CiputraCare Doctor (read-only)

Cara pakai:
1. `flutter create ciputracare_doctor` lalu buka foldernya di VS Code.
2. Salin SEMUA isi folder ini ke folder proyek (gabungkan dengan `lib/` dan buat `assets/`, `docs/`).
3. Buka Claude Code di VS Code, lalu ikuti `docs/PROMPT-CLAUDE-CODE.md` dari langkah 0.

Isi:
- `CLAUDE.md` — aturan proyek yang dibaca Claude Code otomatis setiap sesi.
- `docs/RINGKASAN.md` — lingkup, daftar layar + versi read-only, data yang dibutuhkan dari Medinfras.
- `docs/PROMPT-CLAUDE-CODE.md` — urutan perintah untuk membangun aplikasi.
- `docs/screens/` — 22 gambar layar acuan; `docs/semua-layar.png` — semuanya dalam satu gambar.
- `assets/images/logo_full.png`, `logo_icon.png` — logo CiputraCare Doctor.
- `assets/design/tokens.json` — design system (warna, huruf, jarak, radius).
- `assets/mock/*.json` — data contoh FIKTIF.
- `lib/core/theme/` — tema Flutter siap pakai dari tokens.

Catatan: gambar layar dibuat sebelum keputusan read-only. Ikuti gaya visualnya,
tapi hapus semua tombol tulis sesuai tabel di `docs/RINGKASAN.md`.
