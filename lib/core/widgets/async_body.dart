import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'empty_state.dart';
import 'offline_banner.dart';

/// Isi halaman dari data async:
/// - memuat pertama kali → spinner;
/// - gagal tanpa data → keadaan kosong + "Coba lagi";
/// - gagal saat sudah ada data (mis. offline ketika refresh) → data terakhir tetap tampil + [OfflineBanner].
/// [builder] menerima jam data terakhir berhasil dimuat (untuk label "diperbarui HH:mm").
class AsyncBody<T> extends StatefulWidget {
  const AsyncBody({
    super.key,
    required this.value,
    required this.builder,
    required this.judulGalat,
    required this.onRetry,
  });

  final AsyncValue<T> value;
  final Widget Function(T data, DateTime diperbarui) builder;
  final String judulGalat;
  final VoidCallback onRetry;

  @override
  State<AsyncBody<T>> createState() => _AsyncBodyState<T>();
}

class _AsyncBodyState<T> extends State<AsyncBody<T>> {
  Object? _data = _kosong;
  late DateTime _diperbarui = DateTime.now();

  static const _kosong = Object();

  @override
  Widget build(BuildContext context) {
    final v = widget.value;
    if (v.hasValue && !v.isLoading && !v.hasError && !identical(v.value, _data)) {
      _data = v.value;
      _diperbarui = DateTime.now();
    }

    if (v.hasValue) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (v.hasError) OfflineBanner(diperbarui: _diperbarui),
          Expanded(child: widget.builder(v.value as T, _diperbarui)),
        ],
      );
    }
    if (v.hasError) {
      return EmptyState(
        icon: Icons.cloud_off_outlined,
        title: widget.judulGalat,
        message: 'Periksa koneksi lalu coba lagi.',
        onRetry: widget.onRetry,
      );
    }
    return const Center(child: CircularProgressIndicator());
  }
}
