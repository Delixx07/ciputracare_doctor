import 'package:ciputracare_doctor/app/routes.dart';
import 'package:ciputracare_doctor/data/local/key_value_store.dart';
import 'package:ciputracare_doctor/features/auth/auth_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'package:ciputracare_doctor/app/app_shell.dart';

import '../../helpers.dart';

Future<void> _ketikPin(WidgetTester tester, String pin) async {
  for (final d in pin.split('')) {
    await tester.tap(find.text(d).last); // keypad di atas layar terakhir
    await tester.pump();
  }
  await settle(tester);
}

Finder get _tombolMasuk => find.widgetWithText(FilledButton, 'Masuk');

void main() {
  setUpAll(() => initializeDateFormatting('id_ID'));
  setUp(rootBundle.clear);

  group('Layar masuk', () {
    testWidgets('isian kosong → pesan validasi', (tester) async {
      await pumpApp(tester);
      await tester.tap(_tombolMasuk);
      await settle(tester);
      expect(find.text('Isi kode dokter atau email.'), findsOneWidget);
      expect(find.text('Isi kata sandi.'), findsOneWidget);
    });

    testWidgets('kode salah → pesan galat', (tester) async {
      await pumpApp(tester);
      await tester.enterText(find.byType(TextFormField).at(0), 'X999');
      await tester.enterText(find.byType(TextFormField).at(1), 'rahasia');
      await tester.tap(_tombolMasuk);
      await settle(tester);
      expect(find.text('Kode dokter atau kata sandi salah.'), findsOneWidget);
    });

    testWidgets('tanpa "Ingat perangkat" → langsung Beranda', (tester) async {
      await pumpApp(tester);
      await tester.enterText(find.byType(TextFormField).at(0), 'D0412');
      await tester.enterText(find.byType(TextFormField).at(1), 'rahasia');
      await tester.tap(find.byType(Switch));
      await tester.tap(_tombolMasuk);
      await settle(tester);
      expect(find.byType(AppTabBar), findsOneWidget);
    });

    testWidgets('dengan "Ingat perangkat" → buat PIN dua kali → Beranda', (tester) async {
      await pumpApp(tester);
      await tester.enterText(find.byType(TextFormField).at(0), 'D0412');
      await tester.enterText(find.byType(TextFormField).at(1), 'rahasia');
      await tester.tap(_tombolMasuk);
      await settle(tester);

      expect(find.text('Buat PIN'), findsOneWidget);
      await _ketikPin(tester, '123456');
      expect(find.text('Ulangi PIN'), findsOneWidget);
      await _ketikPin(tester, '654321');
      expect(find.text('PIN tidak sama. Ulangi dari awal.'), findsOneWidget);
      expect(find.text('Buat PIN'), findsOneWidget);

      await _ketikPin(tester, '123456');
      await _ketikPin(tester, '123456');
      expect(find.byType(AppTabBar), findsOneWidget);
    });

    testWidgets('kata sandi bisa ditampilkan; tidak ada tombol "contoh kata sandi salah"', (tester) async {
      await pumpApp(tester);
      expect(find.textContaining('contoh kata sandi'), findsNothing);
      expect(find.text('Masuk dengan biometrik / PIN'), findsNothing);
      await tester.tap(find.byIcon(Icons.visibility_outlined));
      await tester.pump();
      expect(find.byIcon(Icons.visibility_off_outlined), findsOneWidget);
    });

    testWidgets('Lupa kata sandi → info hubungi IT', (tester) async {
      await pumpApp(tester);
      await tester.tap(find.text('Lupa kata sandi?'));
      await settle(tester);
      expect(find.textContaining('hubungi IT Ciputra Hospital'), findsOneWidget);
    });
  });

  group('Layar PIN', () {
    Future<MemoryKeyValueStore> perangkatDiingat(WidgetTester tester) async {
      // Masuk + buat PIN lewat UI, lalu kunci.
      final store = MemoryKeyValueStore();
      final c = await pumpApp(tester, store: store);
      final auth = c.read(authControllerProvider.notifier);
      await tester.runAsync(() => auth.masuk('D0412', 'x', ingat: true));
      await settle(tester);
      await tester.runAsync(() => auth.buatPin('123456'));
      await settle(tester);
      auth.kunci();
      await settle(tester);
      return store;
    }

    testWidgets('terkunci: nama dokter tampil, PIN salah lalu benar → Beranda', (tester) async {
      await perangkatDiingat(tester);
      expect(find.text('Masukkan PIN'), findsOneWidget);
      expect(find.text('dr. Andreas Wijaya · 6 digit'), findsOneWidget);

      await _ketikPin(tester, '000000');
      expect(find.text('PIN salah · sisa 4 percobaan'), findsOneWidget);

      await _ketikPin(tester, '123456');
      expect(find.byType(AppTabBar), findsOneWidget);
    });

    testWidgets('Pakai kata sandi → layar masuk dengan tombol biometrik / PIN', (tester) async {
      await perangkatDiingat(tester);
      await tester.tap(find.text('Pakai kata sandi'));
      await settle(tester);
      expect(find.text('Selamat datang'), findsOneWidget);
      await tester.ensureVisible(find.text('Masuk dengan biometrik / PIN'));
      await tester.tap(find.text('Masuk dengan biometrik / PIN'));
      await settle(tester);
      expect(find.text('Masukkan PIN'), findsOneWidget);
    });

    testWidgets('biometrik aktif: diminta otomatis dan membuka kunci', (tester) async {
      final bio = FakeBiometrik(ada: true);
      final c = await pumpApp(tester, auth: const AuthState(), biometrik: bio, initial: Routes.login);
      final auth = c.read(authControllerProvider.notifier);
      await tester.runAsync(() async {
        await auth.masuk('D0412', 'x', ingat: true);
        await auth.buatPin('123456');
      });
      await settle(tester);
      auth.kunci();
      await settle(tester);
      expect(find.text('Masukkan PIN'), findsOneWidget);
      await tester.pump(const Duration(seconds: 1));
      await settle(tester);
      expect(bio.dipanggil, 1);
      expect(find.byType(AppTabBar), findsOneWidget);
    });
  });
}
