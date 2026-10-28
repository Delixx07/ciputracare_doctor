import 'package:ciputracare_doctor/app/app_shell.dart';
import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import '../../helpers.dart';

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  void layarPonsel(WidgetTester tester) {
    tester.view.physicalSize = const Size(400, 1200);
    tester.view.devicePixelRatio = 1;
    addTearDown(tester.view.reset);
  }

  const sesiPin = AuthState(status: AuthStatus.masuk, dokter: dokterContoh, punyaPin: true);

  testWidgets('info dokter, notifikasi, saklar; tanpa PIN biometrik nonaktif', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.profil);

    expect(find.text('dr. Andreas Wijaya'), findsWidgets);
    expect(find.text('AW'), findsOneWidget);
    expect(find.text('4 belum dibaca'), findsOneWidget);
    expect(find.text('Hasil lab di luar rujukan'), findsOneWidget);
    expect(find.text('Ubah PIN'), findsNothing);
    final bio = tester.widget<Switch>(
      find.descendant(of: find.widgetWithText(InkWell, 'Masuk dengan biometrik'), matching: find.byType(Switch)),
    );
    expect(bio.onChanged, isNull);
  });

  testWidgets('saklar notifikasi tersimpan lokal', (tester) async {
    layarPonsel(tester);
    final store = MemoryKeyValueStore();
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.profil, store: store);
    await tester.tap(
      find.descendant(of: find.widgetWithText(InkWell, 'Hasil lab di luar rujukan'), matching: find.byType(Switch)),
    );
    await settle(tester);
    expect(store.values['pref_notif_lab'], '0');
  });

  testWidgets('biometrik diaktifkan setelah verifikasi', (tester) async {
    layarPonsel(tester);
    final bio = FakeBiometrik(ada: true);
    final store = MemoryKeyValueStore();
    await pumpApp(tester, auth: sesiPin, initial: Routes.profil, store: store, biometrik: bio);
    await tester.tap(
      find.descendant(of: find.widgetWithText(InkWell, 'Masuk dengan biometrik'), matching: find.byType(Switch)),
    );
    await tester.pump(const Duration(seconds: 1));
    await settle(tester);
    expect(bio.dipanggil, 1);
    expect(store.values['biometrik'], '1');
  });

  testWidgets('Ubah PIN → layar PIN baru; Batal kembali', (tester) async {
    layarPonsel(tester);
    await pumpApp(tester, auth: sesiPin, initial: Routes.profil);
    await tester.tap(find.text('Ubah PIN'));
    await settle(tester);
    expect(find.text('PIN baru'), findsOneWidget);
    await tester.tap(find.text('Batal'));
    await settle(tester);
    expect(find.byType(AppTabBar), findsOneWidget);
  });

  testWidgets('Keluar minta konfirmasi lalu ke layar masuk, data lokal terhapus', (tester) async {
    layarPonsel(tester);
    final store = MemoryKeyValueStore()..values['pref_notif_lab'] = '0';
    await pumpApp(tester, auth: sesiMasuk, initial: Routes.profil, store: store);

    await tester.tap(find.widgetWithText(FilledButton, 'Keluar'));
    await settle(tester);
    expect(find.text('Keluar?'), findsOneWidget);
    await tester.tap(find.widgetWithText(TextButton, 'Keluar'));
    await settle(tester);

    expect(find.text('Selamat datang'), findsOneWidget);
    expect(store.values, isEmpty);
  });
}
