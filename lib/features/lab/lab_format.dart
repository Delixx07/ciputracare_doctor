import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/widgets/value_text.dart';
import '../../data/models/lab.dart';

ValueStatus statusDariFlag(LabFlag? flag) => switch (flag) {
  LabFlag.kritis => ValueStatus.kritis,
  LabFlag.tinggi => ValueStatus.tinggi,
  LabFlag.rendah => ValueStatus.rendah,
  null => ValueStatus.normal,
};

/// Hasil diurutkan: kritis dulu, lalu di luar rujukan, lalu normal (urutan asli dipertahankan).
List<HasilLab> urutHasil(Iterable<HasilLab> hasil) {
  int bobot(HasilLab h) => switch (h.flag) {
    LabFlag.kritis => 0,
    LabFlag.tinggi || LabFlag.rendah => 1,
    null => 2,
  };
  final list = hasil.toList();
  final indeks = {for (var i = 0; i < list.length; i++) list[i]: i};
  return list..sort((a, b) {
    final c = bobot(a).compareTo(bobot(b));
    return c != 0 ? c : indeks[a]!.compareTo(indeks[b]!);
  });
}

/// Warna teks status order: belum selesai kuning; selesai dengan temuan merah; selesai normal hijau.
Color warnaStatusOrder(OrderLab o) {
  if (!o.selesai) return AppColors.amber;
  final s = o.status.toLowerCase();
  return s.contains('kritis') || s.contains('luar rujukan') ? AppColors.danger : AppColors.success;
}

/// "Dipesan 08:50 · berikutnya: sampel diambil" / "Selesai 08:31".
String keteranganTahap(OrderLab o) {
  final i = (o.tahap - 1).clamp(0, OrderLab.jumlahTahap - 1);
  final jam = o.waktu.length > i ? o.waktu[i] : null;
  final sekarang = [OrderLab.namaTahap[i], ?jam].join(' ');
  if (o.selesai) return sekarang;
  return '$sekarang · berikutnya: ${OrderLab.namaTahap[i + 1].toLowerCase()}';
}
