import '../../../data/models/kajian_awal.dart';

/// 6 bagian kajian awal IGD, urut sesuai Medinfras.
enum BagianKajian {
  anamnesa('Anamnesa'),
  perawat('Pengkajian perawat'),
  riwayat('Riwayat'),
  pemeriksaan('Pemeriksaan'),
  assessment('Assessment'),
  planning('Planning');

  const BagianKajian(this.judul);

  final String judul;

  /// Nomor 1–6 (dipakai di URL dan "Kajian awal 2/6").
  int get nomor => index + 1;

  static BagianKajian dariNomor(int? n) => values[((n ?? 1) - 1).clamp(0, values.length - 1)];

  /// Judul di daftar ringkasan.
  String get judulDaftar => this == perawat ? 'Pengkajian perawat · ABCDE' : judul;

  /// Bagian sudah berisi data di Medinfras.
  bool lengkap(KajianAwal k) => switch (this) {
    anamnesa => k.anamnesa.keluhanUtama.trim().isNotEmpty,
    perawat => k.pengkajianPerawat.abcde.isNotEmpty,
    riwayat => true, // "tidak ada riwayat" juga isian yang sah
    pemeriksaan => k.pemeriksaan.vital.isNotEmpty,
    assessment => k.assessment.diagnosa.isNotEmpty,
    planning => k.planning.terapi.trim().isNotEmpty,
  };

  /// Satu baris isi bagian untuk daftar ringkasan.
  String ringkasan(KajianAwal k) {
    switch (this) {
      case anamnesa:
        return k.anamnesa.keluhanUtama;
      case perawat:
        final p = k.pengkajianPerawat;
        return ['Diisi ${p.oleh}', if (p.abnormal.isNotEmpty) '${p.abnormal.length} abnormal'].join(' · ');
      case riwayat:
        final r = k.riwayat;
        return [
          r.penyakitDahulu.isEmpty ? 'RPD: tidak ada' : 'RPD: ${r.penyakitDahulu.join(', ')}',
          '${r.obat.length} obat rutin',
          r.alergi.isEmpty ? 'tidak ada alergi' : '${r.alergi.length} alergi',
        ].join(' · ');
      case pemeriksaan:
        final p = k.pemeriksaan;
        return [
          'Tanda vital',
          p.fisikAbnormal.isEmpty ? 'fisik normal' : '${p.fisikAbnormal.map((f) => f.sistem).join(', ')} abnormal',
          if (p.mst != null) 'MST ${p.mst!.skor}',
        ].join(' · ');
      case assessment:
        final d = k.assessment.diagnosa;
        if (d.isEmpty) return 'Diagnosa belum diisi';
        return '${d.first.kode} ${d.first.nama}${d.length > 1 ? ' +${d.length - 1}' : ''}';
      case planning:
        final p = k.planning;
        return '${p.instruksi.length} instruksi · ${p.resepOrder.length} resep & order';
    }
  }
}

/// Nama tingkat triage ATS.
String namaTriage(int level) => switch (level) {
  1 => 'Resusitasi',
  2 => 'Emergensi',
  3 => 'Urgen',
  4 => 'Semi-urgen',
  _ => 'Tidak urgen',
};
