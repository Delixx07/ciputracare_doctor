import 'package:flutter/material.dart';
import '../../../core/widgets/async_body.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../../../core/theme/app_colors.dart';
import '../../../core/theme/app_spacing.dart';
import '../../../core/theme/app_text.dart';
import '../../../data/models/kajian_awal.dart';
import '../../../data/providers.dart';
import 'bagian_kajian.dart';
import 'bagian_views.dart';

/// Satu bagian kajian awal, bisa digeser ke bagian lain. Navigasi bawah: Sebelumnya / Berikutnya.
class KajianDetailPage extends ConsumerStatefulWidget {
  const KajianDetailPage({super.key, required this.noReg, required this.bagianAwal});

  final String noReg;
  final BagianKajian bagianAwal;

  @override
  ConsumerState<KajianDetailPage> createState() => _KajianDetailPageState();
}

class _KajianDetailPageState extends ConsumerState<KajianDetailPage> {
  late final _halaman = PageController(initialPage: widget.bagianAwal.index);
  late BagianKajian _bagian = widget.bagianAwal;

  static const _durasi = Duration(milliseconds: 250);

  @override
  void dispose() {
    _halaman.dispose();
    super.dispose();
  }

  void _ke(int index) => _halaman.animateToPage(index, duration: _durasi, curve: Curves.easeOut);

  @override
  Widget build(BuildContext context) {
    final kajian = ref.watch(kajianAwalProvider(widget.noReg));
    final nama = ref.watch(headerPasienProvider(widget.noReg)).valueOrNull?.nama;
    final total = BagianKajian.values.length;

    return Scaffold(
      backgroundColor: context.warna.canvas,
      appBar: AppBar(
        titleSpacing: context.canPop() ? 0 : AppSpacing.s4,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(_bagian.judul, style: context.teks.title),
            Text(
              ['Kajian awal ${_bagian.nomor}/$total', ?nama].join(' · '),
              style: context.teks.caption,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(AppSpacing.s3),
          child: _Progres(aktif: _bagian.index, total: total),
        ),
      ),
      body: AsyncBody(
        value: kajian,
        judulGalat: 'Gagal memuat kajian awal',
        onRetry: () => ref.invalidate(kajianAwalProvider(widget.noReg)),
        builder: (k, diperbarui) => _isi(k),
      ),
      bottomNavigationBar: _NavBawah(
        bagian: _bagian,
        onSebelumnya: _bagian.index > 0 ? () => _ke(_bagian.index - 1) : null,
        onBerikutnya: _bagian.index < total - 1 ? () => _ke(_bagian.index + 1) : () => Navigator.of(context).pop(),
      ),
    );
  }

  Widget _isi(KajianAwal k) => PageView(
    controller: _halaman,
    onPageChanged: (i) => setState(() => _bagian = BagianKajian.values[i]),
    children: [for (final b in BagianKajian.values) BagianView(bagian: b, kajian: k)],
  );
}

/// Garis progres 6 langkah.
class _Progres extends StatelessWidget {
  const _Progres({required this.aktif, required this.total});

  final int aktif;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: 'Bagian ${aktif + 1} dari $total',
      excludeSemantics: true,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(AppSpacing.s4, 0, AppSpacing.s4, AppSpacing.s2),
        child: Row(
          children: [
            for (var i = 0; i < total; i++) ...[
              if (i > 0) const SizedBox(width: AppSpacing.s1),
              Expanded(
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  height: AppSpacing.s1,
                  decoration: BoxDecoration(
                    color: i <= aktif ? context.warna.brand : context.warna.line,
                    borderRadius: const BorderRadius.all(AppRadius.pill),
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

class _NavBawah extends StatelessWidget {
  const _NavBawah({required this.bagian, required this.onSebelumnya, required this.onBerikutnya});

  final BagianKajian bagian;
  final VoidCallback? onSebelumnya;
  final VoidCallback onBerikutnya;

  @override
  Widget build(BuildContext context) {
    final terakhir = bagian == BagianKajian.values.last;
    return Material(
      color: context.warna.surfaceRaised,
      child: SafeArea(
        top: false,
        child: Container(
          decoration: BoxDecoration(
            border: Border(top: BorderSide(color: context.warna.line)),
          ),
          padding: const EdgeInsets.fromLTRB(AppSpacing.s4, AppSpacing.s3, AppSpacing.s4, AppSpacing.s3),
          child: Row(
            children: [
              Expanded(
                child: FilledButton.tonal(
                  onPressed: onSebelumnya,
                  style: FilledButton.styleFrom(
                    backgroundColor: context.warna.brandSoft,
                    foregroundColor: context.warna.brand,
                  ),
                  child: const Text('Sebelumnya'),
                ),
              ),
              const SizedBox(width: AppSpacing.s3),
              Expanded(
                child: FilledButton(onPressed: onBerikutnya, child: Text(terakhir ? 'Selesai' : 'Berikutnya')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
