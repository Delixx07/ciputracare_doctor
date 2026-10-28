import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../data/providers.dart';
import '../features/auth/auth_controller.dart';
import '../features/auth/pin_page.dart';
import 'router.dart';
import 'routes.dart';

/// Batas tidak aktif sebelum sesi dikunci.
final batasTidakAktifProvider = Provider<Duration>((ref) => const Duration(minutes: 5));

/// Jam sekarang (bisa diganti di test).
final jamProvider = Provider<DateTime Function()>((ref) => DateTime.now);

/// Membungkus seluruh aplikasi:
/// - mengunci sesi setelah [batasTidakAktifProvider] tanpa sentuhan, atau setelah selama itu di latar belakang;
/// - menampilkan PIN di atas layar terakhir saat terkunci (navigasi tidak hilang);
/// - menyalakan FLAG_SECURE selama dokter masuk.
class KunciSesi extends ConsumerStatefulWidget {
  const KunciSesi({super.key, required this.child});

  final Widget child;

  @override
  ConsumerState<KunciSesi> createState() => _KunciSesiState();
}

class _KunciSesiState extends ConsumerState<KunciSesi> with WidgetsBindingObserver {
  Timer? _timer;
  DateTime? _keLatar;

  bool get _aktif {
    final a = ref.read(authControllerProvider);
    return a.status == AuthStatus.masuk && !a.sesiTerkunci;
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      _aturLayarAman(ref.read(authControllerProvider));
      _mulaiTimer();
    });
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    _timer?.cancel();
    super.dispose();
  }

  void _mulaiTimer() {
    _timer?.cancel();
    if (!_aktif) return;
    _timer = Timer(ref.read(batasTidakAktifProvider), _kunci);
  }

  void _kunci() => ref.read(authControllerProvider.notifier).kunci();

  void _aturLayarAman(AuthState a) => ref.read(layarAmanProvider).atur(aman: a.status == AuthStatus.masuk);

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.paused || AppLifecycleState.hidden:
        _keLatar ??= ref.read(jamProvider)();
        _timer?.cancel();
      case AppLifecycleState.resumed:
        final sejak = _keLatar;
        _keLatar = null;
        if (sejak != null && _aktif && ref.read(jamProvider)().difference(sejak) >= ref.read(batasTidakAktifProvider)) {
          _kunci();
        } else {
          _mulaiTimer();
        }
      case AppLifecycleState.inactive || AppLifecycleState.detached:
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(authControllerProvider, (prev, next) {
      if (prev?.status != next.status) _aturLayarAman(next);
      if (prev?.status != next.status || prev?.sesiTerkunci != next.sesiTerkunci) _mulaiTimer();
    });
    final terkunci = ref.watch(authControllerProvider.select((a) => a.sesiTerkunci));

    return Listener(
      behavior: HitTestBehavior.translucent,
      onPointerDown: (_) => _mulaiTimer(),
      child: Stack(
        children: [
          // Layar terakhir tetap hidup di bawah, tapi tidak bisa disentuh / dibaca pembaca layar.
          ExcludeSemantics(
            excluding: terkunci,
            child: AbsorbPointer(absorbing: terkunci, child: widget.child),
          ),
          if (terkunci)
            Positioned.fill(
              child: Overlay(
                key: const ValueKey('kunci-sesi'),
                initialEntries: [
                  OverlayEntry(
                    builder: (context) => PinPage(
                      onPakaiKataSandi: () {
                        ref.read(authControllerProvider.notifier).pakaiKataSandi();
                        ref.read(routerProvider).go(Routes.login);
                      },
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
