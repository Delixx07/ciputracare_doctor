import 'package:flutter/material.dart';

import '../../../core/format/vital.dart';
import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';
import '../../../core/widgets/widgets.dart';
import '../../../data/models/kajian_awal.dart';
import 'bagian_kajian.dart';

/// Isi satu bagian kajian awal (tampilan baca).
class BagianView extends StatelessWidget {
  const BagianView({super.key, required this.bagian, required this.kajian});

  final BagianKajian bagian;
  final KajianAwal kajian;

  @override
  Widget build(BuildContext context) {
    final isi = switch (bagian) {
      BagianKajian.anamnesa => _anamnesa(kajian.anamnesa),
      BagianKajian.perawat => _perawat(kajian.pengkajianPerawat),
      BagianKajian.riwayat => _riwayat(kajian.riwayat),
      BagianKajian.pemeriksaan => _pemeriksaan(kajian.pemeriksaan),
      BagianKajian.assessment => _assessment(kajian.assessment),
      BagianKajian.planning => [_PlanningView(kajian.planning)],
    };
    return ListView(
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
      children: isi,
    );
  }

  // 1. Anamnesa

  List<Widget> _anamnesa(Anamnesa a) => [
    _Kartu(
      children: [
        Row(
          children: [
            Expanded(
              child: InfoRow(label: 'Tanggal & jam', value: a.tanggalJam),
            ),
            Expanded(
              child: InfoRow(label: 'Jenis kunjungan', value: a.jenisKunjungan),
            ),
          ],
        ),
        InfoRow(label: 'Sumber anamnesa', value: a.sumber),
      ],
    ),
    const _Jarak(),
    _Kartu(
      children: [
        InfoRow(label: 'Keluhan utama', value: a.keluhanUtama),
        InfoRow(label: 'Riwayat penyakit sekarang', value: a.rps),
      ],
    ),
    const _Jarak(),
    _Kartu(
      children: [
        Row(
          children: [
            Expanded(
              child: InfoRow(label: 'Keadaan datang', value: a.keadaanDatang),
            ),
            Expanded(
              child: InfoRow(label: 'Alasan kunjungan', value: a.alasanKunjungan),
            ),
          ],
        ),
        InfoRow(label: 'Fast track', value: a.fastTrack ? 'Ya · kasus ringan, alur cepat tanpa bed' : 'Tidak'),
      ],
    ),
  ];

  // 2. Pengkajian perawat

  static const _hurufAbcde = {'Airway': 'A', 'Breathing': 'B', 'Circulation': 'C', 'Disability': 'D', 'Exposure': 'E'};

  List<Widget> _perawat(PengkajianPerawat p) => [
    _Info(icon: Icons.person_outline, teks: 'Diisi ${p.oleh}'),
    const _Jarak(),
    _Kartu(
      children: [
        Row(
          children: [
            Expanded(
              child: InfoRow(label: 'Cara datang', value: p.caraDatang),
            ),
            Expanded(
              child: InfoRow(label: 'Rujukan', value: p.rujukan),
            ),
          ],
        ),
      ],
    ),
    const _Jarak(),
    SectionTitle(
      'Primary survey (ABCDE)',
      trailing: p.abnormal.isEmpty ? 'semua normal' : '${p.abnormal.length} abnormal',
    ),
    const SizedBox(height: AppSpacing.s3),
    ListCard(
      children: [
        for (final e in p.abcde.entries)
          ListCardItem(
            leading: _Huruf(_hurufAbcde[e.key] ?? e.key[0]),
            title: e.key == 'Disability' ? 'Disability (AVPU)' : e.key,
            trailing: p.isAbnormal(e.key)
                ? StatusChip(e.value, tone: ChipTone.warn, icon: Icons.warning_amber_rounded)
                : Text(e.value, style: AppText.body),
          ),
      ],
    ),
  ];

  // 3. Riwayat

