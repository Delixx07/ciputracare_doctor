import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import '../features/auth/auth_controller.dart';
import '../features/auth/login_page.dart';
import '../features/auth/pin_page.dart';
import '../features/dev/widget_preview_page.dart';
import '../features/home/beranda_page.dart';
import '../features/igd/igd_list_page.dart';
import '../features/igd/kajian/bagian_kajian.dart';
import '../features/igd/kajian/kajian_detail_page.dart';
import '../features/igd/pasien_page.dart';
import '../features/lab/hasil_hari_ini_page.dart';
import '../features/lab/lab_page.dart';
import '../features/lab/order_detail_page.dart';
import '../features/lab/tren_page.dart';
import '../features/notif/notifikasi_page.dart';
import '../features/profile/profil_page.dart';
import 'app_shell.dart';
import 'routes.dart';

final routerProvider = Provider<GoRouter>((ref) => buildRouter(ref));

GoRouter buildRouter(Ref ref, {String initialLocation = Routes.beranda}) {
  final refresh = _AuthRefresh(ref);
  final router = GoRouter(
    initialLocation: initialLocation,
    refreshListenable: refresh,
    redirect: (context, state) => authRedirect(ref.read(authControllerProvider), state.matchedLocation),
    routes: [
      GoRoute(path: Routes.login, builder: (context, state) => const LoginPage()),
      GoRoute(path: Routes.pin, builder: (context, state) => const PinPage()),
      GoRoute(
        path: Routes.pinBuat,
        builder: (context, state) => const PinPage(mode: PinMode.buat),
      ),
      StatefulShellRoute.indexedStack(
        builder: (context, state, shell) => AppShell(navigationShell: shell),
        branches: [
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.beranda, builder: (context, state) => const BerandaPage())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.igd, builder: (context, state) => const IgdListPage())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.lab, builder: (context, state) => const LabPage())],
          ),
          StatefulShellBranch(
            routes: [GoRoute(path: Routes.profil, builder: (context, state) => const ProfilPage())],
          ),
        ],
      ),
      // Di luar shell: menutupi tab bar.
      GoRoute(path: Routes.notifikasi, builder: (context, state) => const NotifikasiPage()),
      GoRoute(
        path: '/pasien/:noReg',
        builder: (context, state) => PasienPage(
          noReg: state.pathParameters['noReg']!,
          initialTab: PasienTab.fromKey(state.uri.queryParameters['tab']),
        ),
        routes: [
          GoRoute(
            path: 'kajian/:bagian',
            builder: (context, state) => KajianDetailPage(
              noReg: state.pathParameters['noReg']!,
              bagianAwal: BagianKajian.dariNomor(int.tryParse(state.pathParameters['bagian'] ?? '')),
            ),
          ),
          GoRoute(
            path: 'lab/order/:noTrx',
            builder: (context, state) =>
                OrderDetailPage(noReg: state.pathParameters['noReg']!, noTrx: state.pathParameters['noTrx']!),
          ),
          GoRoute(
            path: 'lab/hari-ini',
            builder: (context, state) => HasilHariIniPage(noReg: state.pathParameters['noReg']!),
          ),
          GoRoute(
            path: 'lab/tren',
            builder: (context, state) =>
                TrenPage(noReg: state.pathParameters['noReg']!, itemAwal: state.uri.queryParameters['item'] ?? 'GDS'),
          ),
        ],
      ),
      if (kDebugMode) GoRoute(path: Routes.devWidgets, builder: (context, state) => const WidgetPreviewPage()),
    ],
  );
  ref.onDispose(() {
    router.dispose();
    refresh.dispose();
  });
  return router;
}

/// Penjaga rute berdasarkan status sesi.
@visibleForTesting
String? authRedirect(AuthState auth, String location) {
  if (kDebugMode && location == Routes.devWidgets) return null;
  const layarMasuk = {Routes.login, Routes.pin, Routes.pinBuat};
  return switch (auth.status) {
    AuthStatus.keluar => location == Routes.login ? null : Routes.login,
    // "Pakai kata sandi" dari layar PIN tetap boleh ke /login.
    AuthStatus.terkunci => location == Routes.pin || location == Routes.login ? null : Routes.pin,
    AuthStatus.masuk when auth.perluBuatPin => location == Routes.pinBuat ? null : Routes.pinBuat,
    AuthStatus.masuk => layarMasuk.contains(location) ? Routes.beranda : null,
  };
}

/// Memberi tahu GoRouter agar menjalankan ulang redirect saat status sesi berubah.
class _AuthRefresh extends ChangeNotifier {
  _AuthRefresh(Ref ref) {
    ref.listen(authControllerProvider, (prev, next) {
      if (prev?.status != next.status || prev?.perluBuatPin != next.perluBuatPin) notifyListeners();
    });
  }
}
