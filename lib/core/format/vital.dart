import '../widgets/value_text.dart';

/// Status vital yang sudah ditandai abnormal oleh sumber (Medinfras hanya memberi tanda, bukan arah).
/// Arah ditebak dari batas dewasa umum; bila tidak bisa ditentukan → [ValueStatus.abnormal] (tanpa panah).
ValueStatus statusVital(String label, String nilai, {required bool abnormal}) {
  if (!abnormal) return ValueStatus.normal;
  final v = _angka(nilai);
  if (v == null) return ValueStatus.abnormal;
  return _arah(label, v) ?? ValueStatus.abnormal;
}

/// Status vital tanpa tanda dari sumber: dibandingkan langsung dengan batas dewasa.
/// Hanya tanda vital akut; label lain (BB, TB, BMI, EWS) selalu normal.
ValueStatus statusVitalRentang(String label, String nilai) {
  final v = _angka(nilai);
  if (v == null) return ValueStatus.normal;
  final arah = _arah(label, v);
  return arah == null || arah == ValueStatus.abnormal ? ValueStatus.normal : arah;
}

/// Label tampilan: "SpO2" → "SpO₂".
String labelVital(String label) => label.replaceAll('SpO2', 'SpO₂');

double? _angka(String nilai) {
  final m = RegExp(r'\d+(?:[.,]\d+)?').firstMatch(nilai);
  return m == null ? null : double.parse(m[0]!.replaceAll(',', '.'));
}

/// tinggi/rendah bila di luar batas, `null` bila dalam batas, [ValueStatus.abnormal] bila label tidak dikenal.
ValueStatus? _arah(String label, double v) {
  ValueStatus? antara(double bawah, double atas) => v > atas
      ? ValueStatus.tinggi
      : v < bawah
      ? ValueStatus.rendah
      : null;

  return switch (label.toLowerCase()) {
    'td' || 'td sistol' => antara(90, 139),
    'td diastol' => antara(60, 89),
    'hr' || 'nadi' => antara(60, 100),
    'rr' => antara(12, 20),
    'suhu' || 'suhu °c' => antara(36, 37.5),
    'spo2' || 'spo₂ %' || 'spo2 %' => v < 95 ? ValueStatus.rendah : null,
    'nyeri' => v >= 4 ? ValueStatus.tinggi : null,
    'gcs' => v < 15 ? ValueStatus.rendah : null,
    _ => ValueStatus.abnormal,
  };
}
