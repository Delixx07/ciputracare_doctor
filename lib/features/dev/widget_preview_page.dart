import 'package:flutter/material.dart';

import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/header_pasien.dart';

/// Pratinjau semua widget bersama (hanya untuk pengembangan, rute /dev/widgets).
/// Isi contoh diambil dari data fiktif Hendra Kusuma.
class WidgetPreviewPage extends StatelessWidget {
  const WidgetPreviewPage({super.key});

  static const _gap = SizedBox(height: AppSpacing.s6);
  static const _titleGap = SizedBox(height: AppSpacing.s3);

  void _info(BuildContext context, String pesan) =>
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(pesan)));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          PageHeader(
            title: 'Pratinjau widget',
            subtitle: 'Rabu, 28 Okt · Shift pagi 07–14',
            badgeCount: 4,
            onNotifikasi: () => _info(context, 'Buka notifikasi'),
          ),
          OfflineBanner(diperbarui: DateTime(2026, 10, 28, 8, 40)),
          Padding(
            padding: const EdgeInsets.all(AppSpacing.s4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SectionTitle('StatusChip', trailing: '5 nada'),
                _titleGap,
                const Wrap(
                  spacing: AppSpacing.s2,
                  runSpacing: AppSpacing.s2,
                  children: [
                    StatusChip(
                      'Alergi obat · nama tidak diingat',
                      tone: ChipTone.danger,
                      icon: Icons.warning_amber_rounded,
                    ),
                    StatusChip('Triage 3', tone: ChipTone.warn),
                    StatusChip('EWS 2'),
                    StatusChip('Terverifikasi', tone: ChipTone.success, icon: Icons.check),
                    StatusChip('Belum diverifikasi', tone: ChipTone.warn, icon: Icons.warning_amber_rounded),
                    StatusChip('CITO', tone: ChipTone.info),
                    StatusChip('Kritis', tone: ChipTone.danger, icon: Icons.warning_amber_rounded, filled: true),
                  ],
                ),
                _gap,
                const SectionTitle('Perlu perhatian'),
                _titleGap,
                ListCard(
                  children: [
                    ListCardItem(
                      leading: const StatusDot(tone: ChipTone.danger),
                      title: 'Nilai kritis · Hendra Kusuma',
                      subtitle: 'Bed 2 · GDS 452 mg/dL',
                      onTap: () => _info(context, 'Buka pasien'),
                    ),
                    ListCardItem(
                      leading: const StatusDot(tone: ChipTone.warn),
                      title: 'Kajian dokter belum diisi',
                      subtitle: 'Kevin Hartono · Bed 3 · triage 2',
                      onTap: () => _info(context, 'Buka pasien'),
                    ),
                    ListCardItem(
                      title: 'Baris tanpa aksi',
                      subtitle: 'Tidak bisa diketuk, tanpa chevron',
                      subtitleColor: context.warna.amber,
                    ),
                  ],
                ),
                _gap,
                const SectionTitle('InfoRow'),
                _titleGap,
                const Row(
                  children: [
                    Expanded(
                      child: InfoRow(label: 'Tanggal & jam', value: '28 Okt 2026 · 07:13'),
                    ),
                    Expanded(
                      child: InfoRow(label: 'No. RM', value: '00-03-17-42', data: true),
                    ),
                  ],
                ),
                const SizedBox(height: AppSpacing.s3),
                const InfoRow(label: 'Keluhan utama', value: 'BAB cair 8× sejak pagi, mual.'),
                _gap,
                const SectionTitle('ValueText', trailing: 'Vital 07:20'),
                _titleGap,
                const Wrap(
                  spacing: AppSpacing.s6,
                  runSpacing: AppSpacing.s3,
                  children: [
                    ValueText('15'),
                    ValueText('156/86', status: ValueStatus.tinggi),
                    ValueText('100'),
                    ValueText('7/10', status: ValueStatus.tinggi),
                    ValueText('3,1', unit: 'mmol/L', status: ValueStatus.rendah),
                  ],
                ),
                _gap,
                const SectionTitle('LabValueRow', trailing: 'Di luar rujukan'),
                _titleGap,
                ListCard(
                  children: [
                    LabValueRow(
                      item: 'GDS',
                      value: '452',
                      unit: 'mg/dL',
                      rujukan: '70–140',
                      sebelumnya: '312',
                      status: ValueStatus.kritis,
                      onTap: () => _info(context, 'Buka tren GDS'),
                    ),
                    const LabValueRow(
                      item: 'HbA1c',
                      value: '9,1',
                      unit: '%',
                      rujukan: '< 5,7',
                      status: ValueStatus.tinggi,
                    ),
                    const LabValueRow(
                      item: 'Kalium',
                      value: '3,1',
                      unit: 'mmol/L',
                      rujukan: '3,5–5,1',
                      sebelumnya: '3,6',
                      status: ValueStatus.rendah,
                    ),
                    const LabValueRow(item: 'SGOT', value: '32', unit: 'U/L', rujukan: '< 40', sebelumnya: '30'),
                  ],
                ),
                _gap,
                const SectionTitle('PatientHeader', trailing: 'ketuk Detail'),
                _titleGap,
                const PatientHeader(
                  header: HeaderPasien(
                    noReg: 'EMR/20261028/00002',
                    noRm: '00-03-17-42',
                    nama: 'Hendra Kusuma',
                    umur: '36 th',
                    jk: 'L',
                    bed: 'Bed 2',
                    datang: '07:12',
                    penjamin: 'Asuransi swasta (Admedika)',
                    alergi: 'Alergi obat · nama tidak diingat',
                    triage: 'Triage 3',
                    ews: 2,
                    vital: VitalTerakhir(
                      jam: '07:20',
                      nilai: {
                        'GCS': '15',
                        'TD': '156/86',
                        'HR': '100',
                        'RR': '20',
                        'Suhu': '36,0',
                        'SpO2': '96',
                        'Nyeri': '7/10',
                        'BMI': '28,1',
                      },
                      abnormal: ['TD', 'Nyeri'],
                    ),
                  ),
                ),
                _gap,
                const SectionTitle('SegmentedTabs · FilterPill'),
                _titleGap,
                SegmentedTabs(
                  segmen: const [(label: 'Pasien saya', count: 3), (label: 'Semua IGD', count: 4)],
                  selected: 0,
                  onChanged: (_) {},
                ),
                const SizedBox(height: AppSpacing.s3),
                Wrap(
                  spacing: AppSpacing.s2,
                  children: [
                    FilterPill(label: 'Semua PPA', count: 2, selected: true, onTap: () {}),
                    FilterPill(label: 'Dokter', count: 1, selected: false, onTap: () {}),
                    FilterPill(label: 'Perawat', count: 1, selected: false, onTap: () {}),
                  ],
                ),
                _gap,
                const SectionTitle('TriageTile · CodeBadge · SurfaceCard'),
                _titleGap,
                const Row(
                  children: [
                    TriageTile(level: 1),
                    SizedBox(width: AppSpacing.s2),
                    TriageTile(level: 3),
                    SizedBox(width: AppSpacing.s2),
                    TriageTile(level: 4),
                    SizedBox(width: AppSpacing.s4),
                    CodeBadge('A09.0'),
                  ],
                ),
                const SizedBox(height: AppSpacing.s3),
                const SurfaceCard(
                  child: InfoRow(label: 'Rencana', value: 'Pengantar rawat inap'),
                ),
                _gap,
                const SectionTitle('EmptyState'),
                _titleGap,
                ListCard(
                  children: [
                    EmptyState(
                      icon: Icons.person_search_outlined,
                      title: 'Data pasien belum tersedia',
                      message: 'Rekam pasien ini tidak ada di data contoh.',
                      onRetry: () => _info(context, 'Muat ulang'),
                    ),
                  ],
                ),
                _gap,
              ],
            ),
          ),
        ],
      ),
    );
  }
}
