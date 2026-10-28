import 'package:ciputracare_doctor/app/app_shell.dart';
import 'package:ciputracare_doctor/app/kunci_sesi.dart';
import 'package:ciputracare_doctor/app/router.dart';
import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/data/local/layar_aman.dart';
import 'package:ciputracare_doctor/data/providers.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:ciputracare_doctor/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../helpers.dart';

class _FakeLayarAman implements LayarAman {
  final panggilan = <bool>[];

  @override
  Future<void> atur({required bool aman}) async => panggilan.add(aman);
}

const _batas = Duration(minutes: 5);

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  late DateTime sekarang;
  late _FakeLayarAman layar;
  late MemoryKeyValueStore store;

  Future<ProviderContainer> pasang(WidgetTester tester, {required AuthState auth, String initial = Routes.igd}) async {
    sekarang = DateTime(2026, 10, 28, 9);
    layar = _FakeLayarAman();
    store = MemoryKeyValueStore();
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          routerProvider.overrideWith((ref) => buildRouter(ref, initialLocation: initial)),
          authControllerProvider.overrideWith(() => AuthController(auth)),
          keyValueStoreProvider.overrideWithValue(store),
          biometrikServiceProvider.overrideWithValue(FakeBiometrik()),
          layarAmanProvider.overrideWithValue(layar),
          batasTidakAktifProvider.overrideWithValue(_batas),
          jamProvider.overrideWithValue(() => sekarang),
        ],
        child: const CiputraCareApp(),
      ),
    );
    await settle(tester);
    return ProviderScope.containerOf(tester.element(find.byType(CiputraCareApp)));
  }

  /// Sesi dengan PIN 123456 tersimpan.
  Future<ProviderContainer> pasangDenganPin(WidgetTester tester) async {
    final c = await pasang(tester, auth: const AuthState(), initial: Routes.login);
    final auth = c.read(authControllerProvider.notifier);
    await tester.runAsync(() => auth.masuk('D0412', 'x', ingat: true));
    await settle(tester);
    await tester.runAsync(() => auth.buatPin('123456'));
    await settle(tester);
    await tester.tap(find.text('IGD'));
    await settle(tester);
    return c;
  }

  Future<void> ketikPin(WidgetTester tester, String pin) async {
    for (final d in pin.split('')) {
      await tester.tap(find.text(d).last);
      await tester.pump();
    }
    await settle(tester);
  }

  testWidgets('5 menit tanpa sentuhan → PIN di atas layar terakhir; buka → kembali ke layar yang sama', (tester) async {
    await pasangDenganPin(tester);
    expect(find.text('Pasien IGD'), findsOneWidget);

    await tester.pump(_batas);
    await settle(tester);
    expect(find.text('Masukkan PIN'), findsOneWidget);

    await ketikPin(tester, '123456');
    expect(find.text('Masukkan PIN'), findsNothing);
    expect(find.text('Pasien IGD'), findsOneWidget, reason: 'navigasi tidak hilang');
    expect(find.byType(AppTabBar), findsOneWidget);
  });

  testWidgets('sentuhan mengulang hitungan', (tester) async {
    await pasangDenganPin(tester);
    await tester.pump(const Duration(minutes: 4));
    await tester.tap(find.text('Pasien IGD'));
    await tester.pump(const Duration(minutes: 4));
    await settle(tester);
    expect(find.text('Masukkan PIN'), findsNothing);
    await tester.pump(const Duration(minutes: 1));
    await settle(tester);
    expect(find.text('Masukkan PIN'), findsOneWidget);
  });

  testWidgets('di latar belakang ≥ 5 menit → terkunci saat kembali', (tester) async {
    await pasangDenganPin(tester);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.paused);
    sekarang = sekarang.add(const Duration(minutes: 6));
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.hidden);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.inactive);
    tester.binding.handleAppLifecycleStateChanged(AppLifecycleState.resumed);
    await settle(tester);
    expect(find.text('Masukkan PIN'), findsOneWidget);
  });

  testWidgets('"Pakai kata sandi" dari kunci sesi → layar masuk', (tester) async {
    await pasangDenganPin(tester);
    await tester.pump(_batas);
    await settle(tester);
    await tester.tap(find.text('Pakai kata sandi'));
    await settle(tester);
    expect(find.text('Selamat datang'), findsOneWidget);
    expect(find.text('Masuk dengan biometrik / PIN'), findsOneWidget);
  });

  testWidgets('tanpa PIN: 5 menit tidak aktif → sesi berakhir, pesan di layar masuk', (tester) async {
    await pasang(tester, auth: sesiMasuk);
    await tester.pump(_batas);
    await settle(tester);
    expect(find.text('Selamat datang'), findsOneWidget);
    expect(find.textContaining('tidak aktif'), findsOneWidget);
  });

  testWidgets('FLAG_SECURE menyala selama masuk, mati setelah keluar', (tester) async {
    final c = await pasang(tester, auth: sesiMasuk);
    expect(layar.panggilan.last, isTrue);
    await tester.runAsync(() => c.read(authControllerProvider.notifier).keluar());
    await settle(tester);
    expect(layar.panggilan.last, isFalse);
  });
}