  List<Widget> _riwayat(Riwayat r) => [
    const SectionTitle('Riwayat penyakit dahulu'),
    const SizedBox(height: AppSpacing.s3),
    _Kartu(
      children: [
        if (r.penyakitDahulu.isEmpty)
          Text('Tidak ada', style: AppText.body)
        else
          Wrap(
            spacing: AppSpacing.s2,
            runSpacing: AppSpacing.s2,
            children: [for (final p in r.penyakitDahulu) StatusChip(p, tone: ChipTone.info)],
          ),
        if (r.catatan != null && r.catatan!.isNotEmpty) Text(r.catatan!, style: AppText.body),
      ],
    ),
    const _Jarak(),
    const SectionTitle('Riwayat penggunaan obat'),
    const SizedBox(height: AppSpacing.s3),
    ListCard(
      children: r.obat.isEmpty
          ? [const ListCardItem(title: 'Tidak ada obat rutin')]
          : [
              for (final o in r.obat)
                ListCardItem(
                  title: o.nama,
                  subtitle: o.aturan,
                  trailing: o.terakhir == null ? null : Text('terakhir ${o.terakhir}', style: AppText.caption),
                ),
            ],
    ),
    const _Jarak(),
    const SectionTitle('Riwayat alergi'),
    const SizedBox(height: AppSpacing.s3),
    if (r.alergi.isEmpty)
      const ListCard(children: [ListCardItem(title: 'Tidak ada alergi tercatat')])
    else
      for (final a in r.alergi) _KartuAlergi(a),
  ];

  // 4. Pemeriksaan

  List<Widget> _pemeriksaan(Pemeriksaan p) => [
    const SectionTitle('Tanda vital'),
    const SizedBox(height: AppSpacing.s3),
    _GridVital(p.vital),
    const _Jarak(),
    SectionTitle(
      'Pemeriksaan fisik',
      trailing: p.fisikAbnormal.isEmpty ? 'semua normal' : '${p.fisikAbnormal.length} abnormal',
    ),
    const SizedBox(height: AppSpacing.s3),
    ListCard(
      children: [
        for (final f in p.fisikAbnormal)
          Padding(
            padding: const EdgeInsets.all(AppSpacing.s4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(child: Text(f.sistem, style: AppText.bodyStrong)),
                    const StatusChip('Abnormal', tone: ChipTone.warn),
                  ],
                ),
                const SizedBox(height: AppSpacing.s1),
                Text(f.temuan, style: AppText.body),
              ],
            ),
          ),
        ListCardItem(
          title: p.fisikAbnormal.isEmpty ? 'Semua sistem' : 'Sistem lain',
          trailing: Text('Normal', style: AppText.body),
        ),
      ],
    ),
    if (p.mst != null) ...[
      const _Jarak(),
      const SectionTitle('Skrining gizi (MST)'),
      const SizedBox(height: AppSpacing.s3),
      ListCard(
        children: [
          ListCardItem(
            title: 'Skor ${p.mst!.skor}',
            subtitle: 'Skor ≥ 2 berarti berisiko malnutrisi',
            trailing: StatusChip(p.mst!.kesimpulan, tone: p.mst!.skor >= 2 ? ChipTone.warn : ChipTone.success),
          ),
        ],
      ),
    ],
  ];

  // 5. Assessment

  List<Widget> _assessment(Assessment a) => [
    const SectionTitle('Diagnosa · ICD-10'),
    const SizedBox(height: AppSpacing.s3),
    ListCard(
      children: a.diagnosa.isEmpty
          ? [const ListCardItem(title: 'Belum ada diagnosa')]
          : [for (final d in a.diagnosa) ListCardItem(leading: CodeBadge(d.kode), title: d.nama, subtitle: d.tipe)],
    ),
    const _Jarak(),
    const SectionTitle('Prosedur / tindakan · ICD-9-CM'),
    const SizedBox(height: AppSpacing.s3),
    ListCard(
      children: a.prosedur.isEmpty
          ? [const ListCardItem(title: 'Belum ada prosedur')]
          : [for (final p in a.prosedur) ListCardItem(leading: CodeBadge(p.kode), title: p.nama)],
    ),
  ];
}

class _PlanningView extends StatefulWidget {
  const _PlanningView(this.planning);

  final Planning planning;

  @override
  State<_PlanningView> createState() => _PlanningViewState();
}

class _PlanningViewState extends State<_PlanningView> {
  int _tab = 0;

  @override
  Widget build(BuildContext context) {
    final p = widget.planning;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SegmentedTabs(
          segmen: [
            (label: 'Terapi', count: null),
            (label: 'Instruksi', count: p.instruksi.length),
            (label: 'Resep & order', count: p.resepOrder.length),
          ],
          selected: _tab,
          onChanged: (i) => setState(() => _tab = i),
        ),
        const SizedBox(height: AppSpacing.s4),
        switch (_tab) {
          0 => _Kartu(
            children: [InfoRow(label: 'Catatan tindakan / terapi', value: p.terapi)],
          ),
          1 => _Daftar(p.instruksi, kosong: 'Tidak ada instruksi'),
          _ => _Daftar(p.resepOrder, kosong: 'Tidak ada resep atau order'),
        },
      ],
    );
  }
}

