import '../../data/models/pasien_igd.dart';

/// Saring (pasien saya / semua + kata kunci) lalu urutkan: triage paling gawat, lalu jam datang paling awal.
/// Kata kunci dicocokkan ke nama, No. RM, dan No. registrasi (tanda "-" dan "/" diabaikan).
List<PasienIgd> saringPasien(List<PasienIgd> semua, {required bool hanyaSaya, String kueri = ''}) {
  final q = _normal(kueri);
  final hasil = semua.where((p) {
    if (hanyaSaya && !p.milikSaya) return false;
    if (q.isEmpty) return true;
    return _normal(p.nama).contains(q) || _normal(p.noRm).contains(q) || _normal(p.noReg).contains(q);
  }).toList();
  hasil.sort((a, b) {
    final t = a.triage.compareTo(b.triage);
    return t != 0 ? t : a.datang.compareTo(b.datang);
  });
  return hasil;
}

String _normal(String s) => s.toLowerCase().replaceAll(RegExp(r'[-/\s]'), '');
