import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../data/providers.dart';

/// ID notifikasi yang sudah dibaca di perangkat ini (lokal, tidak dikirim ke Medinfras).
final notifDibacaProvider = NotifierProvider<NotifDibacaController, Set<String>>(NotifDibacaController.new);

class NotifDibacaController extends Notifier<Set<String>> {
  static const _kunci = 'notif_dibaca';

  @override
  Set<String> build() {
    _muat();
    return const {};
  }

  Future<void> _muat() async {
    final teks = await ref.read(keyValueStoreProvider).read(_kunci);
    if (teks == null) return;
    state = {...state, ...(jsonDecode(teks) as List<dynamic>).cast<String>()};
  }

  Future<void> tandai(Iterable<String> ids) async {
    state = {...state, ...ids};
    await ref.read(keyValueStoreProvider).write(_kunci, jsonEncode(state.toList()));
  }
}

/// Jumlah notifikasi belum dibaca untuk badge lonceng.
final jumlahBelumDibacaProvider = Provider.autoDispose<int>((ref) {
  final notif = ref.watch(notifikasiProvider).valueOrNull ?? const [];
  final dibaca = ref.watch(notifDibacaProvider);
  return notif.where((n) => n.belumDibaca && !dibaca.contains(n.id)).length;
});
