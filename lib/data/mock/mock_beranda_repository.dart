import '../models/beranda.dart';
import '../models/pasien_igd.dart';
import '../models/rekam_pasien.dart';
import '../repositories/beranda_repository.dart';
import '../repositories/igd_repository.dart';
import 'mock_json_source.dart';

/// Menyusun ringkasan dari data contoh: daftar pasien + rekam yang tersedia.
class MockBerandaRepository implements BerandaRepository {
  MockBerandaRepository(this._source, this._igd);

  final MockJsonSource _source;
  final IgdRepository _igd;

  @override
  Future<RingkasanBeranda> getRingkasan() async {
    final pasien = await _igd.getDaftarPasien();
    final perhatian = <(ItemPerhatian, int)>[]; // (item, triage) untuk urutan
    var labSelesai = 0;
    var labDiproses = 0;

    for (final p in pasien) {
      if (p.statusTone == StatusTone.todo) {
        perhatian.add((
          ItemPerhatian(
            jenis: JenisPerhatian.kajianBelumDiisi,
            noReg: p.noReg,
            judul: 'Kajian dokter belum diisi',
            keterangan: '${p.nama} · ${p.bed} · triage ${p.triage}',
          ),
          p.triage,
        ));
      }

      final rekam = await _rekam(p);
      if (rekam == null) continue;

      final kritis = rekam.lab.nilaiKritis;
      if (kritis != null && kritis.statusKonfirmasi.startsWith('Belum')) {
        perhatian.add((
          ItemPerhatian(
            jenis: JenisPerhatian.nilaiKritis,
            noReg: p.noReg,
            judul: 'Nilai kritis · ${p.nama}',
            keterangan: '${p.bed} · ${kritis.item} ${kritis.nilai}',
          ),
          p.triage,
        ));
      }

      for (final c in rekam.cppt.where((c) => !c.terverifikasi)) {
        final jam = c.waktu.split(', ').last;
        perhatian.add((
          ItemPerhatian(
            jenis: JenisPerhatian.cpptBelumDiverifikasi,
            noReg: p.noReg,
            judul: 'Catatan belum diverifikasi',
            keterangan: '${p.nama} · ${c.ppa.split(' · ').first} · $jam',
          ),
          p.triage,
        ));
      }

      if (p.milikSaya) {
        labSelesai += rekam.lab.order.where((o) => o.selesai).length;
        labDiproses += rekam.lab.order.where((o) => !o.selesai).length;
      }
    }

    // Nilai kritis dulu, lalu triage paling gawat.
    perhatian.sort((a, b) {
      final jenis = a.$1.jenis.index.compareTo(b.$1.jenis.index);
      return jenis != 0 ? jenis : a.$2.compareTo(b.$2);
    });

    return RingkasanBeranda(
      pasienSaya: pasien.where((p) => p.milikSaya).length,
      pasienIgd: pasien.length,
      labSelesai: labSelesai,
      labDiproses: labDiproses,
      perhatian: [for (final (item, _) in perhatian) item],
      serahTerima: _serahTerima((await _source.pasienIgd())['serahTerima'] as String?),
    );
  }

  Future<RekamPasien?> _rekam(PasienIgd p) =>
      MockJsonSource.rekamAssets.containsKey(p.noReg) ? _source.rekam(p.noReg) : Future.value();

  /// "dr. Yohanes (shift malam): 2 pasien ..." → dari + isi.
  static SerahTerima? _serahTerima(String? teks) {
    if (teks == null || teks.isEmpty) return null;
    final i = teks.indexOf(': ');
    return i < 0
        ? SerahTerima(dari: '', isi: teks)
        : SerahTerima(dari: teks.substring(0, i), isi: teks.substring(i + 2));
  }
}
