import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../app/routes.dart';
import '../../core/theme/app_colors.dart';
import '../../core/theme/app_spacing.dart';
import '../../core/theme/app_text.dart';
import '../../core/widgets/widgets.dart';
import '../../data/models/lab.dart';
import '../../data/providers.dart';
import 'lab_format.dart';
import 'order_card.dart';

/// Detail satu order lab: info pengirim/pemeriksa/sampel, tahap, dan nilai tiap item.
class OrderDetailPage extends ConsumerWidget {
  const OrderDetailPage({super.key, required this.noReg, required this.noTrx});

  final String noReg;
  final String noTrx;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lab = ref.watch(labPasienProvider(noReg));
    final nama = ref.watch(headerPasienProvider(noReg)).valueOrNull?.nama;
    final order = lab.valueOrNull?.order.where((o) => o.noTrx == noTrx).firstOrNull;

    return Scaffold(
      backgroundColor: AppColors.canvas,
      appBar: AppBar(
        titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(order?.judul ?? 'Order lab', style: AppText.title, overflow: TextOverflow.ellipsis),
            Text.rich(
              TextSpan(
                style: AppText.caption,
                children: [
                  TextSpan(
                    text: noTrx,
                    style: AppText.data.copyWith(color: AppColors.inkMuted),
                  ),
                  if (nama != null) TextSpan(text: ' · $nama'),
                ],
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
      body: AsyncBody(
        value: lab,
        judulGalat: 'Gagal memuat order',
        onRetry: () => ref.invalidate(labPasienProvider(noReg)),
        builder: (l, diperbarui) => order == null
            ? const EmptyState(icon: Icons.search_off, title: 'Order tidak ditemukan')
            : RefreshIndicator(
                onRefresh: () => ref.refresh(labPasienProvider(noReg).future),
                child: _Isi(noReg: noReg, order: order, lab: l),
              ),
      ),
    );
  }
}

class _Isi extends StatelessWidget {
  const _Isi({required this.noReg, required this.order, required this.lab});

  final String noReg;
  final OrderLab order;
  final LabPasien lab;

  @override
  Widget build(BuildContext context) {
    final o = order;
    final hasil = urutHasil(lab.hasil.where((h) => o.item.contains(h.item)));
    final luar = hasil.where((h) => h.diLuarRujukan).length;

    return ListView(
      physics: const AlwaysScrollableScrollPhysics(),
      padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s4, AppSpacing.s4, AppSpacing.s6),
      children: [
        Container(
          padding: const EdgeInsets.all(AppSpacing.s4),
          decoration: const BoxDecoration(color: AppColors.surfaceSunken, borderRadius: BorderRadius.all(AppRadius.md)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (final (label, nilai) in [('Pengirim', o.pengirim), ('Pemeriksa', o.pemeriksa), ('Sampel', o.sampel)])
                if (nilai != null)
                  Padding(
                    padding: const EdgeInsets.only(bottom: AppSpacing.s1),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: AppSpacing.s8 * 3,
                          child: Text(label, style: AppText.caption),
                        ),
                        Expanded(
                          child: Text(nilai, style: AppText.caption.copyWith(color: AppColors.ink)),
                        ),
                      ],
                    ),
                  ),
            ],
          ),
        ),
        const SizedBox(height: AppSpacing.s5),
        const SectionTitle('Tahap'),
        const SizedBox(height: AppSpacing.s3),
        _Tahapan(order: o),
        const SizedBox(height: AppSpacing.s6),
        SectionTitle(
          'Item pemeriksaan · ${hasil.length}',
          trailing: o.selesai ? (luar == 0 ? 'semua dalam rujukan' : '$luar di luar rujukan') : null,
        ),
        const SizedBox(height: AppSpacing.s3),
        if (hasil.isEmpty)
          EmptyState(
            icon: Icons.hourglass_top,
            title: o.selesai ? 'Belum ada nilai' : 'Hasil belum keluar',
            message: o.selesai ? null : o.status,
          )
        else
          ListCard(
            children: [
              for (final h in hasil)
                LabValueRow(
                  item: h.item,
                  value: h.nilai,
                  unit: h.satuan,
                  rujukan: h.rujukan,
                  sebelumnya: h.sebelumnya,
                  status: statusDariFlag(h.flag),
                  onTap: () => context.push(Routes.labTren(noReg, h.item)),
                ),
            ],
          ),
      ],
    );
  }
}

/// Daftar 4 tahap dengan jam masing-masing.
class _Tahapan extends StatelessWidget {
  const _Tahapan({required this.order});

  final OrderLab order;

  @override
  Widget build(BuildContext context) {
    return SurfaceCard(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TahapBar(order: order),
          const SizedBox(height: AppSpacing.s3),
          Row(
            children: [
              for (var i = 0; i < OrderLab.jumlahTahap; i++)
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        OrderLab.namaTahap[i],
                        style: AppText.small.copyWith(
                          color: i < order.tahap ? AppColors.ink : AppColors.inkMuted,
                          fontWeight: i < order.tahap ? FontWeight.w700 : FontWeight.w500,
                        ),
                      ),
                      Text((i < order.waktu.length ? order.waktu[i] : null) ?? '–', style: AppText.small),
                    ],
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
