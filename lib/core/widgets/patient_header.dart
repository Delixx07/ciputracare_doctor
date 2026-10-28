import 'package:flutter/material.dart';

import '../../data/models/header_pasien.dart';
import '../format/vital.dart';
import '../theme/app_colors.dart';
import '../theme/app_spacing.dart';
import '../theme/app_text.dart';
import 'status_chip.dart';
import 'triage_tile.dart';
import 'value_text.dart';

/// Header pasien di semua tab halaman pasien: alergi, triage, EWS, ringkasan vital.
/// Ringkas secara default; "Detail" membuka semua vital + jam datang + penjamin.
class PatientHeader extends StatefulWidget {
  const PatientHeader({super.key, required this.header, this.terbuka = false});

  final HeaderPasien header;

  /// Kondisi awal (untuk pratinjau/test).
  final bool terbuka;

  @override
  State<PatientHeader> createState() => _PatientHeaderState();
}

class _PatientHeaderState extends State<PatientHeader> {
  late bool _terbuka = widget.terbuka;

  @override
  Widget build(BuildContext context) {
    final h = widget.header;
    final vital = h.vital;
    final abnormal = [
      for (final label in vital.abnormal)
        if (vital.nilai[label] != null) (label, vital.nilai[label]!),
    ];

    return Container(
      color: context.warna.surfaceRaised,
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, 0, AppSpacing.s4, AppSpacing.s3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Wrap(
            spacing: AppSpacing.s2,
            runSpacing: AppSpacing.s2,
            children: [
              _chipAlergi(h.alergi),
              StatusChip(h.triage, tone: triageTone(_angka(h.triage) ?? 5)),
              StatusChip('EWS ${h.ews}', tone: _toneEws(h.ews)),
            ],
          ),
          const SizedBox(height: AppSpacing.s3),
          Container(
            decoration: BoxDecoration(color: context.warna.surfaceSunken, borderRadius: BorderRadius.all(AppRadius.md)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _barisRingkas(vital.jam, abnormal),
                AnimatedSize(
                  duration: const Duration(milliseconds: 200),
                  alignment: Alignment.topCenter,
                  child: _terbuka ? _detail(h) : const SizedBox(width: double.infinity),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _chipAlergi(String? alergi) => alergi == null || alergi.trim().isEmpty
      ? const StatusChip('Tidak ada alergi tercatat')
      : StatusChip(alergi, tone: ChipTone.danger, icon: Icons.warning_amber_rounded);

  Widget _barisRingkas(String jam, List<(String, String)> abnormal) {
    return Padding(
      padding: const EdgeInsets.only(left: AppSpacing.s3),
      child: Row(
        children: [
          Text('Vital $jam', style: context.teks.caption),
          const SizedBox(width: AppSpacing.s2),
          Expanded(
            child: abnormal.isEmpty
                ? Text('Dalam batas normal', style: context.teks.caption.copyWith(color: context.warna.ink))
                : Text.rich(
                    TextSpan(
                      children: [
                        for (var i = 0; i < abnormal.length; i++) ...[
                          if (i > 0) TextSpan(text: ' · ', style: context.teks.caption),
                          _spanAbnormal(abnormal[i].$1, abnormal[i].$2),
                        ],
                      ],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
          ),
          TextButton(
            onPressed: () => setState(() => _terbuka = !_terbuka),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(_terbuka ? 'Tutup' : 'Detail'),
                Icon(_terbuka ? Icons.expand_less : Icons.expand_more, size: AppSize.iconSm + AppSpacing.s1),
              ],
            ),
          ),
        ],
      ),
    );
  }

  TextSpan _spanAbnormal(String label, String nilai) {
    final status = statusVital(label, nilai, abnormal: true);
    final style = context.teks.caption.copyWith(color: status.warna(context.warna), fontWeight: FontWeight.w700);
    return TextSpan(text: [labelVital(label), nilai, ?status.arrow].join(' '), style: style);
  }

  Widget _detail(HeaderPasien h) {
    final entri = h.vital.nilai.entries.toList();
    const kolom = 4;
    return Padding(
      padding: const EdgeInsets.fromLTRB(AppSpacing.s2, 0, AppSpacing.s2, AppSpacing.s3),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < entri.length; i += kolom)
            Padding(
              padding: const EdgeInsets.only(bottom: AppSpacing.s3),
              child: Row(
                children: [
                  for (var j = i; j < i + kolom; j++)
                    Expanded(
                      child: j < entri.length
                          ? _selVital(entri[j].key, entri[j].value, h.vital.isAbnormal(entri[j].key))
                          : const SizedBox(),
                    ),
                ],
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.s1),
            child: Text('Datang ${h.datang} · ${h.penjamin}', style: context.teks.caption),
          ),
        ],
      ),
    );
  }

  Widget _selVital(String label, String nilai, bool abnormal) {
    return Column(
      children: [
        Text(labelVital(label), style: context.teks.caption),
        ValueText(nilai, status: statusVital(label, nilai, abnormal: abnormal)),
      ],
    );
  }

  /// NEWS2: 0–4 rendah, 5–6 sedang, ≥7 tinggi.
  static ChipTone _toneEws(int ews) => ews >= 7
      ? ChipTone.danger
      : ews >= 5
      ? ChipTone.warn
      : ChipTone.neutral;

  static int? _angka(String s) => int.tryParse(RegExp(r'\d+').firstMatch(s)?[0] ?? '');
}