class _Daftar extends StatelessWidget {
  const _Daftar(this.isi, {required this.kosong});

  final List<String> isi;
  final String kosong;

  @override
  Widget build(BuildContext context) {
    return ListCard(
      children: isi.isEmpty
          ? [ListCardItem(title: kosong)]
          : [for (var i = 0; i < isi.length; i++) ListCardItem(leading: _Huruf('${i + 1}'), title: isi[i])],
    );
  }
}

class _GridVital extends StatelessWidget {
  const _GridVital(this.vital);

  final Map<String, String> vital;

  @override
  Widget build(BuildContext context) {
    final entri = vital.entries.toList();
    const kolom = 4;
    return Column(
      children: [
        for (var i = 0; i < entri.length; i += kolom)
          Padding(
            padding: const EdgeInsets.only(bottom: AppSpacing.s2),
            child: Row(
              children: [
                for (var j = i; j < i + kolom; j++) ...[
                  if (j > i) const SizedBox(width: AppSpacing.s2),
                  Expanded(child: j < entri.length ? _SelVital(entri[j].key, entri[j].value) : const SizedBox()),
                ],
              ],
            ),
          ),
      ],
    );
  }
}

class _SelVital extends StatelessWidget {
  const _SelVital(this.label, this.nilai);

  final String label;
  final String nilai;

  @override
  Widget build(BuildContext context) {
    final status = statusVitalRentang(label, nilai);
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s2),
      decoration: BoxDecoration(
        color: status.isAbnormal ? AppColors.dangerSoft : AppColors.surfaceRaised,
        borderRadius: const BorderRadius.all(AppRadius.md),
        border: Border.all(color: status.isAbnormal ? AppColors.dangerSoft : AppColors.line),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: AppText.small, maxLines: 1, overflow: TextOverflow.ellipsis),
          ValueText(nilai, status: status),
        ],
      ),
    );
  }
}

class _KartuAlergi extends StatelessWidget {
  const _KartuAlergi(this.alergi);

  final Alergi alergi;

  @override
  Widget build(BuildContext context) {
    final detail = [?alergi.reaksi, ?alergi.keparahan, if (alergi.dicatat != null) 'dicatat ${alergi.dicatat}'];
    return Container(
      margin: const EdgeInsets.only(bottom: AppSpacing.s2),
      padding: const EdgeInsets.all(AppSpacing.s4),
      decoration: const BoxDecoration(color: AppColors.dangerSoft, borderRadius: BorderRadius.all(AppRadius.lg)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning_amber_rounded, color: AppColors.danger, size: AppSize.icon),
          const SizedBox(width: AppSpacing.s3),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${alergi.jenis} · ${alergi.nama}',
                  style: AppText.bodyStrong.copyWith(color: AppColors.dangerStrong),
                ),
                if (detail.isNotEmpty)
                  Text(detail.join(' · '), style: AppText.caption.copyWith(color: AppColors.danger)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// Kartu putih berisi beberapa isian baca.
class _Kartu extends StatelessWidget {
  const _Kartu({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return SurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          for (var i = 0; i < children.length; i++) ...[if (i > 0) const SizedBox(height: AppSpacing.s3), children[i]],
        ],
      ),
    );
  }
}

class _Info extends StatelessWidget {
  const _Info({required this.icon, required this.teks});

  final IconData icon;
  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(AppSpacing.s3),
      decoration: const BoxDecoration(color: AppColors.brandSoft, borderRadius: BorderRadius.all(AppRadius.md)),
      child: Row(
        children: [
          Icon(icon, size: AppSize.iconSm + AppSpacing.s1, color: AppColors.brand),
          const SizedBox(width: AppSpacing.s2),
          Expanded(
            child: Text(teks, style: AppText.caption.copyWith(color: AppColors.brandStrong)),
          ),
        ],
      ),
    );
  }
}

/// Huruf/nomor kecil di depan baris (A–E, 1, 2, …).
class _Huruf extends StatelessWidget {
  const _Huruf(this.teks);

  final String teks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.icon,
      height: AppSize.icon,
      alignment: Alignment.center,
      decoration: const BoxDecoration(color: AppColors.surfaceSunken, borderRadius: BorderRadius.all(AppRadius.sm)),
      child: Text(
        teks,
        style: AppText.small.copyWith(color: AppColors.ink, fontWeight: FontWeight.w700),
      ),
    );
  }
}

class _Jarak extends StatelessWidget {
  const _Jarak();

  @override
  Widget build(BuildContext context) => const SizedBox(height: AppSpacing.s6);
}
